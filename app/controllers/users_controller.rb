class UsersController < ApplicationController

  def my_portfolio
    @tracked_stock = current_user.stocks.order(last_price: :desc)
    @user = current_user
  end

  def my_friends
    @tracked_friend = current_user.friends.order(:created_at)
  end

  def search_friend
    render json: params[:friend]
  end

  def show
    @user = User.find(params[:id])
    @tracked_stock = @user.stocks
  end

  def search
    if params[:friend].present?
      @friends = User.search(params[:friend])
      @friends = current_user.except_current_user(@friends)
        if @friends
          respond_to do |format|
            format.js { render partial: 'users/stock_result' }
          end
        else
          respond_to do |format|
            flash.now[:alert] = "Couldn't find friend"
            format.js { render partial: 'users/stock_result' }
          end
        end
    else
      respond_to do |format|
        flash.now[:alert] = "Please enter a friend to be searched !!"
        format.js { render partial: 'users/stock_result' }
      end
    end
  end

end
