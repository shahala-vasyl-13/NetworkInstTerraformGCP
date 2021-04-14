module "vpc" {
    source  = "terraform-google-modules/network/google"
    version = "~> 3.0"

    project_id   = "LocalNetworkGCloud"
    network_name = "example-vpc"
    routing_mode = "GLOBAL"

    subnets = [
        {
            subnet_name           = "subnet-1a"
            subnet_ip             = "192.168.5.0/24"
            subnet_region         = "us-central1"
        },
        {
            subnet_name           = "subnet-1a"
            subnet_ip             = "192.168.3.0/24"
            subnet_region         = "us-central1"
            subnet_private_access = "true"
            subnet_flow_logs      = "true"
            description           = "This subnet has a description"
        },
        {
            subnet_name               = "us-east4-a"
            subnet_ip                 = "192.168.7.0/24"
            subnet_region             = "us-west1"
            subnet_flow_logs          = "true"
            subnet_flow_logs_interval = "INTERVAL_10_MIN"
            subnet_flow_logs_sampling = 0.7
            subnet_flow_logs_metadata = "INCLUDE_ALL_METADATA"
        }
    ]

    

    routes = [
        {
            name                   = "allow-ssh-icmp-rdp-learncustom"
            description            = "route through IGW to access internet"
            destination_range      = "0.0.0.0/0"
            tags                   = "allow-defaults"
            next_hop_internet      = "true"
            protocols_and_ports    = "Specified protocols and ports"
        },
        
    ]
}