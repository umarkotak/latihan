require './soal7_4.rb'

RSpec.describe HelloWorld do
  describe "create_sentence" do
    it "return hello world" do
      hello_world = HelloWorld.new
      array = ["hello", "world"]
      expect(hello_world.create_sentence(array)).to eq("hello world")
    end
  end  
end