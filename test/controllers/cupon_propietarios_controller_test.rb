require 'test_helper'

class CuponPropietariosControllerTest < ActionController::TestCase
  setup do
    @cupon_propietario = cupon_propietarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cupon_propietarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cupon_propietario" do
    assert_difference('CuponPropietario.count') do
      post :create, cupon_propietario: { FechaEmisionProp: @cupon_propietario.FechaEmisionProp, Propietario_id: @cupon_propietario.Propietario_id, TotalCobrosProp: @cupon_propietario.TotalCobrosProp, TotalPagosProp: @cupon_propietario.TotalPagosProp }
    end

    assert_redirected_to cupon_propietario_path(assigns(:cupon_propietario))
  end

  test "should show cupon_propietario" do
    get :show, id: @cupon_propietario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cupon_propietario
    assert_response :success
  end

  test "should update cupon_propietario" do
    patch :update, id: @cupon_propietario, cupon_propietario: { FechaEmisionProp: @cupon_propietario.FechaEmisionProp, Propietario_id: @cupon_propietario.Propietario_id, TotalCobrosProp: @cupon_propietario.TotalCobrosProp, TotalPagosProp: @cupon_propietario.TotalPagosProp }
    assert_redirected_to cupon_propietario_path(assigns(:cupon_propietario))
  end

  test "should destroy cupon_propietario" do
    assert_difference('CuponPropietario.count', -1) do
      delete :destroy, id: @cupon_propietario
    end

    assert_redirected_to cupon_propietarios_path
  end
end
