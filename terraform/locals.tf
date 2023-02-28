locals {
  timestamp_output = "${replace("${timestamp()}", "/[- TZ :]/", "")}"
}