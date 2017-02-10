require 'test_helper'

class AgendamentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agendamento = agendamentos(:one)
  end

  test "should get index" do
    get agendamentos_url
    assert_response :success
  end

  test "should get new" do
    get new_agendamento_url
    assert_response :success
  end

  test "should create agendamento" do
    assert_difference('Agendamento.count') do
      post agendamentos_url, params: { agendamento: { agência: @agendamento.agência, bibliografia: @agendamento.bibliografia, data: @agendamento.data, final: @agendamento.final, inicial: @agendamento.inicial, laboratório: @agendamento.laboratório, local: @agendamento.local, nome: @agendamento.nome, número: @agendamento.número, resumo: @agendamento.resumo } }
    end

    assert_redirected_to agendamento_url(Agendamento.last)
  end

  test "should show agendamento" do
    get agendamento_url(@agendamento)
    assert_response :success
  end

  test "should get edit" do
    get edit_agendamento_url(@agendamento)
    assert_response :success
  end

  test "should update agendamento" do
    patch agendamento_url(@agendamento), params: { agendamento: { agência: @agendamento.agência, bibliografia: @agendamento.bibliografia, data: @agendamento.data, final: @agendamento.final, inicial: @agendamento.inicial, laboratório: @agendamento.laboratório, local: @agendamento.local, nome: @agendamento.nome, número: @agendamento.número, resumo: @agendamento.resumo } }
    assert_redirected_to agendamento_url(@agendamento)
  end

  test "should destroy agendamento" do
    assert_difference('Agendamento.count', -1) do
      delete agendamento_url(@agendamento)
    end

    assert_redirected_to agendamentos_url
  end
end
