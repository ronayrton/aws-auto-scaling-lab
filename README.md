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


Passo a passo para executar localmente
1. Pré-requisitos
Antes de executar o projeto, certifique-se de que você possui as ferramentas necessárias instaladas em sua máquina:

Terraform : Baixe e instale o Terraform aqui .
AWS CLI : Configure suas credenciais AWS. Instalação aqui .
Chave SSH : Crie ou tenha uma chave SSH configurada na AWS para acesso às instâncias EC2.