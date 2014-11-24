require './hipster'

require 'minitest/autorun'

# optional pretty output that reads like a specification
require "minitest/reporters"
Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new()

describe Hipster, "minitest syntax demo" do

  # runs codes before each test
  before do
    @hipster = Hipster.new
  end

  # define accessors - lazily runs code when its first used
  let(:hipster) do
    Hipster.new
  end

  # the hash is just a convention to denote its an instance method
  it "#define" do
    hipster.define.must_equal "you won't understand"
  end

  it "#walk?" do
    skip "I prefer to skip"
  end

  it "labels" do
    hipster.labels.must_be_empty
    # hipster.labels == []
  end

  describe "when asked about the font" do
    it "should be helvetica" do
      hipster.preferred_font.must_equal "helvetica"
    end
  end

  describe "when asked about mainstream" do
    it "won't be mainstream" do
      hipster.mainstream?.wont_equal true
    end
  end

end