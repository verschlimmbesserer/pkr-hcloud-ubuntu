
locals {
  images = {
    "ubuntu-22.04" = "Ubuntu-2204-jammy-amd64-base.tar.gz"
    "ubuntu-20.04" = "Ubuntu-2004-focal-64-minimal.tar.gz"
  }
  partitions = {
    cx11 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "2G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "5G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "2G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "2G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "2G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "2G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "2G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "1G" }
    }
    cpx11 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "2G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "8G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "6G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "4G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "4G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "2G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    cx21 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "2G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "8G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "6G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "4G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "4G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "2G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    cpx21 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "4G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "10G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "10G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "10G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "4G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "4G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    cx31 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "4G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "10G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "10G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "10G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "4G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "4G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    cpx31 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "4G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "10G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "10G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "10G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "4G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "4G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    cx41 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "4G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "10G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "10G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "10G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "4G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "4G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    cpx41 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "4G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "10G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "10G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "10G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "4G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "4G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    cx51 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "4G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "10G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "10G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "4G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "10G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "4G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    cpx51 = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "4G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "10G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "10G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "4G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "4G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "10G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "4G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "4G" }
    }
    default = {
      swap = { mountpoint = "swap",filesystem = "swap",size = "2G" }
      root = { mountpoint = "/",filesystem = "ext4",size = "5G" }
      home = { mountpoint = "/home",filesystem = "ext4",size = "2G" }
      tmp = { mountpoint = "/tmp",filesystem = "ext4",size = "1G" }
      usr = { mountpoint = "/usr",filesystem = "ext4",size = "2G" }
      var = { mountpoint = "/var",filesystem = "ext4",size = "2G" }
      log = { mountpoint = "/var/log",filesystem = "ext4",size = "2G" }
      audit = { mountpoint = "/var/log/audit",filesystem = "ext4",size = "2G" }
      tmp = { mountpoint = "/var/tmp",filesystem = "ext4",size = "1G" }
      }
  }
  template_vars = {
    img = local.images
    part = local.partitions
    size = var.size
    image = var.image
  }
}

source "hcloud" "instance" {
  image        = var.image
  location     = var.location
  rescue       = "linux64"
  server_type  = var.size
  ssh_username = var.ssh_username
  token        = var.token
  snapshot_name = format("cis-%s-%s",var.image,var.size)
  snapshot_tags = var.snapshot_tags
}

build {
  sources = ["source.hcloud.instance"]
  provisioner "file" {
    source = templatefile("${path.root}/autosetup.tmpl", local.template_vars)
    destination = "/autosetup"
  }
  provisioner "shell" {
    scripts = [
      "${path.root}/install.sh"
    ]
  }
}
