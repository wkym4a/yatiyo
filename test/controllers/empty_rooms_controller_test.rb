require 'test_helper'

class EmptyRoomsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empty_room = empty_rooms(:one)
  end

  test "should get index" do
    get empty_rooms_url
    assert_response :success
  end

  test "should get new" do
    get new_empty_room_url
    assert_response :success
  end

  test "should create empty_room" do
    assert_difference('EmptyRoom.count') do
      post empty_rooms_url, params: { empty_room: { area: @empty_room.area, arrangement: @empty_room.arrangement, benefit: @empty_room.benefit, common_fee: @empty_room.common_fee, day_to_enter: @empty_room.day_to_enter, day_to_leave: @empty_room.day_to_leave, deposit: @empty_room.deposit, deposit_month: @empty_room.deposit_month, deposit_status: @empty_room.deposit_status, gas: @empty_room.gas, key: @empty_room.key, leave_status: @empty_room.leave_status, memo: @empty_room.memo, name: @empty_room.name, number: @empty_room.number, parking: @empty_room.parking, parking_status: @empty_room.parking_status, pet: @empty_room.pet, rent: @empty_room.rent, station: @empty_room.station, status: @empty_room.status, thanks_money: @empty_room.thanks_money, thanks_money_month: @empty_room.thanks_money_month, thanks_money_status: @empty_room.thanks_money_status } }
    end

    assert_redirected_to empty_room_url(EmptyRoom.last)
  end

  test "should show empty_room" do
    get empty_room_url(@empty_room)
    assert_response :success
  end

  test "should get edit" do
    get edit_empty_room_url(@empty_room)
    assert_response :success
  end

  test "should update empty_room" do
    patch empty_room_url(@empty_room), params: { empty_room: { area: @empty_room.area, arrangement: @empty_room.arrangement, benefit: @empty_room.benefit, common_fee: @empty_room.common_fee, day_to_enter: @empty_room.day_to_enter, day_to_leave: @empty_room.day_to_leave, deposit: @empty_room.deposit, deposit_month: @empty_room.deposit_month, deposit_status: @empty_room.deposit_status, gas: @empty_room.gas, key: @empty_room.key, leave_status: @empty_room.leave_status, memo: @empty_room.memo, name: @empty_room.name, number: @empty_room.number, parking: @empty_room.parking, parking_status: @empty_room.parking_status, pet: @empty_room.pet, rent: @empty_room.rent, station: @empty_room.station, status: @empty_room.status, thanks_money: @empty_room.thanks_money, thanks_money_month: @empty_room.thanks_money_month, thanks_money_status: @empty_room.thanks_money_status } }
    assert_redirected_to empty_room_url(@empty_room)
  end

  test "should destroy empty_room" do
    assert_difference('EmptyRoom.count', -1) do
      delete empty_room_url(@empty_room)
    end

    assert_redirected_to empty_rooms_url
  end
end
