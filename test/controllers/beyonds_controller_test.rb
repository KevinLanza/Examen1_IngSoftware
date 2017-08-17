require 'test_helper'

class BeyondsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @beyond = beyonds(:one)
  end

  test "should get index" do
    get beyonds_url
    assert_response :success
  end

  test "should get new" do
    get new_beyond_url
    assert_response :success
  end

  test "should create beyond" do
    assert_difference('Beyond.count') do
      post beyonds_url, params: { beyond: { nombre: @beyond.nombre, tipo: @beyond.tipo } }
    end

    assert_redirected_to beyond_url(Beyond.last)
  end

  test "should show beyond" do
    get beyond_url(@beyond)
    assert_response :success
  end

  test "should get edit" do
    get edit_beyond_url(@beyond)
    assert_response :success
  end

  test "should update beyond" do
    patch beyond_url(@beyond), params: { beyond: { nombre: @beyond.nombre, tipo: @beyond.tipo } }
    assert_redirected_to beyond_url(@beyond)
  end

  test "should destroy beyond" do
    assert_difference('Beyond.count', -1) do
      delete beyond_url(@beyond)
    end

    assert_redirected_to beyonds_url
  end
end
