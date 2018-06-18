require 'test_helper'

class CafsControllerTest < ActionController::TestCase
  setup do
    @caf = cafs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cafs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create caf" do
    assert_difference('Caf.count') do
      post :create, caf: { senha: @caf.senha, usuario: @caf.usuario }
    end

    assert_redirected_to caf_path(assigns(:caf))
  end

  test "should show caf" do
    get :show, id: @caf
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @caf
    assert_response :success
  end

  test "should update caf" do
    patch :update, id: @caf, caf: { senha: @caf.senha, usuario: @caf.usuario }
    assert_redirected_to caf_path(assigns(:caf))
  end

  test "should destroy caf" do
    assert_difference('Caf.count', -1) do
      delete :destroy, id: @caf
    end

    assert_redirected_to cafs_path
  end
end
