FROM ollama/ollama:latest

# Pull the model during image build
RUN ollama pull llama3.2

# Expose Ollama port
EXPOSE 11434

# Start the server
CMD ["serve"]
