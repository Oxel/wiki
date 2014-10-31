class MywikisController < ApplicationController
  def index
  end

  def new
    @mywiki = Mywiki.new
  end

  def create
    @mywiki
    
  end
  
  
end
