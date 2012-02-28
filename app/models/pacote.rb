class Pacote < ActiveRecord::Base
  belongs_to :hotel
  belongs_to :servico
end
