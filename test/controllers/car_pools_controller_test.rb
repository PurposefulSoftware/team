require 'test_helper'

class CarPoolsControllerTest < ActionController::TestCase
  setup do
    @car_pool = car_pools(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:car_pools)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create car_pool" do
    assert_difference('CarPool.count') do
      post :create, car_pool: { details: @car_pool.details, end_at: @car_pool.end_at, location_address: @car_pool.location_address, location_name: @car_pool.location_name, location_url: @car_pool.location_url, start_at: @car_pool.start_at, title: @car_pool.title }
    end

    assert_redirected_to car_pool_path(assigns(:car_pool))
  end

  test "should show car_pool" do
    get :show, id: @car_pool
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @car_pool
    assert_response :success
  end

  test "should update car_pool" do
    patch :update, id: @car_pool, car_pool: { details: @car_pool.details, end_at: @car_pool.end_at, location_address: @car_pool.location_address, location_name: @car_pool.location_name, location_url: @car_pool.location_url, start_at: @car_pool.start_at, title: @car_pool.title }
    assert_redirected_to car_pool_path(assigns(:car_pool))
  end

  test "should destroy car_pool" do
    assert_difference('CarPool.count', -1) do
      delete :destroy, id: @car_pool
    end

    assert_redirected_to car_pools_path
  end
end
