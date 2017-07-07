require 'faraday'
require 'json'

require 'api_objects/message'
require 'api_objects/conversation'
require 'client/rest_calls'
require 'extensions/hash'

module Bottle

  class Client

    def initialize(uid, token)
      @uid = uid
      @token = token
    end

    def uid
      @uid
    end

    def token
      @token
    end

  end

end