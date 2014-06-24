require 'test_helper'

class DetalleCuponsControllerTest < ActionController::TestCase
  setup do
    @detalle_cupon = detalle_cupons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:detalle_cupons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create detalle_cupon" do
    assert_difference('DetalleCupon.count') do
      post :create, detalle_cupon: { ContratoPropiedad_id: @detalle_cupon.ContratoPropiedad_id, CuponPropiedad_id: @detalle_cupon.CuponPropiedad_id, DescripcionDetalle: @detalle_cupon.DescripcionDetalle, DetalleProcesado: @detalle_cupon.DetalleProcesado, TipoD: @detalle_cupon.TipoD, Total: @detalle_cupon.Total }
    end

    assert_redirected_to detalle_cupon_path(assigns(:detalle_cupon))
  end

  test "should show detalle_cupon" do
    get :show, id: @detalle_cupon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @detalle_cupon
    assert_response :success
  end

  test "should update detalle_cupon" do
    patch :update, id: @detalle_cupon, detalle_cupon: { ContratoPropiedad_id: @detalle_cupon.ContratoPropiedad_id, CuponPropiedad_id: @detalle_cupon.CuponPropiedad_id, DescripcionDetalle: @detalle_cupon.DescripcionDetalle, DetalleProcesado: @detalle_cupon.DetalleProcesado, TipoD: @detalle_cupon.TipoD, Total: @detalle_cupon.Total }
    assert_redirected_to detalle_cupon_path(assigns(:detalle_cupon))
  end

  test "should destroy detalle_cupon" do
    assert_difference('DetalleCupon.count', -1) do
      delete :destroy, id: @detalle_cupon
    end

    assert_redirected_to detalle_cupons_path
  end
end
