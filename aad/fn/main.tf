
module "fn_apim_api_aad" {
  
  source                = "../base"
  
  resource_group_name   = var.resource_group_name
  apim_name             = var.apim_name
  name                  = var.name
  description           = var.description
  revision              = var.revision
  path                  = var.path
  primary_protocol      = var.primary_protocol
  backend_name          = module.fn_apim_backend.name
  scope                 = var.scope
  product_id            = var.product_id
  header_prefix         = var.header_prefix

}

module "fn_apim_backend" {
  
  source                = "github.com/markti/tf_azure_apim_backend/fn"
  
  resource_group_name   = var.resource_group_name
  apim_name             = var.apim_name
  name                  = var.name
  function_name         = var.function_name
  function_key          = var.function_key
  protocol              = "http"

}
