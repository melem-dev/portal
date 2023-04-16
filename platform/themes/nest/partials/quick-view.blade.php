<link rel="stylesheet" href="{{ Theme::asset()->url('css/plugins/magnific-popup.css') }}">
<script src="{{ Theme::asset()->url('js/plugins/magnific-popup.js') }}"></script>

<div class="product-detail accordion-detail">
<div class="row">
    <div class="col-md-6 col-sm-12 col-xs-12 mb-md-0 mb-sm-5">
        <div class="detail-gallery">
            <span class="zoom-icon"><i class="fi-rs-search"></i></span>
            <div class="product-image-slider">
                @foreach ($productImages as $img)
                    <figure class="border-radius-10">
                        <a href="{{ RvMedia::getImageUrl($img) }}"><img src="{{ RvMedia::getImageUrl($img, 'medium') }}" alt="{{ $product->name }}"></a>
                    </figure>
                @endforeach
            </div>
            <!-- THUMBNAILS -->
            <div class="slider-nav-thumbnails">
                @foreach ($productImages as $img)
                    <div><img src="{{ RvMedia::getImageUrl($img, 'thumb') }}" alt="{{ $product->name }}"></div>
                @endforeach
            </div>
        </div>
        <!-- End Gallery -->
    </div>

    <div class="col-md-6 col-sm-12 col-xs-12">
        <div class="detail-info pr-30 pl-30">
            @foreach ($product->productLabels as $label)
                <div class="product-badges">
                    <span @if ($label->color) style="background-color: {{ $label->color }}" @endif>{{ $label->name }}</span>
                </div>
            @endforeach

            <h2 class="title-detail">{{ $product->name }}</h2>
            <div class="product-detail-rating">
                @if (EcommerceHelper::isReviewEnabled())
                    <div class="product-rate-cover text-end">
                        <div class="product-rate d-inline-block">
                            <div class="product-rating" style="width: {{ $product->reviews_avg * 20 }}%"></div>
                        </div>
                        <span class="font-small ml-5 text-muted">({{ __(':count reviews', ['count' => $product->reviews_count]) }})</span>
                    </div>
                @endif
            </div>
            <div class="clearfix product-price-cover">
                <div class="product-price primary-color float-left d-block">
                    <span>
                        <span class="save-price font-md color3" @if ($product->front_sale_price == $product->price) style="display: none" @endif>
                            <span class="percentage-off" style="color: #c30000 !important;">{{ str_replace('-', '', get_sale_percentage($product->price, $product->front_sale_price)) }} {{ __('Off') }}</span>
                        </span>
                        <span class="old-price font-md" style="font-size: 15px !important; margin-left: 0px !important; @if ($product->front_sale_price == $product->price) display: none; @endif">{{ format_price($product->price_with_taxes) }}</span>
                    </span>
                    <span class="current-price text-brand">{{ format_price($product->front_sale_price_with_taxes) }}</span>
                </div>
            </div>

            <div class="short-desc mb-30">
                @if (is_plugin_active('marketplace') && $product->store_id)
                    <p>{{ __('Sold By') }}: <a href="{{ $product->store->url }}"><strong>{{ $product->store->name }}</strong></a></p>
                @endif

                {!! apply_filters('ecommerce_before_product_description', null, $product) !!}
                {!! BaseHelper::clean($product->content) !!}
                {!! apply_filters('ecommerce_after_product_description', null, $product) !!}
            </div>

            @if ($product->variations()->count() > 0)
                <div class="pr_switch_wrap">
                    {!! render_product_swatches($product, [
                        'selected' => $selectedAttrs,
                        'view'     => Theme::getThemeNamespace() . '::views.ecommerce.attributes.swatches-renderer'
                    ]) !!}
                </div>
            @endif

            <form class="add-to-cart-form" method="POST" action="{{ route('public.cart.add-to-cart') }}">
                @csrf
                {!! apply_filters(ECOMMERCE_PRODUCT_DETAIL_EXTRA_HTML, null) !!}
                <input type="hidden" name="id" class="hidden-product-id" value="{{ ($product->is_variation || !$product->defaultVariation->product_id) ? $product->id : $product->defaultVariation->product_id }}"/>
                <div class="detail-extralink mb-50">
                    <div class="product-extra-link2 @if (EcommerceHelper::isQuickBuyButtonEnabled()) has-buy-now-button @endif">
                        <button type="button" onclick="window.location.href = '{{ $product->sku }}';"
                            class="button button-add-to-cart">
                            Eu quero
                        </button>
                    </div>
                </div>
            </form>
        </div>
        <!-- Detail Info -->
    </div>
</div>
</div>
