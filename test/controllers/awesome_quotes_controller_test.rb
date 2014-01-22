require 'test_helper'

class AwesomeQuotesControllerTest < ActionController::TestCase
  setup do
    @awesome_quote = awesome_quotes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:awesome_quotes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create awesome_quote" do
    assert_difference('AwesomeQuote.count') do
      post :create, awesome_quote: { partaker_id: @awesome_quote.partaker_id, quote: @awesome_quote.quote }
    end

    assert_redirected_to awesome_quote_path(assigns(:awesome_quote))
  end

  test "should show awesome_quote" do
    get :show, id: @awesome_quote
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @awesome_quote
    assert_response :success
  end

  test "should update awesome_quote" do
    patch :update, id: @awesome_quote, awesome_quote: { partaker_id: @awesome_quote.partaker_id, quote: @awesome_quote.quote }
    assert_redirected_to awesome_quote_path(assigns(:awesome_quote))
  end

  test "should destroy awesome_quote" do
    assert_difference('AwesomeQuote.count', -1) do
      delete :destroy, id: @awesome_quote
    end

    assert_redirected_to awesome_quotes_path
  end
end
