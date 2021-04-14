provider "google" {
    project = "my-project-12635-310612"
    credentials = file("my-project-12635-310612-2555c24878f3.json")
    region      = "us-central1"
    zone =  "us-central1-c"

}
#learn-1
resource "google_compute_instance" "learn-1" {
  name         = "learn-1"
  machine_type = "micro"
  zone         = "us-west1-a"
 

  network_interface {
    network = "default"

    
  }

  
}

 #learn-2
 resource "google_compute_instance" "learn-2" {
  name         = "learn-2"
  machine_type = "micro"
  zone         = "us-west1-a"
  


  network_interface {
    network = "learnauto"
    subnet  = "learnauto"

    
  }

  
}

#learn-3
resource "google_compute_instance" "learn-3" {
  name         = "learn-3"
  machine_type = "micro"
  zone         = "us-central"
  

  network_interface {
    network = "learncustom"
    subnet  = "subnet-1a"

    
  }

  
}
#learn-4
resource "google_compute_instance" "learn-4" {
  name         = "learn-1"
  machine_type = "micro"
  zone         = "us-central1-b"
 

  network_interface {
    network = "learncustom"
    subnet  = "subnet-1b"

    
  }

  
}
#learn-5
resource "google_compute_instance" "learn-5" {
  name         = "learn-1"
  machine_type = "micro"
  zone         = "us-west1-a"
  


  network_interface {
    network = "learncustom"
    subnet  = "subnet-2"

    
  }

  
}