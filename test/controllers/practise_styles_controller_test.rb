require "test_helper"

class PractiseStylesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @practise_style = practise_styles(:one)
  end

  test "should get index" do
    get practise_styles_url
    assert_response :success
  end

  test "should get new" do
    get new_practise_style_url
    assert_response :success
  end

  test "should create practise_style" do
    assert_difference("PractiseStyle.count") do
      post practise_styles_url, params: { practise_style: { description: @practise_style.description, name: @practise_style.name } }
    end

    assert_redirected_to practise_style_url(PractiseStyle.last)
  end

  test "should show practise_style" do
    get practise_style_url(@practise_style)
    assert_response :success
  end

  test "should get edit" do
    get edit_practise_style_url(@practise_style)
    assert_response :success
  end

  test "should update practise_style" do
    patch practise_style_url(@practise_style), params: { practise_style: { description: @practise_style.description, name: @practise_style.name } }
    assert_redirected_to practise_style_url(@practise_style)
  end

  test "should destroy practise_style" do
    assert_difference("PractiseStyle.count", -1) do
      delete practise_style_url(@practise_style)
    end

    assert_redirected_to practise_styles_url
  end
end
