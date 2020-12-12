class OrdersController < ApplicationController
  before_action :select_item, only: [:index, :create]
  before_action :authenticate_user!, only: [:index]

  def index
    return redirect_to root_path if current_user.id == select_item.user_id || select_item.order!=nil

    @item_orders = PayForm.new
  end
 
  def create
  end

  private

  def select_item
    @item = Item.find(params[:item_id])
  end

end
