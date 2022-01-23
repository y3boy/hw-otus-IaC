variable "yc_cloud" {
    type = string
    description = "Yandex Cloud ID"
}

variable "yc_folder" {
    type = string
    description = "Yandex Cloud folder"
}

variable "yc_token" {
    type = string
    description = "Yandex Cloud token "
}

variable "db_password" {
    type = string
    description = "MySQL password"
}

variable "computer_instance_name" {
    description  = "Task with 2 stars"
    type         = list(string)
    default      = ["wp-app-1", "wp-app-2"]
}

variable "computer_instance_zone" {
    description  = "Task with 2 stars"
    type         = list(string)
    default      = ["ru-central1-a", "ru-central1-b"]
}

variable "computer_instance_subnet_id" {
    description  = "Task with 2 stars"
    type         = list(string)
    default      = ["yandex_vpc_subnet.wp-subnet-a.id", "yandex_vpc_subnet.wp-subnet-b.id"]
}

variable "yandex_lb_target_group_addres" {
    description  = "Task with 2 stars"
    type         = list(string)
    default      = ["yandex_compute_instance.wp-app-1.network_interface.0.ip_address", "yandex_compute_instance.wp-app-2.network_interface.0.ip_address"]
}