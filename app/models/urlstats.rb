class Urlstats < ActiveRecord::Base
	scope :fullurlid, -> (fullurlid) { where fullurlid: fullurlid }
end
