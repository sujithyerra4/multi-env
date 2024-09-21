variable "instance_type" {
    type = map

    default = {
    # mysql="t2.small"
    # backend="t2.micro"
    # frontend="t2.micro"
    dev ="t2.micro"
    prod ="t2.small"

    }   
}
