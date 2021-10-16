# frozen_string_literal: true

require 'test_helper'

class ShoppingListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shopping_list = shopping_lists(:one)
  end

  test 'should get index' do
    get shopping_lists_url, as: :json
    assert_response :success
  end

  test 'should create shopping_list' do
    assert_difference('ShoppingList.count') do
      post shopping_lists_url,
           params: { shopping_list: { itens: @shopping_list.itens, user_id: @shopping_list.user_id } }, as: :json
    end

    assert_response 201
  end

  test 'should show shopping_list' do
    get shopping_list_url(@shopping_list), as: :json
    assert_response :success
  end

  test 'should update shopping_list' do
    patch shopping_list_url(@shopping_list),
          params: { shopping_list: { itens: @shopping_list.itens, user_id: @shopping_list.user_id } }, as: :json
    assert_response 200
  end

  test 'should destroy shopping_list' do
    assert_difference('ShoppingList.count', -1) do
      delete shopping_list_url(@shopping_list), as: :json
    end

    assert_response 204
  end
end
