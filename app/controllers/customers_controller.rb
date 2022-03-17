class CustomersController < ApplicationController
  def index
    @title = "All Customers"
    @customers = Customer.all
  end

  def alphabetized
    @title = "Alphabetized"
    @customers = Customer.order(:name)
    render :index
  end

  def missing_email
    @title = "Missing Email"
    @customers = Customer.where("email = ''")
    render :index
  end
end
