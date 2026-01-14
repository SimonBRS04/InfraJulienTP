terraform {
    required_providers {
        docker = {
            source = "kreuzwerker/docker"
            version = "~> 3.0"
        }
    }
}

provider "docker" {}

# Create a Docker network
    resource "docker_network" "devops_net" {
        name = "devops_net"
    }

# Create a Docker volume for PostgreSQL data persistence
    resource "docker_volume" "pg_volume" {
        name = "pg_volume"
    }

# Create a PostgreSQL container
    resource "docker_container" "pg_container" {
        image = "postgres:latest"
        name  = "pg_data"

        networks_advanced {
            name = docker_network.devops_net.name
        }

        env = [
            "POSTGRES_USER      = ${var.Postgres_User}",
            "POSTGRES_PASSWORD  = ${var.Postgres_Password}",
            "POSTGRES_DB        = ${var.Postgres_Database_Name}"
        ]

        volumes {
            volume_name    = docker_volume.pg_volume.name
            container_path = "/var/lib/postgresql/data"
        }

        ports {
            internal = var.Postgres_Internal_Port
            external = var.Postgres_External_Port
        }
    }

# Create a Gitea Volume for data persistence
    resource "docker_volume" "gitea_volume" {
        name = "gitea_data"
    }

# Create a Gitea container
    resource "docker_container" "gitea_container" {
        image = "gitea/gitea:latest"
        name  = "gitea_app"

        networks_advanced {
            name = docker_network.devops_net.name
        }

        volumes {
            volume_name    = docker_volume.gitea_volume.name
            container_path = "/data"
        }

        env = [
            "USER_UID=1000",
            "USER_GID=1000",
            "GITEAserverDOMAIN=localhost",
            "GITEAserverROOT_URL=http://localhost:${var.Gitea_External_Port}/"
        ]

        ports {
            internal = var.Gitea_Internal_Port
            external = var.Gitea_External_Port
        }
    }

# Create a Jenkins Volume for data persistence
    resource "docker_volume" "jenkins_volume" {
        name = "jenkins_home"
    }

# Create a Jenkins container
    resource "docker_container" "jenkins_container" {
        image = "jenkins/jenkins:lts-jdk21"
        name  = "jenkins_app"

        networks_advanced {
            name = docker_network.devops_net.name
        }
        
        depends_on = [docker_network.devops_net]
        
        volumes {
            volume_name    = docker_volume.jenkins_volume.name
            container_path = "/var/jenkins_home"
        }

        ports {
            internal = var.Jenkins_Internal_Port
            external = var.Jenkins_External_Port
        }
    }

# Create a SonarQube Volume for data persistence
    resource "docker_volume" "sonar_volume" {
        name = "sonar_data"
    }

# Create a SonarQube container
    resource "docker_container" "sonar_container" {
        image = "sonarqube:community"
        name  = "sonar_app"

        networks_advanced {
            name = docker_network.devops_net.name
        }

        volumes {
            volume_name    = docker_volume.sonar_volume.name
            container_path = "/opt/sonarqube/data"
        }

        env = [
            "SONARQUBE_JDBC_URL=jdbc:postgresql://pg_data:${var.Postgres_Internal_Port}/${var.Postgres_Database_Name}",
            "SONARQUBE_JDBC_USERNAME=${var.Postgres_User}",
            "SONARQUBE_JDBC_PASSWORD=${var.Postgres_Password}"
        ]
        ports {
            internal = var.Sonar_Internal_Port
            external = var.Sonar_External_Port
        }
    }