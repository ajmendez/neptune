FROM anibali/pytorch:cuda-8.0


RUN pip install matplotlib pandas numpy jupyter 
RUN pip install xgboost catboost lightgbm seaborn
RUN pip install git+https://github.com/scikit-optimize/scikit-optimize.git
RUN pip install catboost==0.8.1.1

EXPOSE 8888
