require 'rails_helper'

RSpec.describe User, type: :features do
  before :each do
    @user = User.new(name: 'collins')
  end

  subject { @user }
  it { should respond_to(:name) }
  it { should be_valid }

  describe 'when  name is not present' do
    before { @user.name = ' ' }
    it { should_not be_valid }
  end

  describe 'when name is short then 3 characters' do
    before { @user.name = 'jd' }
    it { should_not be_valid }
  end
  describe 'when a name is too long' do
    before { @user.name = 'a' * 30 }
    it { should_not be_valid }
  end

  describe 'when name is taken' do
    before do
      same_user_name = @user.dup
      same_user_name.save
    end
    it { should_not be_valid }
  end
end
