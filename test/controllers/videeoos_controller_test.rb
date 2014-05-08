require 'test_helper'

class VideeoosControllerTest < ActionController::TestCase
  setup do
    @videeoo = videeoos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videeoos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videeoo" do
    assert_difference('Videeoo.count') do
      post :create, videeoo: { Descripcion: @videeoo.Descripcion, Subido_por: @videeoo.Subido_por, Titulo: @videeoo.Titulo, Url: @videeoo.Url }
    end

    assert_redirected_to videeoo_path(assigns(:videeoo))
  end

  test "should show videeoo" do
    get :show, id: @videeoo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videeoo
    assert_response :success
  end

  test "should update videeoo" do
    patch :update, id: @videeoo, videeoo: { Descripcion: @videeoo.Descripcion, Subido_por: @videeoo.Subido_por, Titulo: @videeoo.Titulo, Url: @videeoo.Url }
    assert_redirected_to videeoo_path(assigns(:videeoo))
  end

  test "should destroy videeoo" do
    assert_difference('Videeoo.count', -1) do
      delete :destroy, id: @videeoo
    end

    assert_redirected_to videeoos_path
  end
end
