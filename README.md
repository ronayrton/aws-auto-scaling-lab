## Atualizações do Projeto

### Automação com Terraform e GitHub Actions
1. **Terraform**: Automatiza a criação da infraestrutura AWS.
2. **User Data**: Provisiona as instâncias EC2 automaticamente.
3. **GitHub Actions**: CI/CD configurado para:
   - Validar e aplicar as mudanças no Terraform automaticamente ao fazer um `push` na branch `main`.
4. **Backend Remoto (S3)**: Permite salvar o `state` do Terraform para maior segurança e colaboração.

### Estrutura do Projeto
- `architecture/`: Diagrama atualizado da arquitetura.
- `terraform/`: Scripts Terraform para provisionamento.
- `scripts/`: Configuração inicial das instâncias.
- `.github/workflows/`: Pipeline CI/CD.


### Passo a passo para executar localmente
1. Pré-requisitos
Antes de executar o projeto, certifique-se de que você possui as ferramentas necessárias instaladas em sua máquina:

Terraform : Baixe e instale o Terraform.
AWS CLI : Configure suas credenciais AWS.
Chave SSH : Crie ou tenha uma chave SSH configurada na AWS para acesso às instâncias EC2.


2. Configurar como Credenciais da AWS
Configure suas credenciais na AWS CLI com o comando:

aws configure

Informe os dados:

ID da chave de acesso da AWS
Chave de acesso secreta da AWS
Região padrão :us-east-1

3. Baixar o Projeto
Clone o repositório do projeto para sua máquina local:

git clone https://github.com/SEU_USUARIO/aws-auto-scaling-lab.git
cd aws-auto-scaling-lab/terraform


4. Inicializar e executar o Terraform
Navegue até a pasta do Terraform e execute os seguintes comandos:

Inicializar o Terraform : terraform init
Validar a configuração : terraform validate
Executar o plano (opcional) : terraform plan
Aplicar as configurações : terraform apply -auto-approve


5. Acompanhar o Auto Scaling
Acesse o AWS Management Console :

EC2 > Grupos de dimensionamento automático.
Veja as instâncias sendo criadas e removidas de acordo com a métrica de CPU.
Teste com um simulador de carga (exemplo: stress-ng) para validar o comportamento do Auto Scaling.

6. Destruir uma infraestrutura (opcional)
Ao terminar os testes, você pode destruir tudo para evitar custos: terraform destroy -auto-approve


## Enviar repositório local para github

git init
git remote add origin https://github.com/usuario/nome-do-repositorio.git
git add .
git commit -m "Primeiro commit"
git push -u origin main


## Conclusão
Esse projeto, com todos os arquivos e scripts, pode ser executado localmente. Ele é totalmente automatizado com o Terraform , fácil de configurar e inclui uma documentação clara.



Testes