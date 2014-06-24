require 'test_helper'

class TipoArriendosControllerTest < ActionController::TestCase
  setup do
    @tipo_arriendo = tipo_arriendos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_arriendos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_arriendo" do
    assert_difference('TipoArriendo.count') do
      post :create, tipo_arriendo: { Descripcion: @tipo_arriendo.Descripcion, NombreTipo: @tipo_arriendo.NombreTipo }
    end

    assert_redirected_to tipo_arriendo_path(assigns(:tipo_arriendo))
  end

  test "should show tipo_arriendo" do
    get :show, id: @tipo_arriendo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_arriendo
    assert_response :success
  end

  test "should update tipo_arriendo" do
    patch :update, id: @tipo_arriendo, tipo_arriendo: { Descripcion: @tipo_arriendo.Descripcion, NombreTipo: @tipo_arriendo.NombreTipo }
    assert_redirected_to tipo_arriendo_path(assigns(:tipo_arriendo))
  end

  test "should destroy tipo_arriendo" do
    assert_difference('TipoArriendo.count', -1) do
      delete :destroy, id: @tipo_arriendo
    end

    assert_redirected_to tipo_arriendos_path
  end
end
