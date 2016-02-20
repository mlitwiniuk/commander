class CreateCommanderUploadedFiles < ActiveRecord::Migration
  def change
    create_table :commander_uploaded_files do |t|
      t.string :file, index: true

      t.timestamps null: false
    end
  end
end
