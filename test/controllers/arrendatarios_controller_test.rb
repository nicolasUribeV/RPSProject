require 'test_helper'

class ArrendatariosControllerTest < ActionController::TestCase
  setup do
    @arrendatario = arrendatarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:arrendatarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create arrendatario" do
    assert_difference('Arrendatario.count') do
      post :create, arrendatario: { Usuario_id: @arrendatario.Usuario_id }
    end

    assert_redirected_to arrendatario_path(assigns(:arrendatario))
  end

  test "should show arrendatario" do
    get :show, id: @arrendatario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @arrendatario
    assert_response :success
  end

  test "should update arrendatario" do
    patch :update, id: @arrendatario, arrendatario: { Usuario_id: @arrendatario.Usuario_id }
    assert_redirected_to arrendatario_path(assigns(:arrendatario))
  end

  test "should destroy arrendatario" do
    assert_difference('Arrendatario.count', -1) do
      delete :destroy, id: @arrendatario
    end

    assert_redirected_to arrendatarios_path
  end
end
