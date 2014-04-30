require 'test_helper'

class ImagenesControllerTest < ActionController::TestCase
  setup do
    @imagene = imagenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:imagenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create imagene" do
    assert_difference('Imagene.count') do
      post :create, imagene: { description: @imagene.description, texto: @imagene.texto }
    end

    assert_redirected_to imagene_path(assigns(:imagene))
  end

  test "should show imagene" do
    get :show, id: @imagene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @imagene
    assert_response :success
  end

  test "should update imagene" do
    patch :update, id: @imagene, imagene: { description: @imagene.description, texto: @imagene.texto }
    assert_redirected_to imagene_path(assigns(:imagene))
  end

  test "should destroy imagene" do
    assert_difference('Imagene.count', -1) do
      delete :destroy, id: @imagene
    end

    assert_redirected_to imagenes_path
  end
end
