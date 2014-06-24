require 'test_helper'

class PropietariosControllerTest < ActionController::TestCase
  setup do
    @propietario = propietarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:propietarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create propietario" do
    assert_difference('Propietario.count') do
      post :create, propietario: { Usuario_id: @propietario.Usuario_id }
    end

    assert_redirected_to propietario_path(assigns(:propietario))
  end

  test "should show propietario" do
    get :show, id: @propietario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @propietario
    assert_response :success
  end

  test "should update propietario" do
    patch :update, id: @propietario, propietario: { Usuario_id: @propietario.Usuario_id }
    assert_redirected_to propietario_path(assigns(:propietario))
  end

  test "should destroy propietario" do
    assert_difference('Propietario.count', -1) do
      delete :destroy, id: @propietario
    end

    assert_redirected_to propietarios_path
  end
end
