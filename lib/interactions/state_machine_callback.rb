# frozen_string_literal: true
module Interactions
  # Utility service object class used in aasm callbacks (https://github.com/aasm/aasm)
  class StateMachineCallback
    attr_accessor :object, :args
  
    delegate :transaction, to: ActiveRecord::Base if defined?(ActiveRecord)
  
    def initialize(object, args = {})
      @object = object
      @args = args
    end
  
    def self.call(object, args = {})
      new(object, args).call
    end
  
    def call
      # NOOP, your code goes here
    end
  end
end
