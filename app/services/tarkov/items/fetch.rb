module Tarkov
  module Items
    class Fetch < ApplicationService
      def call
        response = HTTParty.post(
          'https://api.tarkov.dev/graphql',
          body: { query: DataBuilder::Tarkov::Items.call }.to_json,
          headers: { 'Content-Type' => 'application/json' }
        )

        JSON.parse(response.body, symbolize_names: true)
      end
    end
  end
end
