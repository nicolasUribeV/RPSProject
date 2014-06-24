require 'test_helper'

class SolicitudsControllerTest < ActionController::TestCase
  setup do
    @solicitud = solicituds(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:solicituds)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create solicitud" do
    assert_difference('Solicitud.count') do
      post :create, solicitud: { Arrendatario_id: @solicitud.Arrendatario_id, Calendario_id: @solicitud.Calendario_id, Calendario_id: @solicitud.Calendario_id, Estado: @solicitud.Estado, FechaEmision: @solicitud.FechaEmision, Propiedad_id: @solicitud.Propiedad_id, TipoSolicitud: @solicitud.TipoSolicitud }
    end

    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should show solicitud" do
    get :show, id: @solicitud
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @solicitud
    assert_response :success
  end

  test "should update solicitud" do
    patch :update, id: @solicitud, solicitud: { Arrendatario_id: @solicitud.Arrendatario_id, Calendario_id: @solicitud.Calendario_id, Calendario_id: @solicitud.Calendario_id, Estado: @solicitud.Estado, FechaEmision: @solicitud.FechaEmision, Propiedad_id: @solicitud.Propiedad_id, TipoSolicitud: @solicitud.TipoSolicitud }
    assert_redirected_to solicitud_path(assigns(:solicitud))
  end

  test "should destroy solicitud" do
    assert_difference('Solicitud.count', -1) do
      delete :destroy, id: @solicitud
    end

    assert_redirected_to solicituds_path
  end
end
