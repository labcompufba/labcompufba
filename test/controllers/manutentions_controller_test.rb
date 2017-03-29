require 'test_helper'

class ManutentionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manutention = manutentions(:one)
  end

  test "should get index" do
    get manutentions_url
    assert_response :success
  end

  test "should get new" do
    get new_manutention_url
    assert_response :success
  end

  test "should create manutention" do
    assert_difference('Manutention.count') do
      post manutentions_url, params: { manutention: { baixa: @manutention.baixa, data_baixa: @manutention.data_baixa, data_manutencao: @manutention.data_manutencao, labequip_id: @manutention.labequip_id, usuario_manutencao: @manutention.usuario_manutencao } }
    end

    assert_redirected_to manutention_url(Manutention.last)
  end

  test "should show manutention" do
    get manutention_url(@manutention)
    assert_response :success
  end

  test "should get edit" do
    get edit_manutention_url(@manutention)
    assert_response :success
  end

  test "should update manutention" do
    patch manutention_url(@manutention), params: { manutention: { baixa: @manutention.baixa, data_baixa: @manutention.data_baixa, data_manutencao: @manutention.data_manutencao, labequip_id: @manutention.labequip_id, usuario_manutencao: @manutention.usuario_manutencao } }
    assert_redirected_to manutention_url(@manutention)
  end

  test "should destroy manutention" do
    assert_difference('Manutention.count', -1) do
      delete manutention_url(@manutention)
    end

    assert_redirected_to manutentions_url
  end
end
