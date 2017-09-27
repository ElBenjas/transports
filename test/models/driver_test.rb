require 'test_helper'

class DriverTest < ActiveSupport::TestCase

  test 'driver valid' do
    @driver = drivers(:valid)
    assert @driver.valid?
  end

  test 'driver without name' do
    @driver = drivers(:valid)
    @driver.name = nil
    assert_not @driver.save
  end

  test 'driver without address' do
    @driver = drivers(:valid)
    @driver.address = nil
    assert_not @driver.save
  end

  test 'driver with contact_num nil' do
    @driver = drivers(:not_valid_contact_num)
    assert_not @driver.save
  end

  test 'driver without driver license' do
    @driver = drivers(:valid)
    @driver.driver_license = nil
    assert_not @driver.save
  end

  test 'driver without ine license' do
    @driver = drivers(:valid)
    @driver.ine = nil
    assert_not @driver.save
  end

end
