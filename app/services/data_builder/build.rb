# frozen_string_literal: true

module DataBuilder
  class Build < ApplicationService
    def initialize(adapter, action, *args)
      @adapter = adapter
      @action = action
      @args = args
    end

    def call
      builder.call(*args)
    end

    private

    attr_reader :args, :action, :adapter

    def builder
      "#{self.class.module_parent}::#{adapter.to_s.classify}::#{action.to_s.classify}".constantize
    end
  end
end
