output "devops_deployments_id" {
  description = "Map of id values across all devops_deployments, keyed the same as var.devops_deployments except keys with no id are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "devops_deployments_compartment_id" {
  description = "Map of compartment_id values across all devops_deployments, keyed the same as var.devops_deployments except keys with no compartment_id are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "devops_deployments_defined_tags" {
  description = "Map of defined_tags values across all devops_deployments, keyed the same as var.devops_deployments except keys with no defined_tags are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "devops_deployments_deploy_artifact_override_arguments" {
  description = "Map of deploy_artifact_override_arguments values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deploy_artifact_override_arguments are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => one(v.deploy_artifact_override_arguments) if v.deploy_artifact_override_arguments != null && length(v.deploy_artifact_override_arguments) > 0 }
}
output "devops_deployments_deploy_pipeline_artifacts" {
  description = "Map of deploy_pipeline_artifacts values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deploy_pipeline_artifacts are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.deploy_pipeline_artifacts if v.deploy_pipeline_artifacts != null && length(v.deploy_pipeline_artifacts) > 0 }
}
output "devops_deployments_deploy_pipeline_environments" {
  description = "Map of deploy_pipeline_environments values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deploy_pipeline_environments are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.deploy_pipeline_environments if v.deploy_pipeline_environments != null && length(v.deploy_pipeline_environments) > 0 }
}
output "devops_deployments_deploy_pipeline_id" {
  description = "Map of deploy_pipeline_id values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deploy_pipeline_id are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.deploy_pipeline_id if v.deploy_pipeline_id != null && length(v.deploy_pipeline_id) > 0 }
}
output "devops_deployments_deploy_stage_id" {
  description = "Map of deploy_stage_id values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deploy_stage_id are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.deploy_stage_id if v.deploy_stage_id != null && length(v.deploy_stage_id) > 0 }
}
output "devops_deployments_deploy_stage_override_arguments" {
  description = "Map of deploy_stage_override_arguments values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deploy_stage_override_arguments are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => one(v.deploy_stage_override_arguments) if v.deploy_stage_override_arguments != null && length(v.deploy_stage_override_arguments) > 0 }
}
output "devops_deployments_deployment_arguments" {
  description = "Map of deployment_arguments values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deployment_arguments are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => one(v.deployment_arguments) if v.deployment_arguments != null && length(v.deployment_arguments) > 0 }
}
output "devops_deployments_deployment_execution_progress" {
  description = "Map of deployment_execution_progress values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deployment_execution_progress are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.deployment_execution_progress if v.deployment_execution_progress != null && length(v.deployment_execution_progress) > 0 }
}
output "devops_deployments_deployment_type" {
  description = "Map of deployment_type values across all devops_deployments, keyed the same as var.devops_deployments except keys with no deployment_type are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.deployment_type if v.deployment_type != null && length(v.deployment_type) > 0 }
}
output "devops_deployments_display_name" {
  description = "Map of display_name values across all devops_deployments, keyed the same as var.devops_deployments except keys with no display_name are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "devops_deployments_freeform_tags" {
  description = "Map of freeform_tags values across all devops_deployments, keyed the same as var.devops_deployments except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "devops_deployments_lifecycle_details" {
  description = "Map of lifecycle_details values across all devops_deployments, keyed the same as var.devops_deployments except keys with no lifecycle_details are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.lifecycle_details if v.lifecycle_details != null && length(v.lifecycle_details) > 0 }
}
output "devops_deployments_previous_deployment_id" {
  description = "Map of previous_deployment_id values across all devops_deployments, keyed the same as var.devops_deployments except keys with no previous_deployment_id are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.previous_deployment_id if v.previous_deployment_id != null && length(v.previous_deployment_id) > 0 }
}
output "devops_deployments_project_id" {
  description = "Map of project_id values across all devops_deployments, keyed the same as var.devops_deployments except keys with no project_id are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.project_id if v.project_id != null && length(v.project_id) > 0 }
}
output "devops_deployments_state" {
  description = "Map of state values across all devops_deployments, keyed the same as var.devops_deployments except keys with no state are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.state if v.state != null && length(v.state) > 0 }
}
output "devops_deployments_system_tags" {
  description = "Map of system_tags values across all devops_deployments, keyed the same as var.devops_deployments except keys with no system_tags are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.system_tags if v.system_tags != null && length(v.system_tags) > 0 }
}
output "devops_deployments_time_created" {
  description = "Map of time_created values across all devops_deployments, keyed the same as var.devops_deployments except keys with no time_created are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "devops_deployments_time_updated" {
  description = "Map of time_updated values across all devops_deployments, keyed the same as var.devops_deployments except keys with no time_updated are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.time_updated if v.time_updated != null && length(v.time_updated) > 0 }
}
output "devops_deployments_trigger_new_devops_deployment" {
  description = "Map of trigger_new_devops_deployment values across all devops_deployments, keyed the same as var.devops_deployments except keys with no trigger_new_devops_deployment are omitted"
  value       = { for k, v in oci_devops_deployment.devops_deployments : k => v.trigger_new_devops_deployment if v.trigger_new_devops_deployment != null }
}

