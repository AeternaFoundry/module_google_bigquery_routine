resource "google_bigquery_routine" "bigquery_routines" {
  for_each = var.bigquery_routines

  dataset_id           = each.value.dataset_id
  definition_body      = each.value.definition_body
  routine_id           = each.value.routine_id
  routine_type         = each.value.routine_type
  data_governance_type = each.value.data_governance_type
  deletion_policy      = each.value.deletion_policy
  description          = each.value.description
  determinism_level    = each.value.determinism_level
  imported_libraries   = each.value.imported_libraries
  language             = each.value.language
  project              = each.value.project
  return_table_type    = each.value.return_table_type
  return_type          = each.value.return_type
  security_mode        = each.value.security_mode

  dynamic "arguments" {
    for_each = each.value.arguments != null ? each.value.arguments : []
    content {
      argument_kind = arguments.value.argument_kind
      data_type     = arguments.value.data_type
      mode          = arguments.value.mode
      name          = arguments.value.name
      dynamic "table_type" {
        for_each = arguments.value.table_type != null ? [arguments.value.table_type] : []
        content {
          dynamic "columns" {
            for_each = table_type.value.columns != null ? table_type.value.columns : []
            content {
              name = columns.value.name
              type = columns.value.type
            }
          }
        }
      }
    }
  }

  dynamic "remote_function_options" {
    for_each = each.value.remote_function_options != null ? [each.value.remote_function_options] : []
    content {
      connection           = remote_function_options.value.connection
      endpoint             = remote_function_options.value.endpoint
      max_batching_rows    = remote_function_options.value.max_batching_rows
      user_defined_context = remote_function_options.value.user_defined_context
    }
  }

  dynamic "spark_options" {
    for_each = each.value.spark_options != null ? [each.value.spark_options] : []
    content {
      archive_uris    = spark_options.value.archive_uris
      connection      = spark_options.value.connection
      container_image = spark_options.value.container_image
      file_uris       = spark_options.value.file_uris
      jar_uris        = spark_options.value.jar_uris
      main_class      = spark_options.value.main_class
      main_file_uri   = spark_options.value.main_file_uri
      properties      = spark_options.value.properties
      py_file_uris    = spark_options.value.py_file_uris
      runtime_version = spark_options.value.runtime_version
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

