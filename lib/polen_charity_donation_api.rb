# frozen_string_literal: true

require_relative "polen_charity_donation_api/version"

module PolenCharityDonationApi
  class PolenCharityDonationApi
    attr_reader :api_token, :base_url

    # @param api_token token de acesso
    def initialize(api_token)
      @api_token = api_token.to_s
      @base_url = "https://api.polen.com.br/api/v2"
    end
  end
end
