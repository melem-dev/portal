<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class ProductRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'       => 'required|max:120',
            'sku'        => 'required',
            'content'    => 'required',
            'images'     => 'required',
            'categories' => 'required|array|min:1',
            'price'      => 'numeric|nullable|min:0|max:100000000000',
            'sale_price' => 'numeric|nullable|min:0|max:100000000000',
            'start_date' => 'date|nullable|required_if:sale_type,1',
            'end_date'   => 'date|nullable|after:' . ($this->input('start_date') ?? now()->toDateTimeString()),
            'wide'       => 'numeric|nullable|min:0|max:100000000',
            'height'     => 'numeric|nullable|min:0|max:100000000',
            'weight'     => 'numeric|nullable|min:0|max:100000000',
            'length'     => 'numeric|nullable|min:0|max:100000000',
            'status'     => Rule::in(BaseStatusEnum::values()),
            'quantity'   => 'numeric|nullable|min:0|max:100000000',
        ];
    }

    /**
     * @return array
     */
    public function messages()
    {
        return [
            'name.required'          => trans('plugins/ecommerce::products.product_create_validate_name_required'),
            'sale_price_2.max'         => trans('plugins/ecommerce::products.product_create_validate_sale_price_max'),
            'sale_price_2.required_if' => trans('plugins/ecommerce::products.product_create_validate_sale_price_required_if'),
            'end_date.after'         => trans('plugins/ecommerce::products.product_create_validate_end_date_after'),
            'start_date.required_if' => trans('plugins/ecommerce::products.product_create_validate_start_date_required_if'),
            'sale_price_2'             => trans('plugins/ecommerce::products.product_create_validate_sale_price'),
        ];
    }

    public function prepareForValidation()
    {
        $inputs = $this->all();
        $price = $this->input('price_2');
        $price = str_replace('.', '', $price);
        $price = str_replace(',', '.', $price);
        $inputs['price'] = $price;

        $price_sale = $this->input('sale_price_2');
        $price_sale = str_replace('.', '', $price_sale);
        $price_sale = str_replace(',', '.', $price_sale);
        $inputs['sale_price'] = $price_sale;

        $this->replace($inputs);
    }
}
