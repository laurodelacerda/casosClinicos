class Doencatratamento < ActiveRecord::Base
  belongs_to :doenca
  belongs_to :tratamento
  attr_accessible :title, :body, :doenca_id, :tratamento_id
end
