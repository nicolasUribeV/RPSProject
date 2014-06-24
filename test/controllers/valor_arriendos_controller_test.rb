require 'test_helper'

class ValorArriendosControllerTest < ActionController::TestCase
  setup do
    @valor_arriendo = valor_arriendos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:valor_arriendos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create valor_arriendo" do
    assert_difference('ValorArriendo.count') do
      post :create, valor_arriendo: { FechaInicioTemp: @valor_arriendo.FechaInicioTemp, FechaTerminoTemp: @valor_arriendo.FechaTerminoTemp, Propiedad_id: @valor_arriendo.Propiedad_id, Temporada: @valor_arriendo.Temporada, TipoArriendo_id: @valor_arriendo.TipoArriendo_id, ValorActivo: @valor_arriendo.ValorActivo, ValorDefinido: @valor_arriendo.ValorDefinido }
    end

    assert_redirected_to valor_arriendo_path(assigns(:valor_arriendo))
  end

  test "should show valor_arriendo" do
    get :show, id: @valor_arriendo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @valor_arriendo
    assert_response :success
  end

  test "should update valor_arriendo" do
    patch :update, id: @valor_arriendo, valor_arriendo: { FechaInicioTemp: @valor_arriendo.FechaInicioTemp, FechaTerminoTemp: @valor_arriendo.FechaTerminoTemp, Propiedad_id: @valor_arriendo.Propiedad_id, Temporada: @valor_arriendo.Temporada, TipoArriendo_id: @valor_arriendo.TipoArriendo_id, ValorActivo: @valor_arriendo.ValorActivo, ValorDefinido: @valor_arriendo.ValorDefinido }
    assert_redirected_to valor_arriendo_path(assigns(:valor_arriendo))
  end

  test "should destroy valor_arriendo" do
    assert_difference('ValorArriendo.count', -1) do
      delete :destroy, id: @valor_arriendo
    end

    assert_redirected_to valor_arriendos_path
  end
end
