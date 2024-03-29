require "spec_helper"

describe Array do
  context "#all_empty?" do
    it "returns true if all elements of the Array are empty" do
      expect(["", "", ""].all_empty?).to be_true
    end
    
    it "returns false if some of the Array elements are not empty" do
      expect(["", 1, "", Object.new, :a].all_empty?).to be_false
    end
    
    it "returns true for an empty Array" do
      expect([].all_empty?).to be_true
    end
  end
  
  context "#all_same?" do
    it "returns true if all elements of the Array are the same" do
      expect(["A", "A", "A"].all_same?).to be_true
    end
    
    it "returns false if some of the Array elements are not the same" do
      expect(["", 1, "", Object.new, :a].all_same?).to be_false
    end
    
    it "returns true for an empty Array" do
      expect([].all_same?).to be_true
    end
  end
  
  context "#any_empty?" do
    it "returns true if any of the Array elements are empty" do
      expect([1, [], 4, 5].any_empty?).to be_true
    end
    
    it "returns false if none of the elements are empty" do
      expect([1, 2, 3, 4].any_empty?).to be_false
    end
    
    it "returns true for an empty Array" do
      expect([].any_empty?).to be_true
    end
  end
  
  context "#none_empty?" do
    it "returns true if none of the Array elements are empty" do
      expect([1, 2, 3, 4].none_empty?).to be_true
    end
    
    it "returns false if at least one elements is empty" do
      expect([1, 2, "", 4].none_empty?).to be_true
    end
    
    it "returns false for an empty array" do
      expect([].none_empty?).to be_false
    end
  end
  
end