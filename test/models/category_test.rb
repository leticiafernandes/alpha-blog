require 'test_helper'

class CategoryTest < ActiveSupport::TestCase

    def setup
        @category = Category.new(name: "sports")
    end

    #check if model exists
    test "category should be valid" do
        assert @category.valid?
    end

    test "name should be present" do
        @category.name = " "
        assert_not @category.valid?
    end

    test "name should be unique" do
        @category.save
        category_two = Category.new(name: "sports")
        assert_not category_two.valid?
    end

    test "name should not be too long" do
        @category.name = "test" * 20
        assert_not @category.valid?
    end

    test "name should not be too short" do
        @category.name = "a"
        assert_not @category.valid?
    end
end