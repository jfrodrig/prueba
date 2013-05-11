require 'test_helper'

class Client1sControllerTest < ActionController::TestCase
  setup do
    @client1 = client1s(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:client1s)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create client1" do
    assert_difference('Client1.count') do
      post :create, client1: { avatar: @client1.avatar, birth: @client1.birth, city: @client1.city, country: @client1.country, gender: @client1.gender, name: @client1.name }
    end

    assert_redirected_to client1_path(assigns(:client1))
  end

  test "should show client1" do
    get :show, id: @client1
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @client1
    assert_response :success
  end

  test "should update client1" do
    patch :update, id: @client1, client1: { avatar: @client1.avatar, birth: @client1.birth, city: @client1.city, country: @client1.country, gender: @client1.gender, name: @client1.name }
    assert_redirected_to client1_path(assigns(:client1))
  end

  test "should destroy client1" do
    assert_difference('Client1.count', -1) do
      delete :destroy, id: @client1
    end

    assert_redirected_to client1s_path
  end
end
