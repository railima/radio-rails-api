class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.text :conteudo
      t.datetime :publicado_em
      t.references :admin_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
