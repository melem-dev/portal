@php
    $menus = collect([
        [
            'key'    => 'marketplace.vendor.products.index',
            'icon'   => 'icon material-icons md-shopping_bag',
            'name'   => __('Products'),
            'routes' => [
                'marketplace.vendor.products.create',
                'marketplace.vendor.products.edit',
            ],
            'order' => 1,
        ],
        [
            'key'   => 'marketplace.vendor.settings',
            'icon'  => 'icon material-icons md-settings',
            'name'  => __('Settings'),
            'order' => 2,
        ],
        [
            'key'   => 'customer.overview',
            'icon'  => 'icon material-icons md-person',
            'name'  => __('Customer dashboard'),
            'order' => 3,
        ],
    ]);


    $currentRouteName = Route::currentRouteName();
@endphp

<nav>
    <ul class="menu-aside">
        @foreach ($menus->sortBy('order') as $item)
            <li class="menu-item @if ($currentRouteName == $item['key'] || in_array($currentRouteName, Arr::get($item, 'routes', []))) active @endif">
                <a class="menu-link" href="{{ route($item['key']) }}">
                    <i class="{{ $item['icon'] }}"></i>
                    <span class="text">{{ $item['name'] }}</span>
                </a>
            </li>
        @endforeach
    </ul>
    <br />
    <br />
</nav>
