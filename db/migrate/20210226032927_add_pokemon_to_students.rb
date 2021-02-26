class AddPokemonToStudents < ActiveRecord::Migration[6.1]
  def change
    add_column :students, :pokemon, :string
  end
end
