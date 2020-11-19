require 'faker'
class EmailsController < ApplicationController

  def index
    @emails = Email.all
  end
  
  def new
    @emails = Email.all
  end

  def create
    @email = Email.create(object: Faker::Lorem.sentence,
                        body: Faker::Lorem.paragraph)
      respond_to do |format|
       format.html { redirect_to root_path }
       format.js { }
    end
  end

  def show
    @email = Email.find(params[:id])
    respond_to do |format|
      format.html { redirect_to root_path }
      format.js { }
  end
end
end



