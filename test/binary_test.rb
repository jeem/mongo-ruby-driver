# encoding:utf-8
require 'test/test_helper'

class BinaryTest < Test::Unit::TestCase
  context "Inspecting" do
    setup do
      @data = ("THIS IS BINARY " * 50).unpack("c*")
    end

    should "not display actual data" do
      binary = Mongo::Binary.new(@data)
      assert_equal "<Mongo::Binary:#{binary.object_id}>", binary.inspect
    end
  end
end