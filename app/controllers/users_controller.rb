class UsersController < ApplicationController
    def my_portfolio
        @tracked_stock = current_user.stocks.order(last_price: :desc)
    end
end
