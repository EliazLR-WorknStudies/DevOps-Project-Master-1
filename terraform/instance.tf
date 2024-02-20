data "openstack_images_image_v2" "deb" {
  name = "Official-debian-11"
  tags = ["latest"]
}

# Instance
resource "openstack_compute_instance_v2" "instance" {
  name            = "instance-1"
  image_id        = data.openstack_images_image_v2.deb.id
  flavor_name       = "v1.m1.d10"
  security_groups = ["default"]
  user_data = file("./conf.yml")
  
  network {
    name = openstack_networking_network_v2.network.name
  }

}

# Floating IP
resource "openstack_networking_floatingip_v2" "fip_1" {
  pool = "public"
}

resource "openstack_compute_floatingip_associate_v2" "fip_1" {
  floating_ip = openstack_networking_floatingip_v2.fip_1.address
  instance_id = openstack_compute_instance_v2.instance.id
}

resource "local_file" "ansible_inventory" {
  content  = "[servers]\n185.34.141.${split(".", openstack_networking_floatingip_v2.fip_1.address)[3]}"
  filename = "${path.module}/../ansible/inventories/dev/hosts"
}