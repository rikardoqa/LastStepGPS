class Favorito < ActiveRecord::Base
  belongs_to :posicionamento
  belongs_to :usuario
end
