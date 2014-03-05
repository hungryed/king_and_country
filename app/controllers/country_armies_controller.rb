class CountryArmiesController < ApplicationController
  def create
    @country = Country.find(params[:country_army][:country])
    @user_country = CountryArmy.new(user: current_user,
      age: CountryArmy.current_age,
      country: @country)
    if @user_country.save
      redirect_to root_path, notice: "You are now part of #{@country.name}"
    end
  end
end
