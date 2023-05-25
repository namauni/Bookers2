class RenameSbookNameColumnToBooks < ActiveRecord::Migration[6.1]
  def change
    rename_column :books, :sbook_name, :title
    rename_column :books, :caption, :body
  end
end
