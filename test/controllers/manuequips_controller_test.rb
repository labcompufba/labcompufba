require 'test_helper'

class ManuequipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @manuequip = manuequips(:one)
  end

  test "should get index" do
    get manuequips_url
    assert_response :success
  end

  test "should get new" do
    get new_manuequip_url
    assert_response :success
  end

  test "should create manuequip" do
    assert_difference('Manuequip.count') do
      post manuequips_url, params: { manuequip: { baixa: @manuequip.baixa, equipamento_id: @manuequip.equipamento_id, labequip_id: @manuequip.labequip_id, manutencao_id: @manuequip.manutencao_id } }
    end

    assert_redirected_to manuequip_url(Manuequip.last)
  end

  test "should show manuequip" do
    get manuequip_url(@manuequip)
    assert_response :success
  end

  test "should get edit" do
    get edit_manuequip_url(@manuequip)
    assert_response :success
  end

  test "should update manuequip" do
    patch manuequip_url(@manuequip), params: { manuequip: { baixa: @manuequip.baixa, equipamento_id: @manuequip.equipamento_id, labequip_id: @manuequip.labequip_id, manutencao_id: @manuequip.manutencao_id } }
    assert_redirected_to manuequip_url(@manuequip)
  end

  test "should destroy manuequip" do
    assert_difference('Manuequip.count', -1) do
      delete manuequip_url(@manuequip)
    end

    assert_redirected_to manuequips_url
  end
end
