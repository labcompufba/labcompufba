require 'test_helper'

class LaboratoriosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @laboratorio = laboratorios(:one)
  end

  test "should get index" do
    get laboratorios_url
    assert_response :success
  end

  test "should get new" do
    get new_laboratorio_url
    assert_response :success
  end

  test "should create laboratorio" do
    assert_difference('Laboratorio.count') do
      post laboratorios_url, params: { laboratorio: { cod_inst: @laboratorio.cod_inst, cod_lab: @laboratorio.cod_lab, local: @laboratorio.local, nome: @laboratorio.nome } }
    end

    assert_redirected_to laboratorio_url(Laboratorio.last)
  end

  test "should show laboratorio" do
    get laboratorio_url(@laboratorio)
    assert_response :success
  end

  test "should get edit" do
    get edit_laboratorio_url(@laboratorio)
    assert_response :success
  end

  test "should update laboratorio" do
    patch laboratorio_url(@laboratorio), params: { laboratorio: { cod_inst: @laboratorio.cod_inst, cod_lab: @laboratorio.cod_lab, local: @laboratorio.local, nome: @laboratorio.nome } }
    assert_redirected_to laboratorio_url(@laboratorio)
  end

  test "should destroy laboratorio" do
    assert_difference('Laboratorio.count', -1) do
      delete laboratorio_url(@laboratorio)
    end

    assert_redirected_to laboratorios_url
  end
end
