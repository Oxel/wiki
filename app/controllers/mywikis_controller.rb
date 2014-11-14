class MywikisController < ApplicationController
  
	def new
		@mywiki = Mywiki.new
	end

  def show
    @mywiki = Mywiki.find(params[:id])
    @users = User.where.not(id: current_user.id)
  end

  def index
    if params[:all_wikis]
      @mywikis = Mywiki.where(private: false)
    else
      @mywikis = current_user.mywikis
    end
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
    # binding.pry
    @mywiki = Mywiki.find(params[:id])
    if @mywiki.update(mywiki_params)
      flash[:notice] = "wiki has been updated."
      redirect_to root_path
    else
      flash[:alert] = "Wiki has not been updated."
      redirect_to :back
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
  	params.require(:mywiki).permit(:user, :title, :body, :user_ids => [])
  end

end
