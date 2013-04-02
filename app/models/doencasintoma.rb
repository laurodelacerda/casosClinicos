class Doencasintoma < ActiveRecord::Base
  belongs_to :doenca
  belongs_to :sintoma
  attr_accessible :title, :body, :doenca_id, :sintoma_id
end
