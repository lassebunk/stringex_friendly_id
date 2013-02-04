# encoding: utf-8
require 'test_helper'

class SlugTest < Test::Unit::TestCase
  def test_slug_generation
    {
      "it's nothing at all" => "its-nothing-at-all",
      "rock & roll" => "rock-and-roll",
      "$12 worth of Ruby power" => "12-dollars-worth-of-ruby-power",
      "10% off if you act now" => "10-percent-off-if-you-act-now",
      "tell your readers 你好" => "tell-your-readers-ni-hao"
    }.each do |title, slug|
      article = Article.create! :title => title
      assert_equal slug, article.slug
    end
  end
end