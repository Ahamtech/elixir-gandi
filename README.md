# Gandi
Elixir Wrapper for Gandi infrastructure.


##
```
iex(1)> Gandi.Domain.info("example.com")
%XMLRPC.MethodResponse{param: %{"authinfo" => "xyz",
   "authinfo_expiration_date" => %XMLRPC.DateTime{raw: "20170630T18:29:54"},
   "autorenew" => nil, "can_tld_lock" => true,
   "contacts" => %{"admin" => %{"handle" => "HRXXXX-GANDI", "id" => 123456},
     "bill" => %{"handle" => "HRXXXX-GANDI", "id" => 123456},
     "owner" => %{"handle" => "HRXXXX-GANDI", "id" => 123456},
     "reseller" => nil,
     "tech" => %{"handle" => "HRXXXX-GANDI", "id" => 123456}},
   "date_created" => %XMLRPC.DateTime{raw: "20140717T12:10:36"},
   "date_delete" => %XMLRPC.DateTime{raw: "20170816T00:10:36"},
   "date_hold_begin" => %XMLRPC.DateTime{raw: "20170717T10:10:36"},
   "date_hold_end" => %XMLRPC.DateTime{raw: "20170816T10:10:36"},
   "date_pending_delete_end" => %XMLRPC.DateTime{raw: "20170920T10:10:36"},
   "date_registry_creation" => %XMLRPC.DateTime{raw: "20140717T10:10:36"},
   "date_registry_end" => %XMLRPC.DateTime{raw: "20170717T10:10:36"},
   "date_renew_begin" => %XMLRPC.DateTime{raw: "20120101T00:00:00"},
   "date_restore_end" => %XMLRPC.DateTime{raw: "20170915T10:10:36"},
   "date_updated" => %XMLRPC.DateTime{raw: "20161129T02:22:25"},
   "entity_id" => nil, "fqdn" => "example.com", "id" => 123456,
   "is_premium" => false,
   "nameservers" => ["roxy.ns.cloudflare.com", "theo.ns.cloudflare.com"],
   "services" => ["blog", "gandimail", "redirection"],
   "status" => ["serverTransferProhibited", "clientTransferProhibited"],
   "tags" => [], "tld" => "in", "zone_id" => nil}}


```
## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add gandi to your list of dependencies in `mix.exs`:

        def deps do
          [{:gandi, "~> 0.0.1"}]
        end

  2. Ensure gandi is started before your application:

        def application do
          [applications: [:gandi]]
        end

**TODO:**

Huge Documentation
Catalog API
Certificate API
Contact API
Hosting API
Notification API
Operation API
PaaS API
Security API
Site API

## License
Elixir-Gandi is Copyright © 2016 Ahamtech. It is free software, and may be redistributed under the terms specified in the LICENSE file.

## About Ahamtech

> Elixir-Gandi is maintained by Ahamtech. 

We love open source software, Erlang, Elixir, and Phoenix. See our other opensource projects, or hire our Elixir Phoenix development team to design, develop, and grow your product.