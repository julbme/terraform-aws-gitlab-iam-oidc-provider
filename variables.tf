# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You can provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "gitlab_url" {
  description = "The URL of the GitLab instance."
  type        = string
  default     = "https://gitlab.com"

  validation {
    condition     = can(regex("^https?://(.*)+[^/]$", var.gitlab_url))
    error_message = "Must be a URL starting with http:// or https:// without trailing slash."
  }
}
