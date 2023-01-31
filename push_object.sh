PROJECT_ID=bq-finops
STORAGE_BUCKET=ok-raw-landing-20230130

gcloud storage cp readings.csv gs://$STORAGE_BUCKET \
    --project=$PROJECT_ID