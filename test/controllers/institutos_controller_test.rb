require 'test_helper'

class InstitutosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @instituto = institutos(:one)
  end

  test "should get index" do
    get institutos_url
    assert_response :success
  end

  test "should get new" do
    get new_instituto_url
    assert_response :success
  end

  test "should create instituto" do
    assert_difference('Instituto.count') do
      post institutos_url, params: { instituto: { local: @instituto.local, nome: @instituto.nome, sigla: @instituto.sigla } }
    end

    assert_redirected_to instituto_url(Instituto.last)
  end

  test "should show instituto" do
    get instituto_url(@instituto)
    assert_response :success
  end

  test "should get edit" do
    get edit_instituto_url(@instituto)
    assert_response :success
  end

  test "should update instituto" do
    patch instituto_url(@instituto), params: { instituto: { local: @instituto.local, nome: @instituto.nome, sigla: @instituto.sigla } }
    assert_redirected_to instituto_url(@instituto)
  end

  test "should destroy instituto" do
    assert_difference('Instituto.count', -1) do
      delete instituto_url(@instituto)
    end

    assert_redirected_to institutos_url
  end
end
