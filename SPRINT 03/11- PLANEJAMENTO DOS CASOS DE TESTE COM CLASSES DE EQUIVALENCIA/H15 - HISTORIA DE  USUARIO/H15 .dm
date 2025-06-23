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
