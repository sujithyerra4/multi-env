# variable "ami_id" {
#     type = string 
#     default = "ami-09c813fb71547fc4f"
# }
variable "zone" {
    type = string 
    default = "sujithyerra.online"
}
variable "zone_id" {
    type = string 
    default = "Z0831551EOMBVO2FFO1Z"
}

variable "instances" {
    type = map

    # default = {
    # mysql="t2.small"
    # backend="t2.micro"
    # frontend="t2.micro"

    # }   
}

variable "common_tags"{
    type = map
    default={
        Project = "Expense"
        Environment ="dev"
        terraform ="true"
    }
}

variable "tags"{
type=map
# default= {
#     Name = "backend"
#     Project="Expense"
#     Component="backend"
#     Environment="dev"
#     Terraform="true"
# }
}

# variable "sg_name"{
#     default= "allow-shh"
#     type =string
# }

variable "sg_description"{
    default= "allow port 22"
}

variable "from_port"{
    type=number
    default= 22
}

variable "to_port"{
    type=number
    default= 22
}

variable "protocol"{
    type=number
    default= 22
}

variable "ingress_cidr"{
    type=list(string)
    default= ["0.0.0.0/0"]
}