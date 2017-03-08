require 'test_helper'

class LabequipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @labequip = labequips(:one)
  end

  test "should get index" do
    get labequips_url
    assert_response :success
  end

  test "should get new" do
    get new_labequip_url
    assert_response :success
  end

  test "should create labequip" do
    assert_difference('Labequip.count') do
      post labequips_url, params: { labequip: { cod_equip: @labequip.cod_equip, cod_lab: @labequip.cod_lab, quantidade: @labequip.quantidade } }
    end

    assert_redirected_to labequip_url(Labequip.last)
  end

  test "should show labequip" do
    get labequip_url(@labequip)
    assert_response :success
  end

  test "should get edit" do
    get edit_labequip_url(@labequip)
    assert_response :success
  end

  test "should update labequip" do
    patch labequip_url(@labequip), params: { labequip: { cod_equip: @labequip.cod_equip, cod_lab: @labequip.cod_lab, quantidade: @labequip.quantidade } }
    assert_redirected_to labequip_url(@labequip)
  end

  test "should destroy labequip" do
    assert_difference('Labequip.count', -1) do
      delete labequip_url(@labequip)
    end

    assert_redirected_to labequips_url
  end
end
