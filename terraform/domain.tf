# Add a record to a sub-domain
resource "ovh_domain_zone_record" "all_eliaz" {
  zone      = "uca-devops.ovh"
  subdomain = "*.eliaz"
  fieldtype = "A"
  ttl       = 60
  target    = local.external_ip
}

resource "ovh_domain_zone_record" "eliaz" {
  zone      = "uca-devops.ovh"
  subdomain = "eliaz"
  fieldtype = "A"
  ttl       = 60
  target    = local.external_ip
}