variable "multi_az" {
        description = "specifies if the rds instance is multi-az"
        type = bool
        default = true
}

variable "family" {
        description = "specifies the family"
        type = string
        default = "mysql5.7"
}

variable "major_engine_version" {
        description = "DB option group"
        type = string
        default = 5.7
}
