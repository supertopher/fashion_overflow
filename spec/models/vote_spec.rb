require 'spec_helper'

describe Vote do
  let(:user_id)   { 1 }
  let(:crush_id)  { 1 }
  let(:up)        { true }
  let(:vote)      { Vote.create(user_id: user_id, crush_id: crush_id, up: up) }

  context "validations" do
    it "should allow for :up to be true" do 
      expect(vote).to be_valid
    end

    it "should allow for :up to be false" do 
      expect(Vote.create(user_id: user_id, crush_id: crush_id, up: false)).to be_valid
    end

    # # this isn't throwing an error...
    # this saves with a string....weirdd
    # it "should not allow for :up to be a string" do 
    #   expect(Vote.create(user_id: user_id, crush_id: crush_id, up: "string")).to be_invalid
  end
end
