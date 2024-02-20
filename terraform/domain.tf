# Add a record to a sub-domain
resource "ovh_domain_zone_record" "test" {
  zone      = "uca-devops.ovh"
  subdomain = "eliaz"
  fieldtype = "A"
  ttl       = 3600
  target    = openstack_networking_floatingip_v2.fip_1.address
}