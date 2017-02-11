defmodule Gandi.Domain do
	import Gandi

	def info(hostname) do
		Gandi.custom_request("domain.info",[hostname])
	end

	def host_list(hostname) do
		Gandi.custom_request("domain.host.list",[hostname])
	end

	def domain_host_count(hostname) do
		Gandi.custom_request("domain.host.count",[hostname])
	end

	def host_info(hostname) do
		Gandi.custom_request("domain.host.info",[hostname])
	end
	
	# domainweb redirection
	def webdir_list(hostname) do
		Gandi.custom_request("domain.webredir.list",[hostname])
	end

	def webdir_count(hostname) do
		Gandi.custom_request("domain.webredir.count",[hostname])
	end

	def webdir_info(hostname) do
		Gandi.custom_request("domain.webredir.info",[hostname])
	end

	# domain mailbox 
	def mailbox_list(hostname) do
		Gandi.custom_request("domain.mailbox.list",[hostname])
	end

	def mailbox_count(hostname) do
		Gandi.custom_request("domain.mailbox.count",[hostname])
	end

	def mailbox_info(hostname,account) do
		Gandi.custom_request("domain.mailbox.info",[hostname,account])
	end


	# forwarding
	def forward_list(hostname) do
		Gandi.custom_request("domain.forward.list",[hostname])
	end

	def forward_count(hostname) do
		Gandi.custom_request("domain.forward.count",[hostname])
	end

	# update domain name servers
	def update_name_servers(hostname,[name_server]) do
		Gandi.custom_request("domain.nameservers.set",[hostname,name_server])
	end

	def lock_name_servers(hostname) do
		Gandi.custom_request("domain.status.lock",[hostname])
	end

	def unlock_name_servers(hostname) do
		Gandi.custom_request("domain.status.unlock",[hostname])
	end

	# managing domain host

	def host_create(hostname,[create]) do
		Gandi.custom_request("domain.host.create",[hostname,create])
	end

	def host_delete(hostname) do
		Gandi.custom_request("domain.host.delete",[hostname])
	end

	# managing domain mailboxes
	def mailbox_delete(hostname,account) do
		Gandi.custom_request("domain.mailbox.delete",[hostname,account])
	end

	def mailbox_alias(hostname,account,alias_name) do
		Gandi.custom_request("domain.mailbox.aliases.set",[hostname,account,[alias_name]])
	end

	def mailbox_create(hostname,account,pwd) do
		Gandi.custom_request("domain.mailbox.create",[hostname,account,%{'password': "#{pwd}"}])
	end

	#managing domain forwards
	def domain_forward_create(hostname,account,email) do
		Gandi.custom_request("domain.forward.create",[hostname,account,%{'destinations': "#{email}"}])
	end

	def domain_forward_update(hostname,account,current,update) do
		Gandi.custom_request("domain.forward.update",[hostname,account,%{'destinations': ["#{current}","#{update}"]}])
	end
	
	def domain_available(hostname) do
		Gandi.custom_request("domain.available",[hostname])
	end

end