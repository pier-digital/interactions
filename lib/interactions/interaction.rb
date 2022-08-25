module Interactions
  class Interaction
    attr_accessor :params, :current_user, :headers, :options

    delegate :transaction, to: ActiveRecord::Base if defined?(ActiveRecord)

    # Simple service object class, useful for extracting business logic in Rails applications
    def initialize(params: {}, current_user: nil, headers: nil, **options)
      @params = params
      @current_user = current_user
      @headers = headers
      @options = options
    end

    def self.call(...)
      new(...).call
    end

    def call
      # NOOP, this is where your code goes
    end
  end
end