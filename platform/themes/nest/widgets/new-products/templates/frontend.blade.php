@if (is_plugin_active('ecommerce'))
    @php
        $products = app(Botble\Ecommerce\Repositories\Interfaces\ProductInterface::class)
            ->advancedGet([
                'take'      => (int) $config['number_display'] ?: 3,
                'withCount' => EcommerceHelper::withReviewsCount(),
                'condition' => [
                    'ec_products.status'       => \Botble\Base\Enums\BaseStatusEnum::PUBLISHED,
                    'ec_products.is_variation' => 0,
                ],
                'order_by'  => [
                    'ec_products.percentage_discount' => 'DESC',
                ],
            ]);
    @endphp
    <div class="sidebar-widget product-sidebar mb-30 p-30 bg-grey border-radius-10">
        <h5 class="section-title style-1 mb-30">Promoções em destaque</h5>
        @foreach ($products as $product)
            <div class="single-post clearfix">
                <div class="image">
                    <img src="{{ RvMedia::getImageUrl($product->image, 'product-thumb', false, RvMedia::getDefaultImage()) }}" alt="{{ $product->name }}">
                </div>
                <div class="content pt-10">
                    <h5><a href="{{ $product->url }}">{{ $product->name }}</a></h5>
                    <p class="price mb-0 mt-5 ">
                        <span class="badge bg-danger">
                            - {{ $product->percentage_discount }}%
                        </span><br>
                        <span style="font-style: oblique; font-size: 12px; color: red; padding-right: 10px; text-decoration: line-through;">
                            {{ format_price($product->price) }}
                        </span>
                        {{ format_price($product->front_sale_price_with_taxes) }}</p>

                </div>
            </div>
        @endforeach
    </div>
@endif
