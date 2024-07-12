# IP2WHOIS Erlang API

## ip2whois Module

```{py:function} new(APIKey)
Configuration registry. Set the IP2WHOIS API key.

:param String APIKey: (Required) The IP2WHOIS API key.
```

```{py:function} lookupdomainwhois(Domain)
Lookup domain WHOIS information.

:param String Domain: (Required) The domain name.
:return: IP2WHOIS Domain WHOIS result in JSON. Refer below table for the fields avaliable in the JSON.
:rtype: json

**RETURN FIELDS**
| Parameter | Type | Description |
|---|---|---|
|domain|string|Domain name.|
|domain_id|string|Domain name ID.|
|status|string|Domain name status.|
|create_date|string|Domain name creation date.|
|update_date|string|Domain name updated date.|
|expire_date|string|Domain name expiration date.|
|domain_age|integer|Domain name age in day(s).|
|whois_server|string|WHOIS server name.|
|registrar.iana_id|string|Registrar IANA ID.|
|registrar.name|string|Registrar name.|
|registrar.url|string|Registrar URL.|
|registrant.name|string|Registrant name.|
|registrant.organization|string|Registrant organization.|
|registrant.street_address|string|Registrant street address.|
|registrant.city|string|Registrant city.|
|registrant.region|string|Registrant region.|
|registrant.zip_code|string|Registrant ZIP Code.|
|registrant.country|string|Registrant country.|
|registrant.phone|string|Registrant phone number.|
|registrant.fax|string|Registrant fax number.|
|registrant.email|string|Registrant email address.|
|admin.name|string|Admin name.|
|admin.organization|string|Admin organization.|
|admin.street_address|string|Admin street address.|
|admin.city|string|Admin city.|
|admin.region|string|Admin region.|
|admin.zip_code|string|Admin ZIP Code.|
|admin.country|string|Admin country.|
|admin.phone|string|Admin phone number.|
|admin.fax|string|Admin fax number.|
|admin.email|string|Admin email address.|
|tech.name|string|Tech name.|
|tech.organization|string|Tech organization.|
|tech.street_address|string|Tech street address.|
|tech.city|string|Tech city.|
|tech.region|string|Tech region.|
|tech.zip_code|string|Tech ZIP Code.|
|tech.country|string|Tech country.|
|tech.phone|string|Tech phone number.|
|tech.fax|string|Tech fax number.|
|tech.email|string|Tech email address.|
|billing.name|string|Billing name.|
|billing.organization|string|Billing organization.|
|billing.street_address|string|Billing street address.|
|billing.city|string|Billing city.|
|billing.region|string|Billing region.|
|billing.zip_code|string|Billing ZIP Code.|
|billing.country|string|Billing country.|
|billing.phone|string|Billing phone number.|
|billing.fax|string|Billing fax number.|
|billing.email|string|Billing email address.|
|nameservers|array|Name servers|
```

```{py:function} getpunycode(Domain)
Get Punycode for domain name.

:param String Domain: (Required) Domain name.
:return: Returns punycode in text.
:rtype: String
```

```{py:function} getnormaltext(Domain)
Get Normal Text.

:param String domain: (Required) The punycode domain name.
:return: Returns normal domain name in text.
:rtype: String
```

```{py:function} getdomainname(Url)
Get domain name from a URL.

:param string Url: (Required) The URL that you want to extract domain name from.
:return: Returns the extracted domain name in text.
:rtype: String
```

```{py:function} getdomainextension(Str)
Get domain extension from a URL or domain.

:param string Str: (Required) The URL or domain.
:return: Returns the domain extension in text.
:rtype: String
```