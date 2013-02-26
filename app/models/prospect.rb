# == Schema Information
#
# Table name: prospects
#
#  id                :integer          not null, primary key
#  nome_contato      :string(255)
#  nome_empressa     :string(255)
#  telefone_empressa :string(255)
#  telefone_celular  :string(255)
#  endereco          :string(255)
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Prospect < ActiveRecord::Base
  attr_accessible :endereco, :nome_contato, :nome_empressa, :telefone_celular, :telefone_empressa

  validates :endereco,          presence: true
  validates :nome_contato,      presence: true
  validates :nome_empressa,     presence: true
  validates :telefone_celular,  presence: true
  validates :telefone_empressa, presence: true
end
