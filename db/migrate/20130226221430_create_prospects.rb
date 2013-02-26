class CreateProspects < ActiveRecord::Migration
  def change
    create_table :prospects do |t|
      t.string :nome_contato
      t.string :nome_empressa
      t.string :telefone_empressa
      t.string :telefone_celular
      t.string :endereco

      t.timestamps
    end
  end
end
