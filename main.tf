module "ado_microservice_irsa" {
  source                        = "git::git@github.com:CMS-Enterprise/batcave-tf-irsa.git//.?ref=1.0.1"
  role_name                     = "${var.cluster_name}-ado-ado_microservice"
  role_path                     = var.iam_path
  role_permissions_boundary_arn = var.permissions_boundary
  app_name                      = var.ado_microservice_app_name
  s3_bucket_arns                = var.ado_microservice_bucket_arns
  attach_s3_policy              = true
  oidc_providers = {
    main = {
      provider_arn               = var.oidc_provider_arn
      namespace_service_accounts = var.ado_microservice_service_accounts
    }
  }

}
