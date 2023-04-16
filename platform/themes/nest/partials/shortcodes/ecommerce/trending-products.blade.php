@if ((int) $shortcode->limit)
    @php
        $products = app(Botble\Ecommerce\Repositories\Interfaces\ProductInterface::class)
            ->advancedGet([
//                'take'      => (int) $config['number_display'] ?: 3,
//                'withCount' => EcommerceHelper::withReviewsCount(),
                'condition' => [
                    'ec_products.status'       => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED,
                    'ec_products.is_variation' => 0,
                ],
                'order_by'  => [
                    'ec_products.percentage_discount' => 'DESC',
                ],
            ]);

//        $products = $products->sortByDesc(function($product) {
//            return $product->discount_applied;
//        });
    @endphp
    @if ($products->count())
        <section class="bg-grey-1 section-padding pt-100 pb-80">
            <div class="container">
                <h1 class="mb-80 text-center">{!! BaseHelper::clean($shortcode->title) !!}</h1>
                <div class="row product-grid">
                    @foreach ($products as $product)
                        <div class="col-xxl-3 col-xl-3 col-lg-4 col-md-4 col-12 col-sm-6">
                            @include(Theme::getThemeNamespace('views.ecommerce.includes.product-item'), compact('product'))
                        </div>
                    @endforeach
                </div>
            </div>
        </section>
    @endif
@endif
