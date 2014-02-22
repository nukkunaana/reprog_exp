require 'test_helper'

class ViriControllerTest < ActionController::TestCase
  setup do
    @virus = viri(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:viri)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create virus" do
    assert_difference('Virus.count') do
      post :create, virus: { date: @virus.date, name: @virus.name, volume: @virus.volume }
    end

    assert_redirected_to virus_path(assigns(:virus))
  end

  test "should show virus" do
    get :show, id: @virus
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @virus
    assert_response :success
  end

  test "should update virus" do
    patch :update, id: @virus, virus: { date: @virus.date, name: @virus.name, volume: @virus.volume }
    assert_redirected_to virus_path(assigns(:virus))
  end

  test "should destroy virus" do
    assert_difference('Virus.count', -1) do
      delete :destroy, id: @virus
    end

    assert_redirected_to viri_path
  end
end
