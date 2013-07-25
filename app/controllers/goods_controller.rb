class GoodsController < ApplicationController
  def index
    @goods = Good.all
  end

  def new
  @good = Good.new	
  end
  
 def create
    @good = Good.new(params[:good])
    @goods = Good.all
    if @good.save
    	redirect_to table_path
   	else
   		render 'new'
   	end
 end

 def destroy
 	@good = Good.find(params[:id])
    @good.destroy

    redirect_to table_path
 end

end