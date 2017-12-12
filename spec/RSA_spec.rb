require_relative '../lib/RSA.rb'


RSpec.describe 'RSA' do

    message = "Hello"
    rsa = RSA.new(3233,17,413)
    
     it "if correct n" do
		expect(rsa.n).to eq(3233)
	end
	
	 it "if correct e" do
		expect(rsa.e).to eq(17)
	end
	
	 it "if correct d" do
		expect(rsa.d).to eq(413)
	end
	
	 it "if correct d" do
		expect(rsa.decrypt(rsa.encrypt(message))).to eq(message)
	end
    
end 
