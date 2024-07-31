class ItemsController < ApplicationController
  def index
    @items = Tarkov::Items::Fetch.call

    render json: @items
  end
end
