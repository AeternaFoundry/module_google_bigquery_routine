variable "bigquery_routines" {
  description = <<EOT
Map of bigquery_routines, attributes below
Required:
    - dataset_id
    - definition_body
    - routine_id
    - routine_type
Optional:
    - data_governance_type
    - deletion_policy
    - description
    - determinism_level
    - imported_libraries
    - language
    - project
    - return_table_type
    - return_type
    - security_mode
    - arguments (block):
        - argument_kind (optional)
        - data_type (optional)
        - mode (optional)
        - name (optional)
        - table_type (optional, block):
            - columns (optional, block):
                - name (optional)
                - type (optional)
    - remote_function_options (block):
        - connection (optional)
        - endpoint (optional)
        - max_batching_rows (optional)
        - user_defined_context (optional)
    - spark_options (block):
        - archive_uris (optional)
        - connection (optional)
        - container_image (optional)
        - file_uris (optional)
        - jar_uris (optional)
        - main_class (optional)
        - main_file_uri (optional)
        - properties (optional)
        - py_file_uris (optional)
        - runtime_version (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    dataset_id           = string
    definition_body      = string
    routine_id           = string
    routine_type         = string
    data_governance_type = optional(string)
    deletion_policy      = optional(string)
    description          = optional(string)
    determinism_level    = optional(string)
    imported_libraries   = optional(list(string))
    language             = optional(string)
    project              = optional(string)
    return_table_type    = optional(string)
    return_type          = optional(string)
    security_mode        = optional(string)
    arguments = optional(list(object({
      argument_kind = optional(string)
      data_type     = optional(string)
      mode          = optional(string)
      name          = optional(string)
      table_type = optional(object({
        columns = optional(list(object({
          name = optional(string)
          type = optional(string)
        })))
      }))
    })))
    remote_function_options = optional(object({
      connection           = optional(string)
      endpoint             = optional(string)
      max_batching_rows    = optional(string)
      user_defined_context = optional(map(string))
    }))
    spark_options = optional(object({
      archive_uris    = optional(list(string))
      connection      = optional(string)
      container_image = optional(string)
      file_uris       = optional(list(string))
      jar_uris        = optional(list(string))
      main_class      = optional(string)
      main_file_uri   = optional(string)
      properties      = optional(map(string))
      py_file_uris    = optional(list(string))
      runtime_version = optional(string)
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.bigquery_routines : (
        v.arguments == null || alltrue([for item in v.arguments : (item.data_type == null || (can(jsondecode(item.data_type))))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.bigquery_routines : (
        v.arguments == null || alltrue([for item in v.arguments : (item.table_type == null || (item.table_type.columns == null || alltrue([for item in item.table_type.columns : (item.type == null || (can(jsondecode(item.type))))])))])
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.bigquery_routines : (
        v.return_table_type == null || (can(jsondecode(v.return_table_type)))
      )
    ])
    error_message = "must be valid JSON"
  }
  validation {
    condition = alltrue([
      for k, v in var.bigquery_routines : (
        v.return_type == null || (can(jsondecode(v.return_type)))
      )
    ])
    error_message = "must be valid JSON"
  }
  # Note: 7 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

