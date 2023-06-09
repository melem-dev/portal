<?php

namespace Theme\Nest\Http\Controllers;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Botble\Blog\Repositories\Interfaces\PostInterface;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Repositories\Interfaces\FlashSaleInterface;
use Botble\Ecommerce\Repositories\Interfaces\ProductCategoryInterface;
use Botble\Ecommerce\Repositories\Interfaces\ProductInterface;
use Botble\Ecommerce\Repositories\Interfaces\ProductVariationInterface;
use Botble\Payment\Enums\PaymentStatusEnum;
use Botble\Theme\Http\Controllers\PublicController;
use Cart;
use EcommerceHelper;
use Illuminate\Http\Request;
use Theme;
use Theme\Nest\Http\Resources\BrandResource;
use Theme\Nest\Http\Resources\PostResource;
use Theme\Nest\Http\Resources\ProductCategoryResource;
use Theme\Nest\Http\Resources\ProductMiniResource;
use Theme\Nest\Http\Resources\ProductResource;
use Theme\Nest\Http\Resources\ReviewResource;
use Theme\Nest\Http\Resources\TopSellingProductResource;

class NestController extends PublicController
{
    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxCart(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax()) {
            return $response->setNextUrl(route('public.index'));
        }

        return $response->setData([
            'count' => Cart::instance('cart')->count(),
            'html'  => Theme::partial('cart-panel'),
        ]);
    }

    /**
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function getFeaturedProducts(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $data = [];

        $products = get_featured_products([
            'take'      => (int)$request->input('limit', 8),
            'with'      => [
                'slugable',
                'variations',
                'productLabels',
                'variationAttributeSwatchesForProductList',
            ],
            'withCount' => EcommerceHelper::withReviewsCount(),
            'order_by' => [
                'ec_products.percentage_discount' => 'DESC',
            ]
        ]);

        foreach ($products as $product) {
            $data[] = view(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item-small',
                compact('product'))->render();
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param PostInterface $postRepository
     * @return BaseHttpResponse|\Illuminate\Http\RedirectResponse|\Illuminate\Http\Resources\Json\JsonResource
     */
    public function ajaxGetPosts(Request $request, BaseHttpResponse $response, PostInterface $postRepository)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $posts = $postRepository->getFeatured(4, ['slugable']);

        return $response
            ->setData(PostResource::collection($posts))
            ->toApiResponse();
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function getFeaturedProductCategories(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $categories = get_featured_product_categories([
            'with'      => ['slugable', 'metadata'],
            'withCount' => ['products'],
        ]);

        return $response->setData(ProductCategoryResource::collection($categories));
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxGetFeaturedBrands(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $brands = get_featured_brands();

        return $response->setData(BrandResource::collection($brands));
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param ProductInterface $productRepository
     * @return BaseHttpResponse
     */
    public function ajaxGetProductReviews(
        $id,
        Request $request,
        BaseHttpResponse $response,
        ProductInterface $productRepository
    ) {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $product = $productRepository->getFirstBy([
            'id'           => $id,
            'status'       => BaseStatusEnum::PUBLISHED,
            'is_variation' => 0,
        ]);

        if (!$product) {
            abort(404);
        }

        $star = (int)$request->input('star');
        $perPage = (int)$request->input('per_page', 10);

        $reviews = EcommerceHelper::getProductReviews($product, $star, $perPage);

        if ($star) {
            $message = __(':total review(s) ":star star" for ":product"', [
                'total'   => $reviews->total(),
                'product' => $product->name,
                'star'    => $star,
            ]);
        } else {
            $message = __(':total review(s) for ":product"', [
                'total'   => $reviews->total(),
                'product' => $product->name,
            ]);
        }

        return $response
            ->setData(ReviewResource::collection($reviews))
            ->setMessage($message)
            ->toApiResponse();
    }

    /**
     * @param int $id
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param ProductInterface $productRepository
     * @return BaseHttpResponse
     */
    public function ajaxGetRelatedProducts(
        $id,
        Request $request,
        BaseHttpResponse $response,
        ProductInterface $productRepository
    ) {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $product = $productRepository->findOrFail($id);

        $products = get_related_products($product, (int)$request->input('limit'));

        $data = [];
        foreach ($products as $product) {
            $data[] = view(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item',
                compact('product'))->render();
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @param FlashSaleInterface $flashSaleRepository
     * @return BaseHttpResponse
     */
    public function ajaxGetFlashSales(
        Request $request,
        BaseHttpResponse $response,
        FlashSaleInterface $flashSaleRepository
    ) {
        if (!$request->ajax()) {
            return $response->setNextUrl(route('public.index'));
        }

        $flashSales = $flashSaleRepository->getModel()
            ->notExpired()
            ->where('status', BaseStatusEnum::PUBLISHED)
            ->with([
                'products' => function ($query) use ($request) {
                    $with = ['slugable', 'productCollections'];

                    if (is_plugin_active('marketplace')) {
                        $with = array_merge($with, ['store', 'store.slugable']);
                    }

                    return $query
                        ->where('status', BaseStatusEnum::PUBLISHED)
                        ->limit((int)$request->input('limit', 2))
                        ->withCount(EcommerceHelper::withReviewsCount())
                        ->with($with);
                },
                'metadata'
            ])
            ->get();

        if (!$flashSales->count()) {
            return $response->setData([]);
        }

        $data = [];
        foreach ($flashSales as $flashSale) {
            foreach ($flashSale->products as $product) {
                if (!EcommerceHelper::showOutOfStockProducts() && $product->isOutOfStock()) {
                    continue;
                }

                $data[] = Theme::partial('flash-sale-product', compact('product', 'flashSale'));
            }
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxGetProducts(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $products = get_products_by_collections([
            'collections' => [
                'by'       => 'id',
                'value_in' => [$request->input('collection_id')],
            ],
            'take'        => 8,
            'with'        => [
                'slugable',
                'variations',
                'productCollections',
                'variationAttributeSwatchesForProductList',
            ],
            'withCount'   => EcommerceHelper::withReviewsCount(),
        ]);

        $data = [];
        foreach ($products as $product) {
            $data[] = view(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item',
                compact('product'))->render();
        }

        return $response->setData($data);
    }

    /**
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxGetProductsByCategoryId(
        Request $request,
        BaseHttpResponse $response,
        ProductInterface $productRepository
    ) {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $categoryId = $request->input('category_id');

        if (!$categoryId) {
            return $response;
        }

        $products = $productRepository->getProductsByCategories([
            'categories' => [
                'by'       => 'id',
                'value_in' => [$categoryId],
            ],
            'take'       => 8,
            'withCount'  => EcommerceHelper::withReviewsCount(),
        ]);

        $data = [];
        foreach ($products as $product) {
            $data[] = view(Theme::getThemeNamespace() . '::views.ecommerce.includes.product-item', compact('product'))
                ->render();
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param int $id
     * @param BaseHttpResponse $response
     * @return mixed
     */
    public function getQuickView(Request $request, $id, BaseHttpResponse $response)
    {
        if (!$request->ajax()) {
            return $response->setNextUrl(route('public.index'));
        }

        $product = get_products([
            'condition' => [
                'ec_products.id'     => $id,
                'ec_products.status' => BaseStatusEnum::PUBLISHED,
            ],
            'take'      => 1,
            'with'      => [
                'slugable',
                'tags',
                'tags.slugable',
            ],
            'withCount' => EcommerceHelper::withReviewsCount(),
        ]);

        if (!$product) {
            return $response->setNextUrl(route('public.index'));
        }

        list($productImages, $productVariation, $selectedAttrs) = EcommerceHelper::getProductVariationInfo($product);

        return $response->setData(Theme::partial('quick-view', compact('product', 'selectedAttrs', 'productImages', 'productVariation')));
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxGetProductCategories(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $params = array_merge([
            'condition' => [
                'ec_product_categories.status' => BaseStatusEnum::PUBLISHED,
            ],
            'take'      => null,
            'order_by'  => [
                'ec_product_categories.order' => 'DESC',
            ],
            'select'    => ['*'],
            'with'      => ['slugable', 'metadata'],
        ]);

        $categoryIds = array_filter(explode(',', $request->input('categories')));

        if (!empty($categoryIds)) {
            $params['condition'][] = ['ec_product_categories.id', 'IN', $categoryIds];
        }

        $categories = app(ProductCategoryInterface::class)->advancedGet($params);

        return $response->setData(ProductCategoryResource::collection($categories, ['simple' => true]));
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxTopProductsGroup(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $tabs = array_filter(explode(',', $request->input('tabs')));

        if (empty($tabs)) {
            $tabs = ['top-selling', 'trending-products', 'recent-added', 'top-rated'];
        }

        $limit = 4;

        $withCount = EcommerceHelper::withReviewsCount();

        $with = ['slugable', 'variationInfo', 'productCollections'];

        $data = [];

        if (in_array('top-selling', $tabs)) {
            $endDate = now();
            $startDate = now()->subDays((int) $request->input('top_selling_in_days', 30));

            $topSelling = app(ProductInterface::class)
                ->getModel()
                ->join('ec_order_product', 'ec_products.id', '=', 'ec_order_product.product_id')
                ->join('ec_orders', 'ec_orders.id', '=', 'ec_order_product.order_id')
                ->join('payments', 'payments.order_id', '=', 'ec_orders.id')
                ->where('payments.status', PaymentStatusEnum::COMPLETED)
                ->whereDate('ec_orders.created_at', '>=', $startDate)
                ->whereDate('ec_orders.created_at', '<=', $endDate)
                ->select([
                    'ec_products.*',
                    'ec_order_product.qty as qty',
                ])
                ->with($with)
                ->orderBy('ec_order_product.qty', 'DESC')
                ->distinct()
                ->limit($limit)
                ->get();

            if ($topSelling->count()) {
                $data[] = [
                    'title'    => __('Top Selling'),
                    'products' => TopSellingProductResource::collection($topSelling),
                ];
            }
        }

        if (in_array('trending-products', $tabs)) {
            $trendingProducts = get_trending_products([
                'take'      => $limit,
                'with'      => $with,
                'withCount' => $withCount,
            ]);

            $data[] = [
                'title'    => __('Trending Products'),
                'products' => ProductMiniResource::collection($trendingProducts),
            ];
        }

        if (in_array('recent-added', $tabs)) {
            $recentlyAdded = app(ProductInterface::class)->advancedGet([
                'condition' => [
                    'ec_products.status'       => BaseStatusEnum::PUBLISHED,
                    'ec_products.is_variation' => 0,
                ],
                'order_by'  => [
                    'ec_products.order'      => 'ASC',
                    'ec_products.created_at' => 'DESC',
                ],
                'take'      => $limit,
                'with'      => $with,
                'withCount' => $withCount,
            ]);

            $data[] = [
                'title'    => __('Recently Added'),
                'products' => ProductMiniResource::collection($recentlyAdded),
            ];
        }

        if (in_array('top-rated', $tabs)) {
            $topRated = get_top_rated_products($limit, $with, $withCount);

            if ($topRated->count()) {
                $data[] = [
                    'title'    => __('Top Rated'),
                    'products' => ProductMiniResource::collection($topRated),
                ];
            }
        }

        return $response->setData($data);
    }

    /**
     * @param Request $request
     * @param BaseHttpResponse $response
     * @return BaseHttpResponse
     */
    public function ajaxPopularProducts(Request $request, BaseHttpResponse $response)
    {
        if (!$request->ajax() || !$request->wantsJson()) {
            return $response->setNextUrl(route('public.index'));
        }

        $with = [
            'metadata',
            'slugable',
            'categories',
            'categories.slugable',
            'productLabels',
            'productCollections',
        ];

        if (is_plugin_active('marketplace')) {
            $with = array_merge($with, ['store', 'store.slugable']);
        }

        $products = app(ProductInterface::class)
            ->getModel()
            ->join('meta_boxes', function ($join) {
                $join
                    ->on('ec_products.id', '=', 'meta_boxes.reference_id')
                    ->where('meta_boxes.reference_type', '=', Product::class);
            })
            ->where([
                'meta_boxes.meta_key'      => 'is_popular',
                'meta_boxes.meta_value'    => '["1"]',
                'ec_products.status'       => BaseStatusEnum::PUBLISHED,
                'ec_products.is_variation' => 0,
            ])
            ->with($with)
            ->orderBy('ec_products.price', 'DESC')
            ->orderBy('ec_products.order', 'ASC')
            ->withCount(EcommerceHelper::withReviewsCount())
            ->limit((int) $request->input('limit') ?: 8)
            ->select('ec_products.*')
            ->distinct()
            ->get();

        $products = $products->sortByDesc(function($product) {
            return $product->original_minus_sale;
        });

        return $response->setData(ProductResource::collection($products));
    }

}
