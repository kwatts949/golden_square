require "password_checker"
RSpec.describe PasswordChecker do
    it "counts the number of characters" do
        password = PasswordChecker.new
        expect { password.check("four") }.to raise_error "Invalid password, must be 8+ characters."
    end
end