# Variables for Postgres 
    variable "Postgres_User" {
        type = string
        default = "root"
    }

    variable "Postgres_Password" {
        type = string
        default = "root"
    }

    variable "Postgres_Database_Name" {
        type = string
        default = "postgres_db"
    }

    variable "Postgres_Internal_Port" {
        type = number
        default = 5432
    }

    variable "Postgres_External_Port" {
        type = number
        default = 5432
    }

# Variables for Gitea
    variable "Gitea_Internal_Port" {
        type = number
        default = 3000
    }

    variable "Gitea_External_Port" {
        type = number
        default = 3000
    }

# Variables for Jenkins
    variable "Jenkins_Internal_Port" {
        type = number
        default = 8080
    }

    variable "Jenkins_External_Port" {
        type = number
        default = 8080
    }

# Variables for Sonar
    variable "Sonar_Internal_Port" {
        type = number
        default = 9000
    }

    variable "Sonar_External_Port" {
        type = number
        default = 9000
    }