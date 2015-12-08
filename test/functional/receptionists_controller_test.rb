require 'test_helper'

class ReceptionistsControllerTest < ActionController::TestCase
  setup do
    @receptionist = receptionists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:receptionists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create receptionist" do
    assert_difference('Receptionist.count') do
      post :create, receptionist: { email: @receptionist.email, name: @receptionist.name }
    end

    assert_redirected_to receptionist_path(assigns(:receptionist))
  end

  test "should show receptionist" do
    get :show, id: @receptionist
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @receptionist
    assert_response :success
  end

  test "should update receptionist" do
    put :update, id: @receptionist, receptionist: { email: @receptionist.email, name: @receptionist.name }
    assert_redirected_to receptionist_path(assigns(:receptionist))
  end

  test "should destroy receptionist" do
    assert_difference('Receptionist.count', -1) do
      delete :destroy, id: @receptionist
    end

    assert_redirected_to receptionists_path
  end
end
