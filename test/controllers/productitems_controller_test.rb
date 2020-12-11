require 'test_helper'

class ProductitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productitem = productitems(:one)
  end

  test "should get index" do
    get productitems_url
    assert_response :success
  end

  test "should get new" do
    get new_productitem_url
    assert_response :success
  end

  test "should create productitem" do
    assert_difference('Productitem.count') do
      post productitems_url, params: { productitem: {  } }
    end

    assert_redirected_to productitem_url(Productitem.last)
  end

  test "should show productitem" do
    get productitem_url(@productitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_productitem_url(@productitem)
    assert_response :success
  end

  test "should update productitem" do
    patch productitem_url(@productitem), params: { productitem: {  } }
    assert_redirected_to productitem_url(@productitem)
  end

  test "should destroy productitem" do
    assert_difference('Productitem.count', -1) do
      delete productitem_url(@productitem)
    end

    assert_redirected_to productitems_url
  end
end
