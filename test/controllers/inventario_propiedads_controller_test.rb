require 'test_helper'

class InventarioPropiedadsControllerTest < ActionController::TestCase
  setup do
    @inventario_propiedad = inventario_propiedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inventario_propiedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inventario_propiedad" do
    assert_difference('InventarioPropiedad.count') do
      post :create, inventario_propiedad: { CantidadItem: @inventario_propiedad.CantidadItem, FechaInventario: @inventario_propiedad.FechaInventario, Item_id: @inventario_propiedad.Item_id, NumeracionInventario: @inventario_propiedad.NumeracionInventario, Propiedad_id: @inventario_propiedad.Propiedad_id }
    end

    assert_redirected_to inventario_propiedad_path(assigns(:inventario_propiedad))
  end

  test "should show inventario_propiedad" do
    get :show, id: @inventario_propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @inventario_propiedad
    assert_response :success
  end

  test "should update inventario_propiedad" do
    patch :update, id: @inventario_propiedad, inventario_propiedad: { CantidadItem: @inventario_propiedad.CantidadItem, FechaInventario: @inventario_propiedad.FechaInventario, Item_id: @inventario_propiedad.Item_id, NumeracionInventario: @inventario_propiedad.NumeracionInventario, Propiedad_id: @inventario_propiedad.Propiedad_id }
    assert_redirected_to inventario_propiedad_path(assigns(:inventario_propiedad))
  end

  test "should destroy inventario_propiedad" do
    assert_difference('InventarioPropiedad.count', -1) do
      delete :destroy, id: @inventario_propiedad
    end

    assert_redirected_to inventario_propiedads_path
  end
end
