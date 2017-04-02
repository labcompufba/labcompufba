require 'test_helper'

class TipoServicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_servico = tipo_servicos(:one)
  end

  test "should get index" do
    get tipo_servicos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_servico_url
    assert_response :success
  end

  test "should create tipo_servico" do
    assert_difference('TipoServico.count') do
      post tipo_servicos_url, params: { tipo_servico: { servico: @tipo_servico.servico } }
    end

    assert_redirected_to tipo_servico_url(TipoServico.last)
  end

  test "should show tipo_servico" do
    get tipo_servico_url(@tipo_servico)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_servico_url(@tipo_servico)
    assert_response :success
  end

  test "should update tipo_servico" do
    patch tipo_servico_url(@tipo_servico), params: { tipo_servico: { servico: @tipo_servico.servico } }
    assert_redirected_to tipo_servico_url(@tipo_servico)
  end

  test "should destroy tipo_servico" do
    assert_difference('TipoServico.count', -1) do
      delete tipo_servico_url(@tipo_servico)
    end

    assert_redirected_to tipo_servicos_url
  end
end
