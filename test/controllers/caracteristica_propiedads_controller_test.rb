require 'test_helper'

class CaracteristicaPropiedadsControllerTest < ActionController::TestCase
  setup do
    @caracteristica_propiedad = caracteristica_propiedads(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caracteristica_propiedads)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caracteristica_propiedad" do
    assert_difference('CaracteristicaPropiedad.count') do
      post :create, caracteristica_propiedad: { Caracteristica_id: @caracteristica_propiedad.Caracteristica_id, Propiedad_id: @caracteristica_propiedad.Propiedad_id, ValorCaracteristica: @caracteristica_propiedad.ValorCaracteristica }
    end

    assert_redirected_to caracteristica_propiedad_path(assigns(:caracteristica_propiedad))
  end

  test "should show caracteristica_propiedad" do
    get :show, id: @caracteristica_propiedad
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caracteristica_propiedad
    assert_response :success
  end

  test "should update caracteristica_propiedad" do
    patch :update, id: @caracteristica_propiedad, caracteristica_propiedad: { Caracteristica_id: @caracteristica_propiedad.Caracteristica_id, Propiedad_id: @caracteristica_propiedad.Propiedad_id, ValorCaracteristica: @caracteristica_propiedad.ValorCaracteristica }
    assert_redirected_to caracteristica_propiedad_path(assigns(:caracteristica_propiedad))
  end

  test "should destroy caracteristica_propiedad" do
    assert_difference('CaracteristicaPropiedad.count', -1) do
      delete :destroy, id: @caracteristica_propiedad
    end

    assert_redirected_to caracteristica_propiedads_path
  end
end
