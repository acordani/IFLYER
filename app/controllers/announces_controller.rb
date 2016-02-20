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

  private

  def announce_params
    params.require(:announce).permit(:price, :description, :type, :bed, :bath, :surface, :title)
  end

end


# create_table "announces", force: :cascade do |t|
#     t.integer  "price"
#     t.text     "description"
#     t.string   "type"
#     t.integer  "bed"
#     t.integer  "bath"
#     t.integer  "surface"
#     t.integer  "title"