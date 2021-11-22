require "application_system_test_case"

class AttackTreesTest < ApplicationSystemTestCase
  setup do
    @attack_tree = attack_trees(:one)
  end

  test "visiting the index" do
    visit attack_trees_url
    assert_selector "h1", text: "Attack Trees"
  end

  test "creating a Attack tree" do
    visit attack_trees_url
    click_on "New Attack Tree"

    fill_in "Content", with: @attack_tree.content
    click_on "Create Attack tree"

    assert_text "Attack tree was successfully created"
    click_on "Back"
  end

  test "updating a Attack tree" do
    visit attack_trees_url
    click_on "Edit", match: :first

    fill_in "Content", with: @attack_tree.content
    click_on "Update Attack tree"

    assert_text "Attack tree was successfully updated"
    click_on "Back"
  end

  test "destroying a Attack tree" do
    visit attack_trees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Attack tree was successfully destroyed"
  end
end
