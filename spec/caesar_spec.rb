require "caesar"

describe CaesarCipher do
    describe "encrypt" do
        context "lowercase" do
            it "returns 'mjqqt'" do
                expect(CaesarCipher.encrypt("hello", 5)).to eql("mjqqt")
            end
        end
        
        context "uppercase" do
            it "returns 'IRR'" do
                expect(CaesarCipher.encrypt("FOO", 3)).to eql("IRR")
            end
        end
        
        context "wraps around" do
            it "returns 'bcDE'" do
                expect(CaesarCipher.encrypt("wxYZ", 5)).to eql("bcDE")
            end
        end

        context "ignore numbers" do
            it "returns 'def123'" do
                expect(CaesarCipher.encrypt("abc123", 3)).to eql("def123")
            end
        end

        context "multiple words" do
            it "returns 'Bmfy f xywnsl'" do
                expect(CaesarCipher.encrypt("What a string", 5)).to eql("Bmfy f xywnsl")
            end
        end

        context "key of 53" do
            it "returns 'bcd'" do
                expect(CaesarCipher.encrypt("abc", 53)).to eql("bcd")
            end
        end

        context "key of 0" do
            it "returns the same string" do
                expect(CaesarCipher.encrypt("abc", 0)).to eql("abc")
            end
        end

        context "key of -3" do
            it "returns 'xyz'" do
                expect(CaesarCipher.encrypt("abc", -3)).to eql("xyz")
            end
        end
    end
end
