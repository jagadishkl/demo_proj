provider "google" {
    credentials = "${file("./secrets/account.json")}"
    project     = "thrashingcorecode"
    region      = "us-west1"
}