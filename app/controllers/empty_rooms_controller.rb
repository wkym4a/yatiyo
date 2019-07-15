class EmptyRoomsController < ApplicationController
  before_action :set_empty_room, only: [:show, :edit, :update, :destroy]

  # GET /empty_rooms
  # GET /empty_rooms.json
  def index
    @empty_rooms = EmptyRoom.all
  end
  def index_search
    if params[:conditions][:name].present?
      @empty_rooms = EmptyRoom.where('name LIKE ?', "%#{params[:conditions][:name]}%")
    else
      @empty_rooms = EmptyRoom.all
    end

    respond_to do |format|
        format.js { render :index_table }
    end
  end

  # GET /empty_rooms/1
  # GET /empty_rooms/1.json
  def show
  end

  # GET /empty_rooms/new
  def new
    @empty_room = EmptyRoom.new
  end

  # GET /empty_rooms/1/edit
  def edit
  end

  # POST /empty_rooms
  # POST /empty_rooms.json
  def create
    @empty_room = EmptyRoom.new(empty_room_params)

    respond_to do |format|
      if @empty_room.save
        format.html { redirect_to @empty_room, notice: 'Empty room was successfully created.' }
        format.json { render :show, status: :created, location: @empty_room }
      else
        format.html { render :new }
        format.json { render json: @empty_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /empty_rooms/1
  # PATCH/PUT /empty_rooms/1.json
  def update
    respond_to do |format|
      if @empty_room.update(empty_room_params)
        format.html { redirect_to @empty_room, notice: 'Empty room was successfully updated.' }
        format.json { render :show, status: :ok, location: @empty_room }
      else
        format.html { render :edit }
        format.json { render json: @empty_room.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /empty_rooms/1
  # DELETE /empty_rooms/1.json
  def destroy
    @empty_room.destroy
    respond_to do |format|
      format.html { redirect_to empty_rooms_url, notice: 'Empty room was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_empty_room
      @empty_room = EmptyRoom.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def empty_room_params
      params.require(:empty_room).permit(:status, :arrangement, :name, :number, :leave_status, :day_to_leave, :benefit, :day_to_enter, :area, :rent, :common_fee, :thanks_money_status, :thanks_money, :thanks_money_month, :deposit_status, :deposit, :deposit_month, :station, :parking_status, :parking, :pet, :gas, :memo, :key ,:url_info)
    end
end
