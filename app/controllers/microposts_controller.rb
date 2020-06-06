class MicropostsController < ApplicationController
  before_action :logged_in_user,only: [:destroy,:create]

  def create
    @micropost = current_user.microposts.build(micopost_params)
    if @micropost.save
      flash[:success] = "Micropost created!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def destroy

  end

  private

    def micopost_params
      params.require(:micropost).permit(:content)
    end
end
