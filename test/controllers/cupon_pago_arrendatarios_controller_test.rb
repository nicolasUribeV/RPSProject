require 'test_helper'

class CuponPagoArrendatariosControllerTest < ActionController::TestCase
  setup do
    @cupon_pago_arrendatario = cupon_pago_arrendatarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cupon_pago_arrendatarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cupon_pago_arrendatario" do
    assert_difference('CuponPagoArrendatario.count') do
      post :create, cupon_pago_arrendatario: { Comentario: @cupon_pago_arrendatario.Comentario, ContratoArriendo_id: @cupon_pago_arrendatario.ContratoArriendo_id, FechaEmision: @cupon_pago_arrendatario.FechaEmision, LiquidacionProcesada: @cupon_pago_arrendatario.LiquidacionProcesada, Total: @cupon_pago_arrendatario.Total }
    end

    assert_redirected_to cupon_pago_arrendatario_path(assigns(:cupon_pago_arrendatario))
  end

  test "should show cupon_pago_arrendatario" do
    get :show, id: @cupon_pago_arrendatario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cupon_pago_arrendatario
    assert_response :success
  end

  test "should update cupon_pago_arrendatario" do
    patch :update, id: @cupon_pago_arrendatario, cupon_pago_arrendatario: { Comentario: @cupon_pago_arrendatario.Comentario, ContratoArriendo_id: @cupon_pago_arrendatario.ContratoArriendo_id, FechaEmision: @cupon_pago_arrendatario.FechaEmision, LiquidacionProcesada: @cupon_pago_arrendatario.LiquidacionProcesada, Total: @cupon_pago_arrendatario.Total }
    assert_redirected_to cupon_pago_arrendatario_path(assigns(:cupon_pago_arrendatario))
  end

  test "should destroy cupon_pago_arrendatario" do
    assert_difference('CuponPagoArrendatario.count', -1) do
      delete :destroy, id: @cupon_pago_arrendatario
    end

    assert_redirected_to cupon_pago_arrendatarios_path
  end
end
