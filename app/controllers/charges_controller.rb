class ChargesController < ApplicationController

def new
end

def create
  # Amount in cents
  @amount = 10000

  customer = Stripe::Customer.create(
    :email => current_user.email,
    :source  => params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'KKA customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end