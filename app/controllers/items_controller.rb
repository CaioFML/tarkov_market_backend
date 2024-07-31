# frozen_string_literal: true

class ItemsController < ApplicationController
  def index
    @items = Tarkov::Items::Fetch.call

    render json: @items
  end
end
