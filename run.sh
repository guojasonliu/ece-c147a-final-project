tmux new -s train

python -m emg2qwerty.train model=transformer_ctc

# Ctrl+b  then  d

tmux attach -t train

# tmux kill-session -t train

python -m emg2qwerty.train \
    model=transformer_ctc \
    user=single_user \
    decoder=ctc_beam_transformer \
    train=false \
    checkpoint='/repos/jason/logs/2026-03-06/20-13-10/checkpoints/last.ckpt'