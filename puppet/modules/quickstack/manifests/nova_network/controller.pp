# Quickstart class for nova network controller
class quickstack::nova_network::controller (
  $admin_email                   = $quickstack::params::admin_email,
  $admin_password                = $quickstack::params::admin_password,
  $ceilometer_metering_secret    = $quickstack::params::ceilometer_metering_secret,
  $ceilometer_user_password      = $quickstack::params::ceilometer_user_password,
  $ceph_cluster_network          = '',
  $ceph_public_network           = '',
  $ceph_fsid                     = '',
  $ceph_images_key               = '',
  $ceph_volumes_key              = '',
  $ceph_mon_host                 = [ ],
  $ceph_mon_initial_members      = [ ],
  $ceph_osd_pool_default_size    = '',
  $ceph_osd_journal_size         = '',
  $cinder_backend_eqlx           = $quickstack::params::cinder_backend_eqlx,
  $cinder_backend_eqlx_name      = $quickstack::params::cinder_backend_eqlx_name,
  $cinder_backend_gluster        = $quickstack::params::cinder_backend_gluster,
  $cinder_backend_gluster_name   = $quickstack::params::cinder_backend_gluster_name,
  $cinder_backend_iscsi          = $quickstack::params::cinder_backend_iscsi,
  $cinder_backend_iscsi_name     = $quickstack::params::cinder_backend_iscsi_name,
  $cinder_backend_nfs            = $quickstack::params::cinder_backend_nfs,
  $cinder_backend_nfs_name       = $quickstack::params::cinder_backend_nfs_name,
  $cinder_backend_rbd            = $quickstack::params::cinder_backend_rbd,
  $cinder_backend_rbd_name       = $quickstack::params::cinder_backend_rbd_name,
  $cinder_db_password            = $quickstack::params::cinder_db_password,
  $cinder_multiple_backends      = $quickstack::params::cinder_multiple_backends,
  $cinder_create_volume_types    = true,
  $cinder_gluster_shares         = $quickstack::params::cinder_gluster_shares,
  $cinder_nfs_shares             = $quickstack::params::cinder_nfs_shares,
  $cinder_nfs_mount_options      = $quickstack::params::cinder_nfs_mount_options,
  $cinder_san_ip                 = $quickstack::params::cinder_san_ip,
  $cinder_san_login              = $quickstack::params::cinder_san_login,
  $cinder_san_password           = $quickstack::params::cinder_san_password,
  $cinder_san_thin_provision     = $quickstack::params::cinder_san_thin_provision,
  $cinder_eqlx_group_name        = $quickstack::params::cinder_eqlx_group_name,
  $cinder_eqlx_pool              = $quickstack::params::cinder_eqlx_pool,
  $cinder_eqlx_use_chap          = $quickstack::params::cinder_eqlx_use_chap,
  $cinder_eqlx_chap_login        = $quickstack::params::cinder_eqlx_chap_login,
  $cinder_eqlx_chap_password     = $quickstack::params::cinder_eqlx_chap_password,
  $cinder_rbd_pool               = $quickstack::params::cinder_rbd_pool,
  $cinder_rbd_ceph_conf          = $quickstack::params::cinder_rbd_ceph_conf,
  $cinder_rbd_flatten_volume_from_snapshot
                                 = $quickstack::params::cinder_rbd_flatten_volume_from_snapshot,
  $cinder_rbd_max_clone_depth    = $quickstack::params::cinder_rbd_max_clone_depth,
  $cinder_rbd_user               = $quickstack::params::cinder_rbd_user,
  $cinder_rbd_secret_uuid        = $quickstack::params::cinder_rbd_secret_uuid,
  $cinder_user_password          = $quickstack::params::cinder_user_password,
  $controller_admin_host         = $quickstack::params::controller_admin_host,
  $controller_priv_host          = $quickstack::params::controller_priv_host,
  $controller_pub_host           = $quickstack::params::controller_pub_host,
  $glance_db_password            = $quickstack::params::glance_db_password,
  $glance_user_password          = $quickstack::params::glance_user_password,
  $glance_backend                = $quickstack::params::glance_backend,
  $glance_rbd_store_user         = $quickstack::params::glance_rbd_store_user,
  $glance_rbd_store_pool         = $quickstack::params::glance_rbd_store_pool,
  $heat_auth_encrypt_key,
  $heat_cfn                      = $quickstack::params::heat_cfn,
  $heat_cloudwatch               = $quickstack::params::heat_cloudwatch,
  $heat_db_password              = $quickstack::params::heat_db_password,
  $heat_user_password            = $quickstack::params::heat_user_password,
  $horizon_secret_key            = $quickstack::params::horizon_secret_key,
  $keystone_admin_token          = $quickstack::params::keystone_admin_token,
  $keystone_db_password          = $quickstack::params::keystone_db_password,
  $keystonerc                    = false,
  $mysql_host                    = $quickstack::params::mysql_host,
  $mysql_root_password           = $quickstack::params::mysql_root_password,
  $nova_db_password              = $quickstack::params::nova_db_password,
  $nova_user_password            = $quickstack::params::nova_user_password,
  $nova_default_floating_pool    = $quickstack::params::nova_default_floating_pool,
  $amqp_provider                 = $quickstack::params::amqp_provider,
  $amqp_host                     = $quickstack::params::amqp_host,
  $amqp_username                 = $quickstack::params::amqp_username,
  $amqp_password                 = $quickstack::params::amqp_password,
  $swift_shared_secret           = $quickstack::params::swift_shared_secret,
  $swift_admin_password          = $quickstack::params::swift_admin_password,
  $swift_ringserver_ip           = "192.168.203.1",
  $swift_storage_ips             = ["192.168.203.2","192.168.203.3","192.168.203.4"],
  $swift_storage_device          = 'device1',
  $verbose                       = $quickstack::params::verbose,
  $ssl                           = $quickstack::params::ssl,
  $freeipa                       = $quickstack::params::freeipa,
  $mysql_ca                      = $quickstack::params::mysql_ca,
  $mysql_cert                    = $quickstack::params::mysql_cert,
  $mysql_key                     = $quickstack::params::mysql_key,
  $amqp_ca                       = $quickstack::params::amqp_ca,
  $amqp_cert                     = $quickstack::params::amqp_cert,
  $amqp_key                      = $quickstack::params::amqp_key,
  $horizon_ca                    = $quickstack::params::horizon_ca,
  $horizon_cert                  = $quickstack::params::horizon_cert,
  $horizon_key                   = $quickstack::params::horizon_key,
  $amqp_nssdb_password           = $quickstack::params::amqp_nssdb_password,

  $auto_assign_floating_ip
) inherits quickstack::params {
  nova_config {
    'DEFAULT/auto_assign_floating_ip': value => $auto_assign_floating_ip;
    'DEFAULT/multi_host':              value => 'True';
    'DEFAULT/force_dhcp_release':      value => 'False';
  }


  class { 'quickstack::controller_common':
    admin_email                  => $admin_email,
    admin_password               => $admin_password,
    ceilometer_metering_secret   => $ceilometer_metering_secret,
    ceilometer_user_password     => $ceilometer_user_password,
    ceph_cluster_network         => $ceph_cluster_network,
    ceph_public_network          => $ceph_public_network,
    ceph_fsid                    => $ceph_fsid,
    ceph_images_key              => $ceph_images_key,
    ceph_volumes_key             => $ceph_volumes_key,
    ceph_mon_host                => $ceph_mon_host,
    ceph_mon_initial_members     => $ceph_mon_initial_members,
    ceph_osd_pool_default_size   => $ceph_osd_pool_default_size,
    ceph_osd_journal_size        => $ceph_osd_journal_size,
    cinder_backend_eqlx          => $cinder_backend_eqlx,
    cinder_backend_eqlx_name     => $cinder_backend_eqlx_name,
    cinder_backend_gluster       => $cinder_backend_gluster,
    cinder_backend_gluster_name  => $cinder_backend_gluster_name,
    cinder_backend_iscsi         => $cinder_backend_iscsi,
    cinder_backend_iscsi_name    => $cinder_backend_iscsi_name,
    cinder_backend_nfs           => $cinder_backend_nfs,
    cinder_backend_nfs_name      => $cinder_backend_nfs_name,
    cinder_db_password           => $cinder_db_password,
    cinder_multiple_backends     => $cinder_multiple_backends,
    cinder_create_volume_types   => $cinder_create_volume_types,
    cinder_gluster_shares        => $cinder_gluster_shares,
    cinder_nfs_shares            => $cinder_nfs_shares,
    cinder_nfs_mount_options     => $cinder_nfs_mount_options,
    cinder_san_ip                => $cinder_san_ip,
    cinder_san_login             => $cinder_san_login,
    cinder_san_password          => $cinder_san_password,
    cinder_san_thin_provision    => $cinder_san_thin_provision,
    cinder_eqlx_group_name       => $cinder_eqlx_group_name,
    cinder_eqlx_pool             => $cinder_eqlx_pool,
    cinder_eqlx_use_chap         => $cinder_eqlx_use_chap,
    cinder_eqlx_chap_login       => $cinder_eqlx_chap_login,
    cinder_eqlx_chap_password    => $cinder_eqlx_chap_password,
    cinder_backend_rbd           => $cinder_backend_rbd,
    cinder_backend_rbd_name      => $cinder_backend_rbd_name,
    cinder_rbd_pool              => $cinder_rbd_pool,
    cinder_rbd_ceph_conf         => $cinder_rbd_ceph_conf,
    cinder_rbd_flatten_volume_from_snapshot
                                 => $cinder_rbd_flatten_volume_from_snapshot,
    cinder_rbd_max_clone_depth   => $cinder_rbd_max_clone_depth,
    cinder_rbd_user              => $cinder_rbd_user,
    cinder_rbd_secret_uuid       => $cinder_rbd_secret_uuid,
    cinder_user_password         => $cinder_user_password,
    controller_admin_host        => $controller_admin_host,
    controller_priv_host         => $controller_priv_host,
    controller_pub_host          => $controller_pub_host,
    glance_db_password           => $glance_db_password,
    glance_user_password         => $glance_user_password,
    glance_backend               => $glance_backend,
    glance_rbd_store_user        => $glance_rbd_store_user,
    glance_rbd_store_pool        => $glance_rbd_store_pool,
    heat_auth_encrypt_key        => $heat_auth_encrypt_key,
    heat_cfn                     => $heat_cfn,
    heat_cloudwatch              => $heat_cloudwatch,
    heat_db_password             => $heat_db_password,
    heat_user_password           => $heat_user_password,
    horizon_secret_key           => $horizon_secret_key,
    keystone_admin_token         => $keystone_admin_token,
    keystone_db_password         => $keystone_db_password,
    keystonerc                   => $keystonerc,
    mysql_host                   => $mysql_host,
    mysql_root_password          => $mysql_root_password,
    neutron                      => false,
    nova_db_password             => $nova_db_password,
    nova_user_password           => $nova_user_password,
    nova_default_floating_pool   => $nova_default_floating_pool,
    amqp_provider                => $amqp_provider,
    amqp_host                    => $amqp_host,
    amqp_username                => $amqp_username,
    amqp_password                => $amqp_password,
    swift_shared_secret          => $swift_shared_secret,
    swift_admin_password         => $swift_admin_password,
    swift_ringserver_ip          => $swift_ringserver_ip,
    swift_storage_ips            => $swift_storage_ips,
    swift_storage_device         => $swift_storage_device,
    verbose                      => $verbose,

    ssl                          => $ssl,
    freeipa                      => $freeipa,
    mysql_ca                     => $mysql_ca,
    mysql_cert                   => $mysql_cert,
    mysql_key                    => $mysql_key,
    amqp_ca                      => $amqp_ca,
    amqp_cert                    => $amqp_cert,
    amqp_key                     => $amqp_key,
    horizon_ca                   => $horizon_ca,
    horizon_cert                 => $horizon_cert,
    horizon_key                  => $horizon_key,
    amqp_nssdb_password          => $amqp_nssdb_password,
  }
}
