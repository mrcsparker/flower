mkdir -p ./mlflow/mlruns
mkdir -p ./mlflow/mllogs

mlflow server \
    --backend-store-uri postgresql://mlflow_user:mlflow@localhost/mlflow_db \
    --default-artifact-root ./mlflow/mlruns \
    -h 0.0.0.0 -p 8000
