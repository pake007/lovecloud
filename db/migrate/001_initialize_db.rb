class InitializeDb < ActiveRecord::Migration
  def self.up
    create_table "posts" do |t|
      t.string   "title",                                                      :null => false
      t.string   "slug",                                                       :null => false
      t.text     "body",                                                       :null => false
      t.text     "body_html",                                                  :null => false
      t.string   "tag_list"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "posts", ["created_at"], :name => "index_posts_on_created_at"
    
    create_table "comments" do |t|
      t.integer  "post_id",                 :null => false
      t.string   "author",                  :null => false
      t.string   "author_url",              :null => false
      t.string   "author_email",            :null => false
      t.text     "body",                    :null => false
      t.text     "body_html",               :null => false
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "comments", ["post_id"], :name => "index_comments_on_post_id"
    add_index "comments", ["created_at"], :name => "index_comments_on_created_at"

    create_table "taggings" do |t|
      t.integer  "tag_id"
      t.integer  "taggable_id"
      t.datetime "created_at"
    end

    add_index "taggings", ["taggable_id"], :name => "index_taggings_on_taggable_id_and_taggable_type"
    add_index "taggings", ["tag_id"], :name => "index_taggings_on_tag_id"

    create_table "tags" do |t|
      t.string  "name"
      t.integer "taggings_count", :default => 0, :null => false
    end

    add_index "tags", ["name"], :name => "index_tags_on_name"
  end

  def self.down
    raise IrreversibleMigration
  end
end
