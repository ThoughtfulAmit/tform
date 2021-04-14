
# GCP Settings for captsone project
project_id          = "project4-219618" # Enter your project ID here.
container_registry  = "gcr.io"
backend_image_name = "backendimage"
frontend_image_name = "frontendimage"

# The image used by the deployments will be a URL created from 
# combining the above vars. For Example: 
# container_registry/project_id/external_image_name

gcp_region_1 = "us-central1"
gcp_zone_1   = "us-central1-a"

# Application Name (used in resource names, no spaces.)
app_name = "devopsdemo"