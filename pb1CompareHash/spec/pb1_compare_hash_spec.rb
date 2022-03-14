require "pb1_compare_hash"

# test_case_1
describe "case 1 => two hashes are equal" do
  hash1 = {
    a: '1'
  }
  hash2 = {
    a: '1'
  }
   it "true" do
     expect(compare_hash(hash1, hash2)).to eq(true)
   end
end

# test_case_2
describe "case 2 => two hashes are not equal" do
  hash1 = {
    a: '1'
  }
  hash2 = {
    a: '2'
  }

   it "false" do
     expect(compare_hash(hash1, hash2)).to eq({:a=>"2"})
   end
end

# test_case_3
describe "case 3 => two hashes are not equal" do
  hash1 = {
    a: '1'
  }
  hash2 = {

  }

   it "false" do
     expect(compare_hash(hash1, hash2)).to eq({:a=>"1"})
   end
end

# test_case_4
describe "case 4 => two hashes are not equal" do
  hash1 = {
    a: '1',
    b: '1',
    c: true,
    hash: {
      q: 1
    }
  }
  hash2 = {
    b: '2',
    c: '3',
    a: [1,2,3],
    num: 2,
    art: false
  }

   it "false" do
     expect(compare_hash(hash1, hash2)).to eq({:hash=>{:q=>1}, :num=>2, :art=>false, :a=>[1, 2, 3], :b=>"2", :c=>"3"})
   end
end
