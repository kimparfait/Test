class ChargesController < ApplicationController

skip_before_action :verify_authenticity_token

def new
end

def create
  # Amount in cents
  @amount = 500

  customer = Stripe::Customer.create(
    :email => 'customer@gmail.com',
    :source  => params[:stripeToken]
    
  )

  charge = Stripe::Charge.create(
    :customer    => customer.id,
    :amount      => @amount,
    :description => 'book\'s Customer',
    :currency    => 'usd'
  )

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end

 
end
