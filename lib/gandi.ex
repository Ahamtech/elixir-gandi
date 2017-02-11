defmodule Gandi do
	
	def versioninfo() do
		custom_request("version.info",[])
	end

	def custom_request(method) do
		request( method, addapikey() )
	end

	def custom_request(method,params) do
		request( method, addapikey(params) )
	end

	defp addapikey() do
		[Application.get_env(:gandi, :key)]
	end
	defp addapikey(params) do
		[Application.get_env(:gandi, :key)] ++ params
	end

	defp xmlgenerate(method,params)do
		%XMLRPC.MethodCall{method_name: method, params: params}
		|> XMLRPC.encode!
	end

	defp request( method, params) do
		HTTPoison.post!("https://rpc.gandi.net/xmlrpc/",xmlgenerate(method,params),[ {"Content-Type", "text/xml"}],[])
		|> normalize_response
	end

	defp normalize_response(response) do
		case response.status_code do
			200 ->
				XMLRPC.decode!(response.body)
			_ ->
				{:error, response.status_code}
		end
	end
end