require 'test_helper'

class PlanetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @planetum = planeta(:one)
  end

  test "should get index" do
    get planeta_url
    assert_response :success
  end

  test "should get new" do
    get new_planetum_url
    assert_response :success
  end

  test "should create planetum" do
    assert_difference('Planetum.count') do
      post planeta_url, params: { planetum: { nombre: @planetum.nombre, tamaño: @planetum.tamaño } }
    end

    assert_redirected_to planetum_url(Planetum.last)
  end

  test "should show planetum" do
    get planetum_url(@planetum)
    assert_response :success
  end

  test "should get edit" do
    get edit_planetum_url(@planetum)
    assert_response :success
  end

  test "should update planetum" do
    patch planetum_url(@planetum), params: { planetum: { nombre: @planetum.nombre, tamaño: @planetum.tamaño } }
    assert_redirected_to planetum_url(@planetum)
  end

  test "should destroy planetum" do
    assert_difference('Planetum.count', -1) do
      delete planetum_url(@planetum)
    end

    assert_redirected_to planeta_url
  end
end
