require 'test_helper'

class ProverbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @proverb = proverbs(:one)
  end

  test "should get index" do
    get proverbs_url
    assert_response :success
  end

  test "should get new" do
    get new_proverb_url
    assert_response :success
  end

  test "should create proverb" do
    assert_difference('Proverb.count') do
      post proverbs_url, params: { proverb: { active: @proverb.active, klingon: @proverb.klingon, translation: @proverb.translation } }
    end

    assert_redirected_to proverb_url(Proverb.last)
  end

  test "should show proverb" do
    get proverb_url(@proverb)
    assert_response :success
  end

  test "should get edit" do
    get edit_proverb_url(@proverb)
    assert_response :success
  end

  test "should update proverb" do
    patch proverb_url(@proverb), params: { proverb: { active: @proverb.active, klingon: @proverb.klingon, translation: @proverb.translation } }
    assert_redirected_to proverb_url(@proverb)
  end

  test "should destroy proverb" do
    assert_difference('Proverb.count', -1) do
      delete proverb_url(@proverb)
    end

    assert_redirected_to proverbs_url
  end
end
