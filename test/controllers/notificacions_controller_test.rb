require 'test_helper'

class NotificacionsControllerTest < ActionController::TestCase
  setup do
    @notificacion = notificacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:notificacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create notificacion" do
    assert_difference('Notificacion.count') do
      post :create, notificacion: { DescripcionNotificacion: @notificacion.DescripcionNotificacion, Redireccion: @notificacion.Redireccion, Usuario_id: @notificacion.Usuario_id, Visualizado: @notificacion.Visualizado }
    end

    assert_redirected_to notificacion_path(assigns(:notificacion))
  end

  test "should show notificacion" do
    get :show, id: @notificacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @notificacion
    assert_response :success
  end

  test "should update notificacion" do
    patch :update, id: @notificacion, notificacion: { DescripcionNotificacion: @notificacion.DescripcionNotificacion, Redireccion: @notificacion.Redireccion, Usuario_id: @notificacion.Usuario_id, Visualizado: @notificacion.Visualizado }
    assert_redirected_to notificacion_path(assigns(:notificacion))
  end

  test "should destroy notificacion" do
    assert_difference('Notificacion.count', -1) do
      delete :destroy, id: @notificacion
    end

    assert_redirected_to notificacions_path
  end
end
