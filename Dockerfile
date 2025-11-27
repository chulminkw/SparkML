FROM mcr.microsoft.com/mmlspark/release:latest

RUN apt-get update && apt-get install -y wget unzip  && rm -rf /var/lib/apt/lists/*

EXPOSE 8888

# Install scikit-learn
RUN pip install --no-cache-dir scikit-learn==1.7.2 matplotlib==3.10.7 seaborn==0.13.2 hyperopt 