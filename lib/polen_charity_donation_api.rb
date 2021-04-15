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

  #Company

  # Método que retorna detalhe de uma empresa
  # @param params parametros de configuração
  # @return Object
  def get_company_details(params)
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/company/detail", params: params)
  end

  # Método que retorna todas as empresas de uma conta
  # @param params parametros de configuração
  # @return Object
  def get_company_list(params={})
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/company/list", params: params)
  end

  # Método que retorna as lojas de uma empresa
  # @param params parametros de configuração
  # @return Object
  def get_company_stores(params)
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/company/stores", params: params)
  end

  # Método que atualiza os dados de uma empresa
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def update_company(payload, params)
    params[:api_token] = @api_token
    RestClient.put("#{@base_url}/company/update", payload.to_json, { content_type: :json, params: params })
  end

  # Método que cria uma nova empresa na em uma conta
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def create_company(payload, params={})
    params[:api_token] = @api_token
    RestClient.post("#{@base_url}/company/create", payload.to_json, { content_type: :json, params: params })
  end

  #Donation Direct

  # Método que cria uma doação direta
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def donation_direct(payload, params={})
    params[:api_token] = @api_token
    RestClient.post("#{@base_url}/donation/direct", payload.to_json, { content_type: :json, params: params })
  end

  #Donation Notify

  # Método que retorna os detalhes de uma doação
  # @param params parametros de configuração
  # @return Object
  def get_notify_donation(params)
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/donation/notify/detail", params: params)
  end

  # Método que retorna uma lista de doações de uma loja
  # @param params parametros de configuração
  # @return Object
  def get_notify_donation_list(params)
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/donation/notify/list", params: params)
  end

  # Método que atualiza o status da doação
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def update_notify_donation(payload, params)
    params[:api_token] = @api_token
    RestClient.put("#{@base_url}/donation/notify/update", payload.to_json, { content_type: :json, params: params })
  end

  # Método que adiciona uma nova doação feita em uma loja
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def create_notify_donation(payload, params)
    params[:api_token] = @api_token
    RestClient.post("#{@base_url}/donation/notify/create", payload.to_json, { content_type: :json, params: params })
  end

  #Finance

  # Método que retorna faturas da loja
  # @param params parametros de configuração
  # @return Object
  def get_finance_billing_list(params)
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/finance/billing/list", params: params)
  end

  #Plataform

  # Método que retorna uma lista de plataformas cadastradas
  # @param params parametros de configuração
  # @return Object
  def get_platform_list(params = {})
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/platform/list", params: params)
  end

  #Store

  # Método que retorna detalhes de uma loja
  # @param params parametros de configuração
  # @return Object
  def get_store_details(params = {})
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/store/detail", params: params)
  end

  # Método que retorna uma lista de lojas cadastradas em uma conta
  # @param params parametros de configuração
  # @return Object
  def get_store_list(params = {})
    params[:api_token] = @api_token
    RestClient.get("#{@base_url}/store/list", params: params)
  end

  # Método que atualiza uma loja
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def update_store(payload, params)
    params[:api_token] = @api_token
    RestClient.put("#{@base_url}/store/update", payload.to_json, { content_type: :json, params: params })
  end

  # Método que adiciona uma causa a uma loja
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def add_cause_store(payload, params)
    params[:api_token] = @api_token
    RestClient.post("#{@base_url}/store/cause/add", payload.to_json, { content_type: :json, params: params })
  end

  # Método para cadastar uma nova loja
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def create_store(payload, params)
    params[:api_token] = @api_token
    RestClient.post("#{@base_url}/store/create", payload.to_json, { content_type: :json, params: params })
  end

  # Método para remover uma causa de uma loja
  # @param payload dados para atualização
  # @param params parametros de configuração
  # @return Object
  def remove_cause_store(payload, params)
    params[:api_token] = @api_token
    RestClient.post("#{@base_url}/store/cause/remove", payload.to_json, { content_type: :json, params: params })
  end

end

