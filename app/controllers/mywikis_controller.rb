class MywikisController < ApplicationController
  
  
	def new
		@mywiki = Mywiki.new
	end

  def show
    @mywiki = Mywiki.find(params[:id])
    redirect_to root_path
  end

  def index
    @mywikis = current_user.mywikis
  end

  def create
  	@mywiki = current_user.mywikis.build(mywiki_params)
  	if @mywiki.save
  	 redirect_to root_path, notice: 'Wiki added'
    else
      flash[:error] = 'Wiki creation failed'
      render :new
    end
	end

  def edit
    @mywiki = Mywiki.find(params[:id])
  end

  def update
    @mywiki = Mywiki.find(params[:id])
    if @mywiki.update(mywiki_params)
      flash[:notice] = "Wiki has been updated."
      redirect_to root_path
    else
      flash[:alert] = "Wiki has not been updated."
      render "edit"
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
