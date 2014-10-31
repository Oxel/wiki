class MywikisController < ApplicationController
  def index
  end

  def new
    @mywiki = Mywiki.new
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

  private
  def mywiki_params
    params.require(:mywiki).permit(:user, :title, :body)
  end
end
