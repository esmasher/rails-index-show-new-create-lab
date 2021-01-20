class CouponsController < ApplicationController
    def index
        @coupons = Coupon.all
    end

    def show
        @coupon = Coupon.find(params[:id])
    end

    def new
    end

    def create
        Coupon.create(coupon_code: params[:coupon][:coupon_code], store: params[:coupon][:store])
        redirect_to coupons_path
    end
    # def create
    #     Post.create(title: params[:post][:title], description: params[:post][:description])
    #     redirect_to posts_path
    #   end

end
