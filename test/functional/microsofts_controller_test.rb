require 'test_helper'

class MicrosoftsControllerTest < ActionController::TestCase
  setup do
    @microsoft = microsofts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:microsofts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create microsoft" do
    assert_difference('Microsoft.count') do
      post :create, microsoft: @microsoft.attributes
    end

    assert_redirected_to microsoft_path(assigns(:microsoft))
  end

  test "should show microsoft" do
    get :show, id: @microsoft
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @microsoft
    assert_response :success
  end

  test "should update microsoft" do
    put :update, id: @microsoft, microsoft: @microsoft.attributes
    assert_redirected_to microsoft_path(assigns(:microsoft))
  end

  test "should destroy microsoft" do
    assert_difference('Microsoft.count', -1) do
      delete :destroy, id: @microsoft
    end

    assert_redirected_to microsofts_path
  end
end
