require 'test_helper'

class ArticleCategoryTest < ActiveSupport::TestCase

    def setup
        @article_category = ArticleCategory.new
    end

    test "article category should be valid" do 
        assert @article_category.valid?
    end
end