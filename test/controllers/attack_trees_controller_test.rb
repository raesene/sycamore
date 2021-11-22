require "test_helper"

class AttackTreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attack_tree = attack_trees(:one)
  end

  test "should get index" do
    get attack_trees_url
    assert_response :success
  end

  test "should get new" do
    get new_attack_tree_url
    assert_response :success
  end

  test "should create attack_tree" do
    assert_difference('AttackTree.count') do
      post attack_trees_url, params: { attack_tree: { content: @attack_tree.content } }
    end

    assert_redirected_to attack_tree_url(AttackTree.last)
  end

  test "should show attack_tree" do
    get attack_tree_url(@attack_tree)
    assert_response :success
  end

  test "should get edit" do
    get edit_attack_tree_url(@attack_tree)
    assert_response :success
  end

  test "should update attack_tree" do
    patch attack_tree_url(@attack_tree), params: { attack_tree: { content: @attack_tree.content } }
    assert_redirected_to attack_tree_url(@attack_tree)
  end

  test "should destroy attack_tree" do
    assert_difference('AttackTree.count', -1) do
      delete attack_tree_url(@attack_tree)
    end

    assert_redirected_to attack_trees_url
  end
end
