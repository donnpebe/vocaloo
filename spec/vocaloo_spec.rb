require 'spec_helper'

describe Vocaloo do
  let(:plain_string) { "GOal!" }
  let(:hyperbolize_string) { "GOOOaaal!" }
  let(:a4_hyperbolize_string) { "GOOOOaaaal!" }
  let(:dramatize_string) { "GOal!!!!" }
  let(:a4_dramatize_string) { "GOal!!!!!" } 
  let(:stringosaur_string) { "GOawrl!" }
  let(:duplicate_vowels) { "GOOOGLE" }
  let(:stringosaur_duplicate_vowels) { "GOOOWRGLEWR" } 

  describe '::hyperbolize' do
    it 'should return a string with double vowels then before' do
      subject.hyperbolize(plain_string).should == hyperbolize_string
    end
  end

  describe '::hyperbolize(plain_string, { :length => 4 }' do
    it 'should return a string with quadruple vowels then before' do
      subject.hyperbolize(plain_string, { :length => 4 }).should == a4_hyperbolize_string
    end
  end

  describe '::dramatize' do
    it "should return a string that adds with triple '!'" do
      subject.dramatize(plain_string).should == dramatize_string
    end
  end

  describe '::dramatize(plain_string, { :length => 4 }' do
    it "should return a string that adds with quadruple '!'" do
      subject.dramatize(plain_string, { :length => 4 }).should == a4_dramatize_string
    end
  end

  describe '::stringosaur' do
    it "should return a string that adds dinosaurs lingo" do
      subject.stringosaur(plain_string).should == stringosaur_string
    end
  end

  describe '::stringosaur' do
    it "should only apply the transformation in the last sequence vocals" do
      duplicate_vowels.stringosaur.should == stringosaur_duplicate_vowels
    end
  end

  describe '.In String instance' do
    describe '#hyperbolize' do
      it 'should respond to hyperbolize' do
        plain_string.should be_respond_to(:hyperbolize)
      end
      it 'should return hyperbolize string' do
        plain_string.hyperbolize.should == hyperbolize_string
      end
    end

    describe '#dramatize' do
      it 'should respond to dramatize' do
        plain_string.should be_respond_to(:dramatize)
      end
      it 'should return dramatize string' do
        plain_string.dramatize.should == dramatize_string
      end
    end

    describe '#stringosaur' do
      it 'should respond to stringosaur' do
        plain_string.should be_respond_to(:stringosaur)
      end
      it 'should return stringosaur string' do
        plain_string.stringosaur.should == stringosaur_string
      end
    end
  end
end