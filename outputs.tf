output "bigquery_routines_id" {
  description = "Map of id values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no id are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.id if v.id != null && length(v.id) > 0 }
}
output "bigquery_routines_arguments" {
  description = "Map of arguments values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no arguments are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.arguments if v.arguments != null && length(v.arguments) > 0 }
}
output "bigquery_routines_creation_time" {
  description = "Map of creation_time values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no creation_time are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.creation_time if v.creation_time != null }
}
output "bigquery_routines_data_governance_type" {
  description = "Map of data_governance_type values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no data_governance_type are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.data_governance_type if v.data_governance_type != null && length(v.data_governance_type) > 0 }
}
output "bigquery_routines_dataset_id" {
  description = "Map of dataset_id values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no dataset_id are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.dataset_id if v.dataset_id != null && length(v.dataset_id) > 0 }
}
output "bigquery_routines_definition_body" {
  description = "Map of definition_body values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no definition_body are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.definition_body if v.definition_body != null && length(v.definition_body) > 0 }
}
output "bigquery_routines_deletion_policy" {
  description = "Map of deletion_policy values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no deletion_policy are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "bigquery_routines_description" {
  description = "Map of description values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no description are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.description if v.description != null && length(v.description) > 0 }
}
output "bigquery_routines_determinism_level" {
  description = "Map of determinism_level values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no determinism_level are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.determinism_level if v.determinism_level != null && length(v.determinism_level) > 0 }
}
output "bigquery_routines_imported_libraries" {
  description = "Map of imported_libraries values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no imported_libraries are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.imported_libraries if v.imported_libraries != null && length(v.imported_libraries) > 0 }
}
output "bigquery_routines_language" {
  description = "Map of language values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no language are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.language if v.language != null && length(v.language) > 0 }
}
output "bigquery_routines_last_modified_time" {
  description = "Map of last_modified_time values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no last_modified_time are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.last_modified_time if v.last_modified_time != null }
}
output "bigquery_routines_project" {
  description = "Map of project values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no project are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.project if v.project != null && length(v.project) > 0 }
}
output "bigquery_routines_remote_function_options" {
  description = "Map of remote_function_options values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no remote_function_options are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => one(v.remote_function_options) if v.remote_function_options != null && length(v.remote_function_options) > 0 }
}
output "bigquery_routines_return_table_type" {
  description = "Map of return_table_type values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no return_table_type are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.return_table_type if v.return_table_type != null && length(v.return_table_type) > 0 }
}
output "bigquery_routines_return_type" {
  description = "Map of return_type values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no return_type are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.return_type if v.return_type != null && length(v.return_type) > 0 }
}
output "bigquery_routines_routine_id" {
  description = "Map of routine_id values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no routine_id are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.routine_id if v.routine_id != null && length(v.routine_id) > 0 }
}
output "bigquery_routines_routine_type" {
  description = "Map of routine_type values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no routine_type are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.routine_type if v.routine_type != null && length(v.routine_type) > 0 }
}
output "bigquery_routines_security_mode" {
  description = "Map of security_mode values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no security_mode are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => v.security_mode if v.security_mode != null && length(v.security_mode) > 0 }
}
output "bigquery_routines_spark_options" {
  description = "Map of spark_options values across all bigquery_routines, keyed the same as var.bigquery_routines except keys with no spark_options are omitted"
  value       = { for k, v in google_bigquery_routine.bigquery_routines : k => one(v.spark_options) if v.spark_options != null && length(v.spark_options) > 0 }
}

