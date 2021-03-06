require 'test_helper'

class PurchasesControllerTest < ActionController::TestCase
  setup do
    @purchase = purchases(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:purchases)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create purchase" do
    assert_difference('Purchase.count') do
      post :create, purchase: { card_number: @purchase.card_number, discount: @purchase.discount, member: @purchase.member, paid_amount: @purchase.paid_amount, pay_method: @purchase.pay_method, quantity: @purchase.quantity, sub_total: @purchase.sub_total, user_id: @purchase.user_id }
    end

    assert_redirected_to purchase_path(assigns(:purchase))
  end

  test "should show purchase" do
    get :show, id: @purchase
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @purchase
    assert_response :success
  end

  test "should update purchase" do
    patch :update, id: @purchase, purchase: { card_number: @purchase.card_number, discount: @purchase.discount, member: @purchase.member, paid_amount: @purchase.paid_amount, pay_method: @purchase.pay_method, quantity: @purchase.quantity, sub_total: @purchase.sub_total, user_id: @purchase.user_id }
    assert_redirected_to purchase_path(assigns(:purchase))
  end

  test "should destroy purchase" do
    assert_difference('Purchase.count', -1) do
      delete :destroy, id: @purchase
    end

    assert_redirected_to purchases_path
  end
end
