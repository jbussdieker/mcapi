require 'test_helper'

class RpcsControllerTest < ActionController::TestCase
  setup do
    @rpc = rpcs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rpcs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rpc" do
    assert_difference('Rpc.count') do
      post :create, rpc: { action: @rpc.action, agent: @rpc.agent, discovery_timeout: @rpc.discovery_timeout, timeout: @rpc.timeout }
    end

    assert_redirected_to rpc_path(assigns(:rpc))
  end

  test "should show rpc" do
    get :show, id: @rpc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rpc
    assert_response :success
  end

  test "should update rpc" do
    patch :update, id: @rpc, rpc: { action: @rpc.action, agent: @rpc.agent, discovery_timeout: @rpc.discovery_timeout, timeout: @rpc.timeout }
    assert_redirected_to rpc_path(assigns(:rpc))
  end

  test "should destroy rpc" do
    assert_difference('Rpc.count', -1) do
      delete :destroy, id: @rpc
    end

    assert_redirected_to rpcs_path
  end
end
