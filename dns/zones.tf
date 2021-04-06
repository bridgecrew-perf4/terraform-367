# akselinurmio.fi
resource "cloudflare_zone" "akselinurmio_fi" {
  zone = "akselinurmio.fi"
}
resource "cloudflare_zone_dnssec" "akselinurmio_fi" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
}
resource "cloudflare_zone_settings_override" "akselinurmio_fi" {
  zone_id = cloudflare_zone.akselinurmio_fi.id
  settings {
    always_use_https = "on"
    brotli           = "on"
    ssl              = "strict"
    security_header {
      enabled            = true
      preload            = true
      include_subdomains = true
      max_age            = 60 * 60 * 24 * 365 * 2
    }
  }
}

# nurmio.fi
resource "cloudflare_zone" "nurmio_fi" {
  zone = "nurmio.fi"
}
resource "cloudflare_zone_dnssec" "nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
}
resource "cloudflare_zone_settings_override" "nurmio_fi" {
  zone_id = cloudflare_zone.nurmio_fi.id
  settings {
    always_use_https = "on"
    brotli           = "on"
    ssl              = "strict"
    security_header {
      enabled            = true
      preload            = true
      include_subdomains = true
      max_age            = 60 * 60 * 24 * 365 * 2
    }
  }
}
