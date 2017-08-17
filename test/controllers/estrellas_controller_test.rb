require 'test_helper'

class EstrellasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estrella = estrellas(:one)
  end

  test "should get index" do
    get estrellas_url
    assert_response :success
  end

  test "should get new" do
    get new_estrella_url
    assert_response :success
  end

  test "should create estrella" do
    assert_difference('Estrella.count') do
      post estrellas_url, params: { estrella: { nombre: @estrella.nombre, tamaño: @estrella.tamaño } }
    end

    assert_redirected_to estrella_url(Estrella.last)
  end

  test "should show estrella" do
    get estrella_url(@estrella)
    assert_response :success
  end

  test "should get edit" do
    get edit_estrella_url(@estrella)
    assert_response :success
  end

  test "should update estrella" do
    patch estrella_url(@estrella), params: { estrella: { nombre: @estrella.nombre, tamaño: @estrella.tamaño } }
    assert_redirected_to estrella_url(@estrella)
  end

  test "should destroy estrella" do
    assert_difference('Estrella.count', -1) do
      delete estrella_url(@estrella)
    end

    assert_redirected_to estrellas_url
  end
end
