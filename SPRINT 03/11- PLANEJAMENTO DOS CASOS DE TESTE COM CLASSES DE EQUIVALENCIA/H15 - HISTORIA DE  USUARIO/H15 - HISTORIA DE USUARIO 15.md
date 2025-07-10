# H15 - Como usuária premium, quero agendar sessões com uma nutricionista integrada à plataforma para que eu possa receber orientações personalizadas de acordo com meus objetivos de saúde.
# Critérios de Aceitação
| Código | Descrição |
|------- |---------- |
| AC | O sistema deve permitir que a usuária visualize a agenda disponível das nutricionistas parceiras. |
| AC | A usuária deve conseguir selecionar dia e horário para agendar uma sessão com a nutricionista . |
| AC | O sistema deve enviar uma confirmação do agendamento por notificação e/ou e-mail. |
| AC | A usuária deve poder cancelar ou remarcar a sessão com 24 horas de antecedência. |
| AC | Após a sessão, a nutricionista deve poder registrar um breve resumo ou plano de orientação alimentares, acessível pela usuária. |

# Regra de Negócio 
| Código | Descrição |
|------- |---------- |
| RN | Apenas usuárias com plano premium podem agendar sessões com nutricionistas. |
| RN | Cada nutricionista pode definir seus horários disponíveis através de um painel administrativo. |
| RN | O número máximo de sessões por mês pode ser limitado 4 vezes. |
| RN | O sistema deve bloquear agendamentos em horários já ocupados por outras usuárias. |
| RN | Cancelamentos feitos com menos de 24 horas de antecedência não geram direito a reagendamento gratuito. |

##  Tabela de Classes de Equivalência 

| Condição de Entrada | Classes Válidas | Classes Inválidas | Classes Inválidas |
|---------------------|-----------------|-------------------|-------------------|
| A usuária possui plano premium | Usuária é premium (1) | Usuária é free (2) | Usuária sem cadastro (3) |
| Data/Horário disponível | Horário disponível (4) | Horário já ocupado (5) | Horário fora da agenda da nutricionista (6) |
| Antecedência mínima para cancelamento | Cancelamento com +24h de antecedência (7) | Cancelamento com menos de 24h (8) | Tentativa de cancelamento após o horário da sessão (9) |
| Limite de sessões por mês | Sessões dentro do limite de 4 por mês (10) | Excedeu o limite mensal (11) | Tentativa de agendar mais de uma sessão para o mesmo horário (12) |

---

##  Tabela de Casos de Teste 

| Caso de Teste | Classes de Equivalência | Entradas | Resultado Esperado |
|---------------|-------------------------|--------- |-------------------|
| Caso 1 | 1, 4, 7, 10 | Usuária premium agenda horário disponível e cancela com 30h de antecedência | Agendamento e cancelamento válidos |
| Caso 2 | 2, 4, 7, 10 | Usuária free tenta agendar | Agendamento inválido |
| Caso 3 | 1, 5, 7, 10 | Usuária premium tenta agendar em horário já ocupado | Agendamento inválido |
| Caso 4 | 1, 4, 8, 10 | Usuária premium tenta cancelar com menos de 24h de antecedência | Cancelamento inválido |
| Caso 5 | 1, 4, 7, 11 | Usuária premium tenta agendar a quinta sessão no mesmo mês | Agendamento inválido |
| Caso 6 | 1, 6, 7, 10 | Usuária premium tenta agendar em horário fora da agenda da nutricionista | Agendamento inválido |
