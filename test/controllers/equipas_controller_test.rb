require 'test_helper'

class EquipasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @equipa = equipas(:one)
  end

  test "should get index" do
    get equipas_url
    assert_response :success
  end

  test "should get new" do
    get new_equipa_url
    assert_response :success
  end

  test "should create equipa" do
    assert_difference('Equipa.count') do
      post equipas_url, params: { equipa: { codigo: @equipa.codigo, descricao: @equipa.descricao } }
    end

    assert_redirected_to equipa_url(Equipa.last)
  end

  test "should show equipa" do
    get equipa_url(@equipa)
    assert_response :success
  end

  test "should get edit" do
    get edit_equipa_url(@equipa)
    assert_response :success
  end

  test "should update equipa" do
    patch equipa_url(@equipa), params: { equipa: { codigo: @equipa.codigo, descricao: @equipa.descricao } }
    assert_redirected_to equipa_url(@equipa)
  end

  test "should destroy equipa" do
    assert_difference('Equipa.count', -1) do
      delete equipa_url(@equipa)
    end

    assert_redirected_to equipas_url
  end
end
