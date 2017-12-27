class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def new
  end

  def create
    Item.create(item_params)
  end

  private
  def item_params
    params.permit(:name, :price, :date, :text).merge(user_id: current_user.id)
  end


end
