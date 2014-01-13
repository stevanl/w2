class HomeController < ApplicationController
  def index
    @things = Thing.all.page(params[:page]).per(10)
  end
end
