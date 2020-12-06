resource "cloudflare_record" "A_akselinurmio_fi" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "akselinurmio.fi"
  type    = "A"
  proxied = "true"
  value   = "104.198.14.52"
}

resource "cloudflare_record" "CNAME_www_akselinurmio_fi" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "www"
  type    = "CNAME"
  proxied = "true"
  value   = "akselinurmio-fi.netlify.com"
}

resource "cloudflare_record" "TXT_akselinurmio_fi_spf" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "akselinurmio.fi"
  type    = "TXT"
  proxied = "false"
  value   = "v=spf1 -all"
}

resource "cloudflare_record" "TXT_akselinurmio_fi_google" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  name    = "akselinurmio.fi"
  type    = "TXT"
  proxied = "false"
  value   = "google-site-verification=0BCzUK9GnHIxlA7EKjLAZLUDcuMBjSlN5u0OfZLy3As"
}

resource "cloudflare_record" "CNAME_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "nurmio.fi"
  type    = "CNAME"
  proxied = "true"
  value   = "akselinurmio.fi"
}

resource "cloudflare_record" "CNAME_www_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "www"
  type    = "CNAME"
  proxied = "true"
  value   = "akselinurmio.fi"
}

resource "cloudflare_record" "MX_nurmio_fi_a" {
  zone_id  = cloudflare_zone.nurmio_fi.id
  name     = "nurmio.fi"
  type     = "MX"
  priority = "10"
  value    = "mail1.shellit.org"
}

resource "cloudflare_record" "MX_nurmio_fi_b" {
  zone_id  = cloudflare_zone.nurmio_fi.id
  name     = "nurmio.fi"
  type     = "MX"
  priority = "50"
  value    = "mail2.shellit.org"
}

resource "cloudflare_record" "TXT__dmarc_nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "_dmarc"
  type    = "TXT"
  proxied = "false"
  value   = "v=DMARC1; p=none"
}

resource "cloudflare_record" "TXT_nurmio_fi_spf" {
  zone_id = cloudflare_zone.nurmio_fi.id
  name    = "nurmio.fi"
  type    = "TXT"
  proxied = "false"
  value   = "v=spf1 include:eu.mailgun.org -all"
}
