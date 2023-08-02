FROM tensorflow/serving

COPY ./models/ /models/

ENV MODEL_NAME=saved_model

EXPOSE 8501

CMD ["tensorflow_model_server", "--model_base_path=/models/"]