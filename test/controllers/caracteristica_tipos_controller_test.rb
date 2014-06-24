require 'test_helper'

class CaracteristicaTiposControllerTest < ActionController::TestCase
  setup do
    @caracteristica_tipo = caracteristica_tipos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:caracteristica_tipos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caracteristica_tipo" do
    assert_difference('CaracteristicaTipo.count') do
      post :create, caracteristica_tipo: { Caracteristica_id: @caracteristica_tipo.Caracteristica_id, TipoPropiedad_id: @caracteristica_tipo.TipoPropiedad_id }
    end

    assert_redirected_to caracteristica_tipo_path(assigns(:caracteristica_tipo))
  end

  test "should show caracteristica_tipo" do
    get :show, id: @caracteristica_tipo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caracteristica_tipo
    assert_response :success
  end

  test "should update caracteristica_tipo" do
    patch :update, id: @caracteristica_tipo, caracteristica_tipo: { Caracteristica_id: @caracteristica_tipo.Caracteristica_id, TipoPropiedad_id: @caracteristica_tipo.TipoPropiedad_id }
    assert_redirected_to caracteristica_tipo_path(assigns(:caracteristica_tipo))
  end

  test "should destroy caracteristica_tipo" do
    assert_difference('CaracteristicaTipo.count', -1) do
      delete :destroy, id: @caracteristica_tipo
    end

    assert_redirected_to caracteristica_tipos_path
  end
end
