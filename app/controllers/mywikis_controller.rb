class MywikisController < ApplicationController
  
  
	def new
		@mywiki = Mywiki.new
	end

  def index
  	@mywikis = current_user.mywikis
  end

  def create
  	@mywikis = current_user.mywikis.build(mywiki_params)
  	if @mywiki.save
  	 redirect_to root_path, notice: 'Wiki added'
    else
      flash[:error] = 'Wiki creation failed'
      render :new
    end
	end

  def destroy
    @mywiki = Mywiki.destroy(params[:id])
    @mywiki.destroy
    flash[:notice] = "Successfully deleted message."
    redirect_to root_path
  end


  private

  def mywiki_params
  	params.require(:mywiki).permit(:user, :title, :body)
  end

end
