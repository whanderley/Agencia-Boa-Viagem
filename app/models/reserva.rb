class Reserva < ActiveRecord::Base
  belongs_to :cliente
  belongs_to :pacote
end
