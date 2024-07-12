# Quickstart

## Dependencies

This module requires API key to function. You may sign up for a free API key at <https://www.ip2location.io/pricing>.

Compilation
============
```bash

erlc ip2whois.erl
erlc test.erl

```

## Sample Codes

### Lookup Domain Information

You can lookup domain information as below:

```erlang
-module(test).
-export([testme/0]).

testme() ->
	APIKey = "YOUR_API_KEY",
	
	ip2whois:new(APIKey),
	Domain = "locaproxy.com",
	Result = ip2whois:lookupdomainwhois(Domain),
	case Result of
		{error, Reason2} ->
			io:format("Error: ~p~n", [Reason2]);
		_ ->
			io:format("domain: ~p~n", [maps:get(<<"domain">>, Result)]),
			io:format("domain_id: ~p~n", [maps:get(<<"domain_id">>, Result)]),
			io:format("status: ~p~n", [maps:get(<<"status">>, Result)]),
			io:format("create_date: ~p~n", [maps:get(<<"create_date">>, Result)]),
			io:format("update_date: ~p~n", [maps:get(<<"update_date">>, Result)]),
			io:format("expire_date: ~p~n", [maps:get(<<"expire_date">>, Result)]),
			io:format("domain_age: ~p~n", [maps:get(<<"domain_age">>, Result)]),
			io:format("whois_server: ~p~n", [maps:get(<<"whois_server">>, Result)]),
			io:format("nameservers: ~p~n", [maps:get(<<"nameservers">>, Result)]),
			
			Registrar = maps:get(<<"registrar">>, Result),
			io:format("registrar => iana_id: ~p~n", [maps:get(<<"iana_id">>, Registrar)]),
			io:format("registrar => name: ~p~n", [maps:get(<<"name">>, Registrar)]),
			io:format("registrar => url: ~p~n", [maps:get(<<"url">>, Registrar)]),
			
			Registrant = maps:get(<<"registrant">>, Result),
			io:format("registrant => name: ~p~n", [maps:get(<<"name">>, Registrant)]),
			io:format("registrant => organization: ~p~n", [maps:get(<<"organization">>, Registrant)]),
			io:format("registrant => street_address: ~p~n", [maps:get(<<"street_address">>, Registrant)]),
			io:format("registrant => city: ~p~n", [maps:get(<<"city">>, Registrant)]),
			io:format("registrant => region: ~p~n", [maps:get(<<"region">>, Registrant)]),
			io:format("registrant => zip_code: ~p~n", [maps:get(<<"zip_code">>, Registrant)]),
			io:format("registrant => country: ~p~n", [maps:get(<<"country">>, Registrant)]),
			io:format("registrant => phone: ~p~n", [maps:get(<<"phone">>, Registrant)]),
			io:format("registrant => fax: ~p~n", [maps:get(<<"fax">>, Registrant)]),
			io:format("registrant => email: ~p~n", [maps:get(<<"email">>, Registrant)]),
			
			Admin = maps:get(<<"admin">>, Result),
			io:format("admin => name: ~p~n", [maps:get(<<"name">>, Admin)]),
			io:format("admin => organization: ~p~n", [maps:get(<<"organization">>, Admin)]),
			io:format("admin => street_address: ~p~n", [maps:get(<<"street_address">>, Admin)]),
			io:format("admin => city: ~p~n", [maps:get(<<"city">>, Admin)]),
			io:format("admin => region: ~p~n", [maps:get(<<"region">>, Admin)]),
			io:format("admin => zip_code: ~p~n", [maps:get(<<"zip_code">>, Admin)]),
			io:format("admin => country: ~p~n", [maps:get(<<"country">>, Admin)]),
			io:format("admin => phone: ~p~n", [maps:get(<<"phone">>, Admin)]),
			io:format("admin => fax: ~p~n", [maps:get(<<"fax">>, Admin)]),
			io:format("admin => email: ~p~n", [maps:get(<<"email">>, Admin)]),
			
			Tech = maps:get(<<"tech">>, Result),
			io:format("tech => name: ~p~n", [maps:get(<<"name">>, Tech)]),
			io:format("tech => organization: ~p~n", [maps:get(<<"organization">>, Tech)]),
			io:format("tech => street_address: ~p~n", [maps:get(<<"street_address">>, Tech)]),
			io:format("tech => city: ~p~n", [maps:get(<<"city">>, Tech)]),
			io:format("tech => region: ~p~n", [maps:get(<<"region">>, Tech)]),
			io:format("tech => zip_code: ~p~n", [maps:get(<<"zip_code">>, Tech)]),
			io:format("tech => country: ~p~n", [maps:get(<<"country">>, Tech)]),
			io:format("tech => phone: ~p~n", [maps:get(<<"phone">>, Tech)]),
			io:format("tech => fax: ~p~n", [maps:get(<<"fax">>, Tech)]),
			io:format("tech => email: ~p~n", [maps:get(<<"email">>, Tech)]),
			
			Billing = maps:get(<<"billing">>, Result),
			io:format("billing => name: ~p~n", [maps:get(<<"name">>, Billing)]),
			io:format("billing => organization: ~p~n", [maps:get(<<"organization">>, Billing)]),
			io:format("billing => street_address: ~p~n", [maps:get(<<"street_address">>, Billing)]),
			io:format("billing => city: ~p~n", [maps:get(<<"city">>, Billing)]),
			io:format("billing => region: ~p~n", [maps:get(<<"region">>, Billing)]),
			io:format("billing => zip_code: ~p~n", [maps:get(<<"zip_code">>, Billing)]),
			io:format("billing => country: ~p~n", [maps:get(<<"country">>, Billing)]),
			io:format("billing => phone: ~p~n", [maps:get(<<"phone">>, Billing)]),
			io:format("billing => fax: ~p~n", [maps:get(<<"fax">>, Billing)]),
			io:format("billing => email: ~p~n", [maps:get(<<"email">>, Billing)])
	end.
```

### Convert Normal Text to Punycode

You can convert an international domain name to Punycode as below:

```erlang
-module(test).
-export([testme/0]).

testme() ->
	APIKey = "YOUR_API_KEY",
	
	ip2whois:new(APIKey),
	
	Punycode = ip2whois:getpunycode("täst.de"),
	io:format("Punycode: ~p~n", [Punycode]).
```

### Convert Punycode to Normal Text

You can convert a Punycode to international domain name as below:

```erlang
-module(test).
-export([testme/0]).

testme() ->
	APIKey = "YOUR_API_KEY",
	
	ip2whois:new(APIKey),
	
	Normaltext = ip2whois:getnormaltext("xn--tst-qla.de"),
	io:format("Normaltext: ~p~n", [Normaltext]).
```

### Get Domain Name

You can extract the domain name from an url as below:

```erlang
-module(test).
-export([testme/0]).

testme() ->
	APIKey = "YOUR_API_KEY",
	
	ip2whois:new(APIKey),
	
	Domainname = ip2whois:getdomainname("https://www.example.com/exe"),
	io:format("Domainname: ~p~n", [Domainname]).
```

### Get Domain Extension

You can extract the domain extension from a domain name or url as below:

```erlang
-module(test).
-export([testme/0]).

testme() ->
	APIKey = "YOUR_API_KEY",
	
	ip2whois:new(APIKey),
	
	Domainextension = ip2whois:getdomainextension("example.com"),
	io:format("Domainextension: ~p~n", [Domainextension]).
```