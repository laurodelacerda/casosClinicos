class Doencaprevencao < ActiveRecord::Base
  belongs_to :doenca
  belongs_to :prevencao
  attr_accessible :title, :body, :doenca_id, :prevencao_id
end
