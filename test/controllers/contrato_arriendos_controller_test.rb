require 'test_helper'

class ContratoArriendosControllerTest < ActionController::TestCase
  setup do
    @contrato_arriendo = contrato_arriendos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contrato_arriendos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contrato_arriendo" do
    assert_difference('ContratoArriendo.count') do
      post :create, contrato_arriendo: { Arrendatario_id: @contrato_arriendo.Arrendatario_id, ContratoDigital: @contrato_arriendo.ContratoDigital, DiaPago: @contrato_arriendo.DiaPago, FechaInicioArriendo: @contrato_arriendo.FechaInicioArriendo, FechaTerminoArriendo: @contrato_arriendo.FechaTerminoArriendo, MultaPeriocidad: @contrato_arriendo.MultaPeriocidad, PeriodoReajuste: @contrato_arriendo.PeriodoReajuste, Propiedad_id: @contrato_arriendo.Propiedad_id, TipoRenovacion: @contrato_arriendo.TipoRenovacion }
    end

    assert_redirected_to contrato_arriendo_path(assigns(:contrato_arriendo))
  end

  test "should show contrato_arriendo" do
    get :show, id: @contrato_arriendo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contrato_arriendo
    assert_response :success
  end

  test "should update contrato_arriendo" do
    patch :update, id: @contrato_arriendo, contrato_arriendo: { Arrendatario_id: @contrato_arriendo.Arrendatario_id, ContratoDigital: @contrato_arriendo.ContratoDigital, DiaPago: @contrato_arriendo.DiaPago, FechaInicioArriendo: @contrato_arriendo.FechaInicioArriendo, FechaTerminoArriendo: @contrato_arriendo.FechaTerminoArriendo, MultaPeriocidad: @contrato_arriendo.MultaPeriocidad, PeriodoReajuste: @contrato_arriendo.PeriodoReajuste, Propiedad_id: @contrato_arriendo.Propiedad_id, TipoRenovacion: @contrato_arriendo.TipoRenovacion }
    assert_redirected_to contrato_arriendo_path(assigns(:contrato_arriendo))
  end

  test "should destroy contrato_arriendo" do
    assert_difference('ContratoArriendo.count', -1) do
      delete :destroy, id: @contrato_arriendo
    end

    assert_redirected_to contrato_arriendos_path
  end
end
