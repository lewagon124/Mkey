class PagesController < ApplicationController
  skip_before_action :authenticate_user!
  def home
    respond_to do |format|
      format.html
      format.js
    end
    @recipes = Recipe.all
  end
end
