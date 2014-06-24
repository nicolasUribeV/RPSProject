require 'test_helper'

class CuponPropiedadsControllerTest < ActionController::TestCase
  setup do
    @cupon_propiedad = cupon_propiedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cupon_propiedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cupon_propiedad" do
    assert_difference('CuponPropiedad.count') do
      post :create, cupon_propiedad: { CPProcesada: @cupon_propiedad.CPProcesada, ContratoPropiedad_id: @cupon_propiedad.ContratoPropiedad_id, CuponPropietario_id: @cupon_propiedad.CuponPropietario_id, DescripcionCP: @cupon_propiedad.DescripcionCP, FechaEmisionCP: @cupon_propiedad.FechaEmisionCP, TotalCobros: @cupon_propiedad.TotalCobros, TotalPagos: @cupon_propiedad.TotalPagos }
    end

    assert_redirected_to cupon_propiedad_path(assigns(:cupon_propiedad))
  end

  test "should show cupon_propiedad" do
    get :show, id: @cupon_propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cupon_propiedad
    assert_response :success
  end

  test "should update cupon_propiedad" do
    patch :update, id: @cupon_propiedad, cupon_propiedad: { CPProcesada: @cupon_propiedad.CPProcesada, ContratoPropiedad_id: @cupon_propiedad.ContratoPropiedad_id, CuponPropietario_id: @cupon_propiedad.CuponPropietario_id, DescripcionCP: @cupon_propiedad.DescripcionCP, FechaEmisionCP: @cupon_propiedad.FechaEmisionCP, TotalCobros: @cupon_propiedad.TotalCobros, TotalPagos: @cupon_propiedad.TotalPagos }
    assert_redirected_to cupon_propiedad_path(assigns(:cupon_propiedad))
  end

  test "should destroy cupon_propiedad" do
    assert_difference('CuponPropiedad.count', -1) do
      delete :destroy, id: @cupon_propiedad
    end

    assert_redirected_to cupon_propiedads_path
  end
end
