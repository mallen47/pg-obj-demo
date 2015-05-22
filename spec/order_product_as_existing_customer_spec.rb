require 'csv'
require 'require_all'
require_all 'pages/'

context 'complete order as an existing customer' do

  describe 'login, shop, purchase' do

    it 'completes an order' do
      Home.new
      Home.sign_in
      Login.login_as_existing_user
      SiteNav.select_storage
      Category.select_product_category(:crates)
      Product.select_product(:authentic_dairy_crate)
      Details.add_to_cart(1, '280010')
      CheckoutModal.continue
      Cart.checkout
      ShippingAddress.enter_shipping_address
      ShippingMethod.submit_contact_phone
      Billing.payment_method_credit
      Billing.address_same_as_shipping
      # Billing.place_order
      # expect(Confirmation.order_number.is_displayed?).to be true
    end
  end
end



