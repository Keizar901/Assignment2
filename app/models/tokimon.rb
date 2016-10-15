class Tokimon < ApplicationRecord
	belongs_to :trainer

	def calculate_total
		if(self.fly.nil?)
			self.fly = 0
		end
		if(self.fight.nil?)
			self.fight = 0
		end
		if(self.water.nil?)
			self.water = 0
		end
		if(self.electric.nil?)
			self.electric = 0
		end
		if(self.ice.nil?)
			self.ice = 0
		end
		if(self.fire.nil?)
			self.fire = 0
		end

		self.total = (self.fly + self.fight + 
		self.fire + self.water + 
		self.electric + self.ice)

		return self.total
	end
end

