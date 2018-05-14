class AlbumsController < ApplicationController


  def show
    @album = Album.find(params[:id])

    render :show
  end

  def edit

  end

  def new
    @album = Album.new

    render :new
  end

  def create
    @album = Album.new(user_params)

    if @album.save
      log_in_user!(@album)

      redirect_to user_url(@album)
    else
      @album.errors.full_messages
    end

  end



  private

  def user_params

    params.require(:album).permit(:band_id, :title, :year, :live)

  end

end
