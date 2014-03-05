class CountriesController < ApplicationController

  def index
    @user = current_user
    @user_country = CountryArmy.new
    @countries = Country.all
  end

  def create
    binding.pry
  end

end
