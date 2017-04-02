require 'test_helper'

class ProgramasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programa = programas(:one)
  end

  test "should get index" do
    get programas_url
    assert_response :success
  end

  test "should get new" do
    get new_programa_url
    assert_response :success
  end

  test "should create programa" do
    assert_difference('Programa.count') do
      post programas_url, params: { programa: { local: @programa.local, nome: @programa.nome } }
    end

    assert_redirected_to programa_url(Programa.last)
  end

  test "should show programa" do
    get programa_url(@programa)
    assert_response :success
  end

  test "should get edit" do
    get edit_programa_url(@programa)
    assert_response :success
  end

  test "should update programa" do
    patch programa_url(@programa), params: { programa: { local: @programa.local, nome: @programa.nome } }
    assert_redirected_to programa_url(@programa)
  end

  test "should destroy programa" do
    assert_difference('Programa.count', -1) do
      delete programa_url(@programa)
    end

    assert_redirected_to programas_url
  end
end
