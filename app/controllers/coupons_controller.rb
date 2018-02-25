class CouponsController < ApplicationController

def index
  @coupon = Coupon.all
end

def new
end

def show
    @coupon = Coupon.find(params[:id])
  end

def create
  @coupon = Coupon.new
  @coupon.coupon_code = params[:coupon_code]
  @coupon.store = params[:store]
  @coupon.save
  redirect_to coupons_path(@coupon)
end

end
