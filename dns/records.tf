resource "cloudflare_record" "A_akselinurmio_fi" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "akselinurmio.fi"
  type    = "A"
  proxied = true
  value   = "104.198.14.52"
}

resource "cloudflare_record" "CNAME_www_akselinurmio_fi" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "www"
  type    = "CNAME"
  proxied = true
  value   = "akselinurmio-fi.netlify.com"
}

resource "cloudflare_record" "TXT_akselinurmio_fi_dkim" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "*._domainkey"
  type    = "TXT"
  proxied = false
  value   = "v=DKIM1; p="
}

resource "cloudflare_record" "TXT_akselinurmio_fi_dmarc" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "_dmarc"
  type    = "TXT"
  proxied = false
  value   = "v=DMARC1; p=reject; sp=reject; adkim=s; aspf=s"
}

resource "cloudflare_record" "TXT_akselinurmio_fi_spf" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "akselinurmio.fi"
  type    = "TXT"
  proxied = false
  value   = "v=spf1 -all"
}

resource "cloudflare_record" "TXT_akselinurmio_fi_google" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "akselinurmio.fi"
  type    = "TXT"
  proxied = false
  value   = "google-site-verification=0BCzUK9GnHIxlA7EKjLAZLUDcuMBjSlN5u0OfZLy3As"
}

resource "cloudflare_record" "CNAME_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "nurmio.fi"
  type    = "CNAME"
  proxied = true
  value   = "akselinurmio.fi"
}

resource "cloudflare_record" "CNAME_www_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "www"
  type    = "CNAME"
  proxied = true
  value   = "akselinurmio.fi"
}

resource "cloudflare_record" "MX_nurmio_fi_a" {
  zone_id  = cloudflare_zone.nurmio_fi.id
  name     = "nurmio.fi"
  type     = "MX"
  priority = 10
  value    = "mail.protonmail.ch"
}

resource "cloudflare_record" "MX_nurmio_fi_b" {
  zone_id  = cloudflare_zone.nurmio_fi.id
  name     = "nurmio.fi"
  type     = "MX"
  priority = 20
  value    = "mailsec.protonmail.ch"
}

resource "cloudflare_record" "TXT__dmarc_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "_dmarc"
  type    = "TXT"
  proxied = false
  value   = "v=DMARC1; p=quarantine; adkim=s; rua=mailto:re+hbahwcihpuq@dmarc.postmarkapp.com"
}

resource "cloudflare_record" "TXT_nurmio_fi_spf" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "nurmio.fi"
  type    = "TXT"
  proxied = false
  value   = "v=spf1 include:_spf.protonmail.ch mx ~all"
}

resource "cloudflare_record" "CNAME_protonmail__domainkey_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "protonmail._domainkey"
  type    = "CNAME"
  proxied = false
  value   = "protonmail.domainkey.ddphdyb5v7xspnneskaumdukqvk5yw2no7cfg5lppjf4ghrayqqeq.domains.proton.ch"
}

resource "cloudflare_record" "CNAME_protonmail2__domainkey_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "protonmail2._domainkey"
  type    = "CNAME"
  proxied = false
  value   = "protonmail2.domainkey.ddphdyb5v7xspnneskaumdukqvk5yw2no7cfg5lppjf4ghrayqqeq.domains.proton.ch"
}

resource "cloudflare_record" "CNAME_protonmail3__domainkey_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "protonmail3._domainkey"
  type    = "CNAME"
  proxied = false
  value   = "protonmail3.domainkey.ddphdyb5v7xspnneskaumdukqvk5yw2no7cfg5lppjf4ghrayqqeq.domains.proton.ch"
}

resource "cloudflare_record" "TXT_nurmio_fi_protonmail-verification" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "nurmio.fi"
  type    = "TXT"
  ttl     = 120
  proxied = false
  value   = "protonmail-verification=5df97e8b834b0361f76b5bea37c1d2c447bdfb26"
}
