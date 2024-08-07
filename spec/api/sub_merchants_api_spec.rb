=begin
#Bckbn Pay API

#API for Bckbn Pay services

The version of the OpenAPI document: 0.1.0

Generated by: https://openapi-generator.tech
Generator version: 7.7.0

=end

require 'spec_helper'
require 'json'

# Unit tests for BckbnPay::SubMerchantsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'SubMerchantsApi' do
  let(:api_instance) { BckbnPay::SubMerchantsApi.new }
  let(:config) do
    api_instance.api_client.config.tap do |c|
      c.access_token = Faker::Lorem.word
      c.host = "localhost:3000"
      c.scheme = "http"
    end
  end
  let(:path) { "/sub_merchants" }
  let(:request_headers) do
    {
      'Accept'        =>  'application/json',
      "Authorization" => "Bearer #{config.access_token}",
      "Content-Type"  => "application/json",
      "Expect" => '',
      'User-Agent' => 'OpenAPI-Generator/0.1.0/ruby',
      'X-Api-Version' => '0.1.0'
    }
  end
  let(:response_headers) do
    {
      'Accept'        =>  'application/json',
      "Content-Type"  => "application/json"
    }
  end

  describe 'test an instance of SubMerchantsApi' do
    it 'should create an instance of SubMerchantsApi' do
      expect(api_instance).to be_instance_of(BckbnPay::SubMerchantsApi)
    end
  end

  # unit tests for sub_merchants_id_get
  # Retrieve a sub-merchant
  # @param x_api_version
  # @param content_type
  # @param id
  # @param [Hash] opts the optional parameters
  # @return [SubMerchant]
  describe 'sub_merchants_id_get test' do
    let(:id) { SecureRandom.uuid }

    before do
      stub_request(:get, [config.host, path].join + "/#{id}")
      .with(headers: request_headers)
      .to_return(
        body: fixture("sub_merchants/get_200.json"),
        headers: response_headers,
        status: 200
      )
    end

    it 'should work' do
      res = api_instance.sub_merchants_id_get("0.1.0", id)

      expect(res).to be_a(BckbnPay::SubMerchant)
      expect(a_request(:get, [config.host, path].join + "/#{id}").with(headers: request_headers)).to have_been_made.once
    end
  end

  # unit tests for sub_merchants_post
  # Create a sub-merchant
  # @param x_api_version
  # @param content_type
  # @param sub_merchants_post_request
  # @param [Hash] opts the optional parameters
  # @return [SubMerchant]
  describe 'sub_merchants_post test' do
    let(:body) do
      {
        sub_merchant: {
          name: 'Test Sub Merchant',
          merchant_id: Faker::Number.number(digits: 10),
        }
      }
    end

    before do
      stub_request(:post, [config.host, path].join)
      .with(headers: request_headers, body: body.to_json)
      .to_return(
        body: fixture("sub_merchants/create_201.json"),
        headers: response_headers,
        status: 201
      )
    end

    it 'should work' do
      res = api_instance.sub_merchants_post("0.1.0", body)

      expect(res).to be_a(BckbnPay::SubMerchant)
      expect(a_request(:post, [config.host, path].join).with(headers: request_headers, body: body.to_json)).to have_been_made.once
    end
  end

end
