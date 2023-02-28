terraform {
  cloud {
    organization = "successive28"

    workspaces {
      name = "training"
    }
  }
}