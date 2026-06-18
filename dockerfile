FROM ollama/ollama:latest

# Expose Ollama port
EXPOSE 11434

# Start server and pull model
ENTRYPOINT ["/bin/sh", "-c"]
CMD ["ollama serve & sleep 15 && ollama pull llama3.2 && tail -f /dev/null"]
