
# GCP Settings for captsone project
project_id          = "argon-radius-309605" # Enter your project ID here.
container_registry  = "gcr.io"
backend_image_name = "weathermicrosvc:v2.0"
frontend_image_name = "nodejsweatherapp:v2.1"
#backend_image_name = "weathermicrosvc@sha256:29eee881aee4bde0f0fc3bdee1d5871cd2c2b47702af015dc9ccd15d0cc265d5"
#frontend_image_name = "nodejsweatherapp@sha256:186cdf62d8720ccf40354e904419db9680abfd8c956fb3082f351adc33067d44"

# The image used by the deployments will be a URL created from 
# combining the above vars. For Example: 
# container_registry/project_id/external_image_name

gcp_region_1 = "us-central1"
gcp_zone_1   = "us-central1-a"

# Application Name (used in resource names, no spaces.)
app_name = "bipscapstoneprjdemo"