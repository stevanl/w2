class HomeController < ApplicationController
  def index
    @things = Thing.all.page(params[:page]).per(1)
  end
end
