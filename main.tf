resource "oci_devops_deployment" "devops_deployments" {
  for_each = var.devops_deployments

  deploy_pipeline_id            = each.value.deploy_pipeline_id
  deployment_type               = each.value.deployment_type
  defined_tags                  = each.value.defined_tags
  deploy_stage_id               = each.value.deploy_stage_id
  display_name                  = each.value.display_name
  freeform_tags                 = each.value.freeform_tags
  previous_deployment_id        = each.value.previous_deployment_id
  trigger_new_devops_deployment = each.value.trigger_new_devops_deployment

  dynamic "deploy_artifact_override_arguments" {
    for_each = each.value.deploy_artifact_override_arguments != null ? [each.value.deploy_artifact_override_arguments] : []
    content {
      dynamic "items" {
        for_each = deploy_artifact_override_arguments.value.items != null ? deploy_artifact_override_arguments.value.items : []
        content {
          deploy_artifact_id = items.value.deploy_artifact_id
          name               = items.value.name
          value              = items.value.value
        }
      }
    }
  }

  dynamic "deploy_stage_override_arguments" {
    for_each = each.value.deploy_stage_override_arguments != null ? [each.value.deploy_stage_override_arguments] : []
    content {
      dynamic "items" {
        for_each = deploy_stage_override_arguments.value.items != null ? deploy_stage_override_arguments.value.items : []
        content {
          deploy_stage_id = items.value.deploy_stage_id
          name            = items.value.name
          value           = items.value.value
        }
      }
    }
  }

  dynamic "deployment_arguments" {
    for_each = each.value.deployment_arguments != null ? [each.value.deployment_arguments] : []
    content {
      dynamic "items" {
        for_each = deployment_arguments.value.items != null ? deployment_arguments.value.items : []
        content {
          name  = items.value.name
          value = items.value.value
        }
      }
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

