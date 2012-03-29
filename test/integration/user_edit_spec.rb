require 'integration_helper'

class UserTest < ActionDispatch::IntegrationTest

  setup do
    @user = FactoryGirl.create(:user, { email: 'abc@example.com'})
  end

  teardown do
    DatabaseCleaner.clean
  end

  test 'Edit sections' do
    sign_in(@user)
    visit new_user_business_path(@user)
    fill_in_biz_reg
    click_on 'Submit'
    click_on 'Submit'
    click_on 'Submit or Skip'
    click_on 'Submit or Skip'
    click_on 'Confirm'
    click_on 'My Profile'
    click_on 'Edit Business Details'
  end
end