require 'test_helper'

class QueuEsControllerTest < ActionController::TestCase
  setup do
    @queu_e = queu_es(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:queu_es)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create queu_e" do
    assert_difference('QueuE.count') do
      post :create, queu_e: { date: @queu_e.date, room_id: @queu_e.room_id, time: @queu_e.time }
    end

    assert_redirected_to queu_e_path(assigns(:queu_e))
  end

  test "should show queu_e" do
    get :show, id: @queu_e
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @queu_e
    assert_response :success
  end

  test "should update queu_e" do
    patch :update, id: @queu_e, queu_e: { date: @queu_e.date, room_id: @queu_e.room_id, time: @queu_e.time }
    assert_redirected_to queu_e_path(assigns(:queu_e))
  end

  test "should destroy queu_e" do
    assert_difference('QueuE.count', -1) do
      delete :destroy, id: @queu_e
    end

    assert_redirected_to queu_es_path
  end
end
