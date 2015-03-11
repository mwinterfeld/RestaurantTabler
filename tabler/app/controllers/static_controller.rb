class StaticController < ApplicationController
  def welcome
  	@user = User.create(params[:user])
  	puts params[:user]
  end
end