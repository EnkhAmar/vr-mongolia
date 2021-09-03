<?php

namespace App\Http\Requests;

trait SanitizesInput
{
    /**
     * Sanitize request data before validation.
     */
    protected function prepareForValidation()
    {
        $this->sanitize($this->sanitizers());
    }

    /**
     * Sanitize request data after validation will pass.
     */
    protected function sanitizeAfterValidationPass()
    {
        $this->sanitize($this->afterSanitizers());
    }

    /**
     * Sanitize input data.
     */
    protected function sanitize(array $sanitizers)
    {
        $inputs = \Sanitizer::sanitize($sanitizers, $this->all());
        $this->replace($inputs);
    }

    /**
     * Return list of validation rules.
     *
     * @return array
     */
    public function rules()
    {
        if (property_exists($this, 'rules')) {
            return $this->rules;
        }

        return [];
    }

    /**
     * Return the sanitizers to be applied to the data.
     *
     * @return array
     */
    protected function sanitizers()
    {
        if (property_exists($this, 'sanitizers')) {
            return $this->sanitizers;
        }

        return [];
    }

    /**
     * Return the sanitizers to be applied to the data after validation will pass.
     *
     * @return array
     */
    protected function afterSanitizers()
    {
        if (property_exists($this, 'afterSanitizers')) {
            return $this->afterSanitizers;
        }

        return [];
    }
}