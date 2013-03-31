class Tratamento < ActiveRecord::Base
  belongs_to :tipotratamento
  attr_accessible :metodo, :tipotratamento_id
end
