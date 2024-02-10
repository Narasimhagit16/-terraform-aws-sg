variable "common_tags" {
    type = map
    default = {

    }
  
}

variable "sg_tags" {
    type=map
    default = {}
}

variable "environment" {
    type=string
    default = ""
  
}

variable "project_name" {
    type= string
    default = ""
  
}

variable "description" {
    type=string
    default = ""
  
}

variable "vpc_id" {
    #default = ""
    type = string
  
}

variable "sg_ingress-rules" {
    type = list
    default = []
  
}

variable "sg_name" {
    type = string
    default = ""

  
}