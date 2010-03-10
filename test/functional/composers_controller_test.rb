require 'test_helper'

class ComposersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:composers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create composer" do
    assert_difference('Composer.count') do
      post :create, :composer => { }
    end

    assert_redirected_to composer_path(assigns(:composer))
  end

  test "should show composer" do
    get :show, :id => composers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => composers(:one).to_param
    assert_response :success
  end

  test "should update composer" do
    put :update, :id => composers(:one).to_param, :composer => { }
    assert_redirected_to composer_path(assigns(:composer))
  end

  test "should destroy composer" do
    assert_difference('Composer.count', -1) do
      delete :destroy, :id => composers(:one).to_param
    end

    assert_redirected_to composers_path
  end
end
