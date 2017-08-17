require 'test_helper'

class AsteroidesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @asteroide = asteroides(:one)
  end

  test "should get index" do
    get asteroides_url
    assert_response :success
  end

  test "should get new" do
    get new_asteroide_url
    assert_response :success
  end

  test "should create asteroide" do
    assert_difference('Asteroide.count') do
      post asteroides_url, params: { asteroide: { Advertencia: @asteroide.Advertencia, nombre: @asteroide.nombre } }
    end

    assert_redirected_to asteroide_url(Asteroide.last)
  end

  test "should show asteroide" do
    get asteroide_url(@asteroide)
    assert_response :success
  end

  test "should get edit" do
    get edit_asteroide_url(@asteroide)
    assert_response :success
  end

  test "should update asteroide" do
    patch asteroide_url(@asteroide), params: { asteroide: { Advertencia: @asteroide.Advertencia, nombre: @asteroide.nombre } }
    assert_redirected_to asteroide_url(@asteroide)
  end

  test "should destroy asteroide" do
    assert_difference('Asteroide.count', -1) do
      delete asteroide_url(@asteroide)
    end

    assert_redirected_to asteroides_url
  end
end
