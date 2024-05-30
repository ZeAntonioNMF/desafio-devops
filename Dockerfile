FROM python:3.8-slim

# Define o diretório de trabalho dentro do container
WORKDIR /app

# Copia o arquivo requirements.txt para o container
COPY requirements.txt ./

# Instala as dependências
RUN pip install -r requirements.txt

# Copia o código da aplicação para o container
COPY api.py ./

# Expondo a porta da aplicação
EXPOSE 8000

# Executa a aplicação com Gunicorn
CMD ["gunicorn", "-w", "1", "--log-level", "debug", "-b", "0.0.0.0:8000", "api:app"]