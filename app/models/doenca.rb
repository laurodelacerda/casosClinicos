class Doenca < ActiveRecord::Base
  belongs_to :tipodoenca
  attr_accessible :causa, :descricao, :historico, :nomebio, :nomepopular, :tipodoenca_id
end
