

module "fn_apim_api_b2c" {
  
  source                = "../base"
  
  resource_group_name   = var.resource_group_name
  apim_name             = var.apim_name
  name                  = var.name
  description           = var.description
  revision              = var.revision
  path                  = var.path
  primary_protocol      = var.primary_protocol
  backend_name          = module.fn_apim_backend.name
  product_id            = var.product_id
  b2c_settings          = var.b2c_settings

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