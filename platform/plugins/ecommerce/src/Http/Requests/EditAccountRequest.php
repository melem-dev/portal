<?php

namespace Botble\Ecommerce\Http\Requests;

use Botble\Support\Http\Requests\Request;

class EditAccountRequest extends Request
{

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'name'  => 'required|max:255',
            'phone' => 'max:20|sometimes',
            'dob'   => 'max:20|sometimes',
        ];
    }

    public function prepareForValidation()
    {
        $inputs = $this->all();

        $date = explode('/', $this->input('dob'));
        $inputs['dob'] = $date[2] . '-' . $date[1] . '-' . $date[0];

        $this->replace($inputs);
    }
}
