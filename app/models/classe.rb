class Classe < ActiveRecord::Base
	has_many :users
	validates_presence_of :name, message: "Le nom de la classe ne doit pas être vide"
	validates_uniqueness_of :name, scope: :name, message: "Nom de classe déjà utilisé"
end
