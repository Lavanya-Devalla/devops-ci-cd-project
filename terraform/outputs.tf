output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_certificate_authority_data" {
  value = module.eks.cluster_certificate_authority_data
}

output "kubeconfig" {
  value = templatefile("${path.module}/kubeconfig.tpl", {
    cluster_name                     = module.eks.cluster_name
    cluster_endpoint                 = module.eks.cluster_endpoint
    cluster_certificate_authority    = module.eks.cluster_certificate_authority_data
  })
}
