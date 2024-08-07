=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for BckbnPay::PaymentMethodsPostRequestPaymentMethodBillingAddressAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe BckbnPay::PaymentMethodsPostRequestPaymentMethodBillingAddressAttributes do
  let(:instance) { BckbnPay::PaymentMethodsPostRequestPaymentMethodBillingAddressAttributes.new }

  describe 'test an instance of PaymentMethodsPostRequestPaymentMethodBillingAddressAttributes' do
    it 'should create an instance of PaymentMethodsPostRequestPaymentMethodBillingAddressAttributes' do
      expect(instance).to be_instance_of(BckbnPay::PaymentMethodsPostRequestPaymentMethodBillingAddressAttributes)
    end
  end

  let(:fields) { %i[country postal_code] }

  it 'should work' do
    fields.each do |field|
      expect(instance).to respond_to(field)
    end
  end
end
