<?php

Route::group(['namespace' => 'Botble\Marketplace\Http\Controllers', 'middleware' => ['web', 'core']], function () {

    Route::group(['prefix' => BaseHelper::getAdminPrefix()], function () {

        Route::group(['prefix' => 'marketplaces', 'as' => 'marketplace.'], function () {
            Route::group(['prefix' => 'stores', 'as' => 'store.'], function () {
                Route::resource('', 'StoreController')->parameters(['' => 'store']);
                Route::delete('items/destroy', [
                    'as'         => 'deletes',
                    'uses'       => 'StoreController@deletes',
                    'permission' => 'marketplace.index',
                ]);

                Route::get('/view/{id}', [
                    'as'   => 'view',
                    'uses' => 'StoreRevenueController@view',
                ]);

                Route::group(['prefix' => 'revenues', 'as' => 'revenue.'], function () {
                    Route::match(['GET', 'POST'], 'list/{id}', [
                        'as'         => 'index',
                        'uses'       => 'StoreRevenueController@index',
                        'permission' => 'marketplace.index',
                    ]);

                    Route::post('/create/{id}', [
                        'as'   => 'create',
                        'uses' => 'StoreRevenueController@store',
                    ]);
                });

            });

            Route::group(['prefix' => 'withdrawals', 'as' => 'withdrawal.'], function () {
                Route::resource('', 'WithdrawalController')
                    ->parameters(['' => 'withdrawal'])
                    ->except([
                        'create',
                        'store',
                        'destroy',
                    ]);
            });

            Route::get('/settings', [
                'as'   => 'settings',
                'uses' => 'MarketplaceController@settings',
            ]);

            Route::post('/settings', [
                'as'         => 'settings.post',
                'uses'       => 'MarketplaceController@settings',
                'permission' => 'marketplace.index',
            ]);

            Route::group(['prefix' => 'unverified-vendors', 'as' => 'unverified-vendors.'], function () {
                Route::match(['GET', 'POST'], '/', [
                    'as'   => 'index',
                    'uses' => 'UnverifiedVendorController@index',
                ]);

                Route::get('view/{id}', [
                    'as'         => 'view',
                    'uses'       => 'UnverifiedVendorController@view',
                    'permission' => 'marketplace.index',
                ]);

                Route::post('approve/{id}', [
                    'as'         => 'approve-vendor',
                    'uses'       => 'UnverifiedVendorController@approveVendor',
                    'permission' => 'marketplace.index',
                ]);
            });
        });

        Route::group(['prefix' => BaseHelper::getAdminPrefix() . '/ecommerce'], function () {
            Route::group(['prefix' => 'products', 'as' => 'products.'], function () {
                Route::post('approve-product/{id}', [
                    'as'         => 'approve-product',
                    'uses'       => 'ProductController@approveProduct',
                    'permission' => 'marketplace.index',
                ]);
            });
        });

    });

});
