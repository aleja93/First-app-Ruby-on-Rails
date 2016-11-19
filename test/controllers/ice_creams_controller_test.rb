require 'test_helper'

class IceCreamsControllerTest < ActionController::TestCase
  setup do
    @ice_cream = ice_creams(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ice_creams)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ice_cream" do
    assert_difference('IceCream.count') do
      post :create, ice_cream: { description: @ice_cream.description, name: @ice_cream.name, picture: @ice_cream.picture, price: @ice_cream.price }
    end

    assert_redirected_to ice_cream_path(assigns(:ice_cream))
  end

  test "should show ice_cream" do
    get :show, id: @ice_cream
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ice_cream
    assert_response :success
  end

  test "should update ice_cream" do
    patch :update, id: @ice_cream, ice_cream: { description: @ice_cream.description, name: @ice_cream.name, picture: @ice_cream.picture, price: @ice_cream.price }
    assert_redirected_to ice_cream_path(assigns(:ice_cream))
  end

  test "should destroy ice_cream" do
    assert_difference('IceCream.count', -1) do
      delete :destroy, id: @ice_cream
    end

    assert_redirected_to ice_creams_path
  end
end
