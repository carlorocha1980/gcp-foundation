resource "google_logging_project_sink" "a_required" {
  destination            = "logging.googleapis.com/projects/dt-sandbox-service-proj/locations/global/buckets/_Required"
  filter                 = "LOG_ID(\"cloudaudit.googleapis.com/activity\") OR LOG_ID(\"externalaudit.googleapis.com/activity\") OR LOG_ID(\"cloudaudit.googleapis.com/system_event\") OR LOG_ID(\"externalaudit.googleapis.com/system_event\") OR LOG_ID(\"cloudaudit.googleapis.com/access_transparency\") OR LOG_ID(\"externalaudit.googleapis.com/access_transparency\")"
  name                   = "_Required"
  project                = "692159066307"
  unique_writer_identity = true
}
# terraform import google_logging_project_sink.a_required 692159066307###_Required
