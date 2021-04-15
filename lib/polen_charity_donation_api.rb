# frozen_string_literal: true

require_relative "polen_charity_donation_api/version"
require "rest-client"
require "json"

class PolenCharityDonationApi
  attr_reader :api_token, :base_url
  # @param api_token token de acesso
  def initialize(api_token)
    @api_token = api_token.to_s
    @base_url = "https://api.polen.com.br/api/v2"
  end

  #Causes

  # Método que retorna todas as causas registradas
  # @param params parametros de configuração
  # @return Object
  def get_all_cause(params={})
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/cause/all", params: params)
  end

  # Método que retorna todas as categorias de causas registradas
  # @param params parametros de configuração
  # @return Object
  def get_cause_categories(params={})
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/cause/categories", params: params)
  end

  # Método que retorna todas as causas apoidas por uma loja
  # @param params parametros de configuração
  # @return Object
  def get_own_cause(params)
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/cause", params: params)
  end

end

