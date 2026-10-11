variable "devops_deployments" {
  description = <<EOT
Map of devops_deployments, attributes below
Required:
    - deploy_pipeline_id
    - deployment_type
Optional:
    - defined_tags
    - deploy_stage_id
    - display_name
    - freeform_tags
    - previous_deployment_id
    - trigger_new_devops_deployment
    - deploy_artifact_override_arguments (block):
        - items (optional, block):
            - deploy_artifact_id (optional)
            - name (optional)
            - value (optional)
    - deploy_stage_override_arguments (block):
        - items (optional, block):
            - deploy_stage_id (optional)
            - name (optional)
            - value (optional)
    - deployment_arguments (block):
        - items (optional, block):
            - name (optional)
            - value (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    deploy_pipeline_id            = string
    deployment_type               = string
    defined_tags                  = optional(map(string))
    deploy_stage_id               = optional(string)
    display_name                  = optional(string)
    freeform_tags                 = optional(map(string))
    previous_deployment_id        = optional(string)
    trigger_new_devops_deployment = optional(bool)
    deploy_artifact_override_arguments = optional(object({
      items = optional(list(object({
        deploy_artifact_id = optional(string)
        name               = optional(string)
        value              = optional(string)
      })))
    }))
    deploy_stage_override_arguments = optional(object({
      items = optional(list(object({
        deploy_stage_id = optional(string)
        name            = optional(string)
        value           = optional(string)
      })))
    }))
    deployment_arguments = optional(object({
      items = optional(list(object({
        name  = optional(string)
        value = optional(string)
      })))
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.devops_deployments : (
        contains([for v in ["PIPELINE_DEPLOYMENT", "PIPELINE_REDEPLOYMENT", "SINGLE_STAGE_DEPLOYMENT", "SINGLE_STAGE_REDEPLOYMENT"] : lower(v)], lower(v.deployment_type))
      )
    ])
    error_message = "must be one of: \"PIPELINE_DEPLOYMENT\", \"PIPELINE_REDEPLOYMENT\", \"SINGLE_STAGE_DEPLOYMENT\", \"SINGLE_STAGE_REDEPLOYMENT\""
  }
}

