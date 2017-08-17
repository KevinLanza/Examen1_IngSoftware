require 'test_helper'

class ConstelacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @constelacione = constelaciones(:one)
  end

  test "should get index" do
    get constelaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_constelacione_url
    assert_response :success
  end

  test "should create constelacione" do
    assert_difference('Constelacione.count') do
      post constelaciones_url, params: { constelacione: { signo: @constelacione.signo } }
    end

    assert_redirected_to constelacione_url(Constelacione.last)
  end

  test "should show constelacione" do
    get constelacione_url(@constelacione)
    assert_response :success
  end

  test "should get edit" do
    get edit_constelacione_url(@constelacione)
    assert_response :success
  end

  test "should update constelacione" do
    patch constelacione_url(@constelacione), params: { constelacione: { signo: @constelacione.signo } }
    assert_redirected_to constelacione_url(@constelacione)
  end

  test "should destroy constelacione" do
    assert_difference('Constelacione.count', -1) do
      delete constelacione_url(@constelacione)
    end

    assert_redirected_to constelaciones_url
  end
end
