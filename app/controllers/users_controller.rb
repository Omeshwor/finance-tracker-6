class UsersController < ApplicationController

  def my_portfolio
    @tracked_stock = current_user.stocks.order(last_price: :desc)
  end

  def my_friends
    @tracked_friend = current_user.friends.order(:name)
  end

end
