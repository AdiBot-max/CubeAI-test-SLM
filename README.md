# Custom Small Language Model (SLM)

A fully self-hosted AI system using:
- llama.cpp
- GGUF quantized model
- Render FREE plan
- No API keys
- No external AI services

## How it works
- User input → tokenized
- Model predicts next token
- Token appended
- Loop continues until completion

## Deployment
1. Upload repo to GitHub
2. Create Render Web Service
3. Select repo
4. Deploy

## Requirements
- Small GGUF model (5–20 MB)
- Render Free Plan

## UI
Open `/` to access the chat interface.
