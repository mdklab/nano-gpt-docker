FROM pytorch/pytorch:2.3.0-cuda12.1-cudnn8-runtime
LABEL authors="mdk"

RUN apt-get update && apt-get install -y build-essential
RUN export CC=/usr/bin/gcc

RUN pip install torch numpy transformers datasets tiktoken wandb tqdm
