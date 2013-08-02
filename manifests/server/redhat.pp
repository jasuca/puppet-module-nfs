class nfs::server::redhat(
  $nfs_v4 = false,
  $nfs_v4_idmap_domain = undef,
  $enabled = true,
) {

  class{ 'nfs::client::redhat':
    nfs_v4              => $nfs_v4,
    nfs_v4_idmap_domain => $nfs_v4_idmap_domain,
  }

  include nfs::server::redhat::install, nfs::server::redhat::service


}
