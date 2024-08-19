git clone https://github.com/blazp04-fakultet/flux-ai.git
cd flux-ai
python3 -m venv venv
source venv/bin/activate
pip install torch torchvision onnxruntime-gpu accelerate wandb opencv-python-headless matplotlib timm
pip install -r requirements.txt
huggingface-cli login

accelerate config
accelerate launch train_flux_lora_deepspeed.py --config "train_configs/test_lora.yaml"

watch -n 1 nvidia-smi
