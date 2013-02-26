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

require 'spec_helper'

describe Prospect do
  pending "add some examples to (or delete) #{__FILE__}"
end
