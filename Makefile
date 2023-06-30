mlflow_up:
	docker-compose -f /mlflow/docker-compose.yml up -d
# mlflow_down:
# 	docker-compose -f /mlflow/docker-compose.yml down

predictor_up:
	bash /deploy.sh run_predictor 5040

# predictor_down:
# 	PORT=5040 docker-compose -f deployment/model_predictor/docker-compose.yml down

# predictor_restart:
# 	PORT=5040 docker-compose -f deployment/model_predictor/docker-compose.yml stop
# 	PORT=5040 docker-compose -f deployment/model_predictor/docker-compose.yml start

# teardown:
# 	make predictor_down
# 	make mlflow_down