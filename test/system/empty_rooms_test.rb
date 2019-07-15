require "application_system_test_case"

class EmptyRoomsTest < ApplicationSystemTestCase
  setup do
    @empty_room = empty_rooms(:one)
  end

  test "visiting the index" do
    visit empty_rooms_url
    assert_selector "h1", text: "Empty Rooms"
  end

  test "creating a Empty room" do
    visit empty_rooms_url
    click_on "New Empty Room"

    fill_in "Area", with: @empty_room.area
    fill_in "Arrangement", with: @empty_room.arrangement
    fill_in "Benefit", with: @empty_room.benefit
    fill_in "Common fee", with: @empty_room.common_fee
    fill_in "Day to enter", with: @empty_room.day_to_enter
    fill_in "Day to leave", with: @empty_room.day_to_leave
    fill_in "Deposit", with: @empty_room.deposit
    fill_in "Deposit month", with: @empty_room.deposit_month
    fill_in "Deposit status", with: @empty_room.deposit_status
    fill_in "Gas", with: @empty_room.gas
    fill_in "Key", with: @empty_room.key
    fill_in "Leave status", with: @empty_room.leave_status
    fill_in "Memo", with: @empty_room.memo
    fill_in "Name", with: @empty_room.name
    fill_in "Number", with: @empty_room.number
    fill_in "Parking", with: @empty_room.parking
    fill_in "Parking status", with: @empty_room.parking_status
    fill_in "Pet", with: @empty_room.pet
    fill_in "Rent", with: @empty_room.rent
    fill_in "Station", with: @empty_room.station
    fill_in "Status", with: @empty_room.status
    fill_in "Thanks money", with: @empty_room.thanks_money
    fill_in "Thanks money month", with: @empty_room.thanks_money_month
    fill_in "Thanks money status", with: @empty_room.thanks_money_status
    click_on "Create Empty room"

    assert_text "Empty room was successfully created"
    click_on "Back"
  end

  test "updating a Empty room" do
    visit empty_rooms_url
    click_on "Edit", match: :first

    fill_in "Area", with: @empty_room.area
    fill_in "Arrangement", with: @empty_room.arrangement
    fill_in "Benefit", with: @empty_room.benefit
    fill_in "Common fee", with: @empty_room.common_fee
    fill_in "Day to enter", with: @empty_room.day_to_enter
    fill_in "Day to leave", with: @empty_room.day_to_leave
    fill_in "Deposit", with: @empty_room.deposit
    fill_in "Deposit month", with: @empty_room.deposit_month
    fill_in "Deposit status", with: @empty_room.deposit_status
    fill_in "Gas", with: @empty_room.gas
    fill_in "Key", with: @empty_room.key
    fill_in "Leave status", with: @empty_room.leave_status
    fill_in "Memo", with: @empty_room.memo
    fill_in "Name", with: @empty_room.name
    fill_in "Number", with: @empty_room.number
    fill_in "Parking", with: @empty_room.parking
    fill_in "Parking status", with: @empty_room.parking_status
    fill_in "Pet", with: @empty_room.pet
    fill_in "Rent", with: @empty_room.rent
    fill_in "Station", with: @empty_room.station
    fill_in "Status", with: @empty_room.status
    fill_in "Thanks money", with: @empty_room.thanks_money
    fill_in "Thanks money month", with: @empty_room.thanks_money_month
    fill_in "Thanks money status", with: @empty_room.thanks_money_status
    click_on "Update Empty room"

    assert_text "Empty room was successfully updated"
    click_on "Back"
  end

  test "destroying a Empty room" do
    visit empty_rooms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Empty room was successfully destroyed"
  end
end
