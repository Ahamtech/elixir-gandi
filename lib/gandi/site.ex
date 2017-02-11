defmodule Gandi.Site do
	import Gandi

	def site_list() do
		Gandi.custom_request("site.list")
	end
end