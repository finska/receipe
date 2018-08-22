require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest
  test "should get recipe index" do
    get recipes_url
    assert_response :success
  end
  
  test "should get recipe listing" do
    get recipes_path
    assert_template 'recipes/index'
    assert_match recipes(:one).name, response.body
    assert_match recipes(:two).name, response.body
    assert_match recipes(:one).description, response.body
    assert_match recipes(:two).description, response.body
  end
  
  test "should show specific recipe" do
    get '/recipes/1'
    assert_match recipes(:one).name, response.body
    assert_match recipes(:one).description, response.body
  end
end
