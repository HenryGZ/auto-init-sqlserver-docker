import pandas as pd
import os
from tqdm import tqdm

# Caminho para a pasta que contém os arquivos CSV
folder_path = './data'

# Obtém a lista de arquivos CSV na pasta
csv_files = [f for f in os.listdir(folder_path) if f.endswith('.csv')]

# Percorre todos os arquivos na pasta com uma barra de progresso
for filename in tqdm(csv_files, desc="Processing files", unit="file"):
    # Cria o caminho completo para o arquivo
    file_path = os.path.join(folder_path, filename)
    
    # Lê o arquivo CSV como um único bloco de texto
    with open(file_path, 'r', encoding='utf-8') as f:
        lines = f.read().splitlines()

    # Processa as linhas individualmente
    data = []
    for line in lines:
        # Divide a linha em campos, remove espaços em branco e adiciona à lista de dados
        fields = [field.strip() for field in line.split(',')]
        data.append(fields)

    # Verifica se o número de colunas corresponde ao número de nomes de colunas
    if len(data[0]) != len(data[1]):
        print(f'Warning: The file {filename} has mismatched number of columns. Trimming extra columns...')
        # Remove as últimas colunas de cada linha que não têm um cabeçalho correspondente
        data = [row[:len(data[0])] for row in data]

    # Cria um DataFrame a partir dos dados
    df = pd.DataFrame(data[1:], columns=data[0])
    
    # Escreve os dados de volta para o arquivo CSV
    df.to_csv(file_path, index=False)