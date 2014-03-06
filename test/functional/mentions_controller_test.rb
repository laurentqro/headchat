require 'test_helper'

class MentionsControllerTest < ActionController::TestCase
  setup do
    @mention = mentions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:mentions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create mention" do
    assert_difference('Mention.count') do
      post :create, mention: { message_id: @mention.message_id, tagged_user_id: @mention.tagged_user_id, user_id: @mention.user_id }
    end

    assert_redirected_to mention_path(assigns(:mention))
  end

  test "should show mention" do
    get :show, id: @mention
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @mention
    assert_response :success
  end

  test "should update mention" do
    put :update, id: @mention, mention: { message_id: @mention.message_id, tagged_user_id: @mention.tagged_user_id, user_id: @mention.user_id }
    assert_redirected_to mention_path(assigns(:mention))
  end

  test "should destroy mention" do
    assert_difference('Mention.count', -1) do
      delete :destroy, id: @mention
    end

    assert_redirected_to mentions_path
  end
end
