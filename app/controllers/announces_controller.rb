class AnnouncesController < ApplicationController


  def new
    @announce = Announce.new
  end

  def create
    @announce = Announce.new(announce_params)
    @announce.user_id = current_user.id
    if @announce.save
      redirect_to announce_path(@announce)
    end
  end

  def show
    @announce = Announce.find(params[:id])
  end

  private

  def announce_params
    params.require(:announce).permit(:price, :description, :announce_type, :bed, :bath, :surface, :title, photos: [])
  end

end

