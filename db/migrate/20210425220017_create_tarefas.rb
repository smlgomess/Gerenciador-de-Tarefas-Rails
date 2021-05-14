class CreateTarefas < ActiveRecord::Migration[6.1]
  def change
    create_table :tarefas do |t|
      t.string :titulo
      t.string :status
      t.text :descricao
      
      t.index :titulo, unique: true

      t.timestamps
    end
  end
end
