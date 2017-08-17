require 'test_helper'

class GalaxiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @galaxium = galaxia(:one)
  end

  test "should get index" do
    get galaxia_url
    assert_response :success
  end

  test "should get new" do
    get new_galaxium_url
    assert_response :success
  end

  test "should create galaxium" do
    assert_difference('Galaxium.count') do
      post galaxia_url, params: { galaxium: { body: @galaxium.body, nombre: @galaxium.nombre } }
    end

    assert_redirected_to galaxium_url(Galaxium.last)
  end

  test "should show galaxium" do
    get galaxium_url(@galaxium)
    assert_response :success
  end

  test "should get edit" do
    get edit_galaxium_url(@galaxium)
    assert_response :success
  end

  test "should update galaxium" do
    patch galaxium_url(@galaxium), params: { galaxium: { body: @galaxium.body, nombre: @galaxium.nombre } }
    assert_redirected_to galaxium_url(@galaxium)
  end

  test "should destroy galaxium" do
    assert_difference('Galaxium.count', -1) do
      delete galaxium_url(@galaxium)
    end

    assert_redirected_to galaxia_url
  end
end
