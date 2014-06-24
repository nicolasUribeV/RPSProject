require 'test_helper'

class ServicioContratadosControllerTest < ActionController::TestCase
  setup do
    @servicio_contratado = servicio_contratados(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:servicio_contratados)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create servicio_contratado" do
    assert_difference('ServicioContratado.count') do
      post :create, servicio_contratado: { ContratoPropiedad_id: @servicio_contratado.ContratoPropiedad_id, Periocidad: @servicio_contratado.Periocidad, PrecioAcordado: @servicio_contratado.PrecioAcordado, ServicioActivo: @servicio_contratado.ServicioActivo, Servicio_id: @servicio_contratado.Servicio_id }
    end

    assert_redirected_to servicio_contratado_path(assigns(:servicio_contratado))
  end

  test "should show servicio_contratado" do
    get :show, id: @servicio_contratado
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @servicio_contratado
    assert_response :success
  end

  test "should update servicio_contratado" do
    patch :update, id: @servicio_contratado, servicio_contratado: { ContratoPropiedad_id: @servicio_contratado.ContratoPropiedad_id, Periocidad: @servicio_contratado.Periocidad, PrecioAcordado: @servicio_contratado.PrecioAcordado, ServicioActivo: @servicio_contratado.ServicioActivo, Servicio_id: @servicio_contratado.Servicio_id }
    assert_redirected_to servicio_contratado_path(assigns(:servicio_contratado))
  end

  test "should destroy servicio_contratado" do
    assert_difference('ServicioContratado.count', -1) do
      delete :destroy, id: @servicio_contratado
    end

    assert_redirected_to servicio_contratados_path
  end
end
