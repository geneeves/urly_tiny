require 'spec_helper'

describe User do
  it { should have_secure_password }
  it { should have_many(:urls) }

  it "has a unique email" do
    User.create(:password => 'whatever', :password_confirmation => 'whatever')
    should validate_uniqueness_of(:email)
  end
end
