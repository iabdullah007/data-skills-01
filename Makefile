
init:
	pipenv shell && pipenv install


# download datasets locally
fetch-datasets:
	kaggle datasets download gauthamp10/apple-appstore-apps \
	&& unzip apple-appstore-apps.zip -d data/ \
	&& kaggle datasets download gauthamp10/google-playstore-apps \
	&& unzip google-playstore-apps.zip -d data/ \
	&& rm -rf apple-appstore-apps.zip google-playstore-apps.zip

# Start Jupyter: An Interactive Computing
start-jupyter:
	jupyter notebook notebooks

