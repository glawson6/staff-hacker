require 'rails_helper'

describe User do
  let(:user) { User.new(name: Raven Covington, email: 'rcov00@gmail.com', 
                        password: '12345', password_confirmation: '12345') }

  subject { user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }
  it { should respond_to(:password) }
  it { should respond_to(:password_confirmation) }
  it { should respond_to(:password_digest) }
  it { should respond_to(:remember_token) }
  it { should respond_to(:authenticate) }

  describe 'validations' do 
    describe 'name' do 
      context 'not present' do
        it 'is valid' do
          user.name = ''
          expect(user).to_not be_valid
        end
      end
  describe 'validations' do 
    describe 'email' do 
     context 'not present' do 
      it 'is invalid' do 
        user.email = ''
        expect(user).to_not be_valid
      end
    end
         context 'too long' do 
        it 'is invalid' do 
          user.email = 'a' * 255
          expect(user).to_not be_valid
        end
      end

      context 'not unique' do 
        before do 
          user_with_same_email = user.dup
          user_with_same_email.save

          it { should_not be_valid }
        end
      end

      context 'valid format' do 
        it 'is valid' do 
          valid_addresses = %w{ rcov00@gmail.com R_D-CO@f.b.org
                                raven.covington@raven.co a+b@baz.cn a@b.co }
          valid_addresses.each do |address|
            user.email = address
            expect(user).to be_valid
          end
        end
      end

      context 'invalid format' do 
        it 'is invalid' do 
          invalid_addresses = %w{ raven@gmail,com raven_at_gmail.org 
                                  example.raven@foo. raven@bar_baz.com 
                                  raven@bar+baz.com raven@bar..com }
          invalid_addresses.each do |address|
            user.email = address
            expect(user).to_not be_valid
          end
        end
      end
    end
  end
end

