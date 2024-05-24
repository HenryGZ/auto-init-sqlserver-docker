import os

# Caminho para a pasta que contém os arquivos TXT
folder_path = './data'

# Obtém a lista de arquivos TXT na pasta
txt_files = [f for f in os.listdir(folder_path) if f.endswith('.txt')]

# Percorre todos os arquivos TXT na pasta
for filename in txt_files:
    # Cria o caminho completo para o arquivo
    file_path = os.path.join(folder_path, filename)
    # Renomeia o arquivo para ter a extensão .csv
    os.rename(file_path, os.path.splitext(file_path)[0] + '.csv')