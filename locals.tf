locals {
  common_tags = {
    company    = "bemnji"
    owner      = "chiella DevOps Team"
    team-email = "team-devops@chiella.com"
    time       = formatdate("DD MMM YYYY hh:mm ZZZ", timestamp())
  }

}