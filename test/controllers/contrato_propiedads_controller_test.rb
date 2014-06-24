require 'test_helper'

class ContratoPropiedadsControllerTest < ActionController::TestCase
  setup do
    @contrato_propiedad = contrato_propiedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contrato_propiedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create contrato_propiedad" do
    assert_difference('ContratoPropiedad.count') do
      post :create, contrato_propiedad: { ContratoDigital: @contrato_propiedad.ContratoDigital, DuracionContrato: @contrato_propiedad.DuracionContrato, FechaInicio: @contrato_propiedad.FechaInicio, Propiedad_id: @contrato_propiedad.Propiedad_id, Vigencia: @contrato_propiedad.Vigencia }
    end

    assert_redirected_to contrato_propiedad_path(assigns(:contrato_propiedad))
  end

  test "should show contrato_propiedad" do
    get :show, id: @contrato_propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @contrato_propiedad
    assert_response :success
  end

  test "should update contrato_propiedad" do
    patch :update, id: @contrato_propiedad, contrato_propiedad: { ContratoDigital: @contrato_propiedad.ContratoDigital, DuracionContrato: @contrato_propiedad.DuracionContrato, FechaInicio: @contrato_propiedad.FechaInicio, Propiedad_id: @contrato_propiedad.Propiedad_id, Vigencia: @contrato_propiedad.Vigencia }
    assert_redirected_to contrato_propiedad_path(assigns(:contrato_propiedad))
  end

  test "should destroy contrato_propiedad" do
    assert_difference('ContratoPropiedad.count', -1) do
      delete :destroy, id: @contrato_propiedad
    end

    assert_redirected_to contrato_propiedads_path
  end
end
