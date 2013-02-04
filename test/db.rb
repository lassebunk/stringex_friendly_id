require "active_record"

ActiveRecord::Base.establish_connection :adapter => "sqlite3", :database => ":memory:"

ActiveRecord::Migration.create_table :articles do |t|
  t.string :title
  t.string :slug
end

class Article < ActiveRecord::Base
  extend FriendlyId
  friendly_id :title, :use => :slugged
end