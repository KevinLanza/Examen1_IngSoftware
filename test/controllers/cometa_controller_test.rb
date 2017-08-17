require 'test_helper'

class CometaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cometum = cometa(:one)
  end

  test "should get index" do
    get cometa_url
    assert_response :success
  end

  test "should get new" do
    get new_cometum_url
    assert_response :success
  end

  test "should create cometum" do
    assert_difference('Cometum.count') do
      post cometa_url, params: { cometum: { nombre: @cometum.nombre } }
    end

    assert_redirected_to cometum_url(Cometum.last)
  end

  test "should show cometum" do
    get cometum_url(@cometum)
    assert_response :success
  end

  test "should get edit" do
    get edit_cometum_url(@cometum)
    assert_response :success
  end

  test "should update cometum" do
    patch cometum_url(@cometum), params: { cometum: { nombre: @cometum.nombre } }
    assert_redirected_to cometum_url(@cometum)
  end

  test "should destroy cometum" do
    assert_difference('Cometum.count', -1) do
      delete cometum_url(@cometum)
    end

    assert_redirected_to cometa_url
  end
end
