# Como instalar o Neovim na máquina local

### Primeiramente, baixe a ultima versão no github: 

```bash
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
```


### Após isso, adicione o caminho do neovim no seu arquivo de configuração do bash

```bash
vim ~/.bashrc # Também pode ser gedit, ou outro editor de texto
# Dentro do editor, certifique-se de colocar no fim do arquivo:
# export PATH="$PATH:/opt/linux64/bin
```

### Por fim, baixe alguma fonte que tenha compatibilidade com o NVIM_Tree

```bash
wget -P ~/.local/share/fonts https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/Meslo.zip \
&& cd ~/.local/share/fonts \
&& unzip Meslo.zip \
&& rm Meslo.zip \
&& fc-cache -fv
```
Não se esqueça de setar a fonte no seu terminal após isso.
Após realizar os passos descritos, basta rodar o comando "nvim" no terminal
