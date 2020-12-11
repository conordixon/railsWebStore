require "application_system_test_case"

class ProductitemsTest < ApplicationSystemTestCase
  setup do
    @productitem = productitems(:one)
  end

  test "visiting the index" do
    visit productitems_url
    assert_selector "h1", text: "Productitems"
  end

  test "creating a Productitem" do
    visit productitems_url
    click_on "New Productitem"

    click_on "Create Productitem"

    assert_text "Productitem was successfully created"
    click_on "Back"
  end

  test "updating a Productitem" do
    visit productitems_url
    click_on "Edit", match: :first

    click_on "Update Productitem"

    assert_text "Productitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Productitem" do
    visit productitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Productitem was successfully destroyed"
  end
end
