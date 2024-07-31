# frozen_string_literal: true

module DataBuilder
  module Tarkov
    class Items < ApplicationService
      def call
        <<~GRAPHQL
          {
            items(gameMode: regular, lang: en) {
              name
              normalizedName
              shortName
              backgroundColor
              iconLink
              image512pxLink
              avg24hPrice
              low24hPrice
              high24hPrice
              historicalPrices {
                price
                priceMin
              }
            }
          }
        GRAPHQL
      end

      private

      attr_accessor :settings
    end
  end
end
