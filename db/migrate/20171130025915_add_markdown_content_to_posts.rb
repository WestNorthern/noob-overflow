class AddMarkdownContentToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :markdown_content, :text
  end
end
