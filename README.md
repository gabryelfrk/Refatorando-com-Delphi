Código legado (procedural, acoplado e difícil de manter):
- Regra de negócio misturada com UI
- SQL hardcoded
- Repetição em todo sistema
- Difícil testar
- Alto acoplamento

Refatoração com abordagem genérica com RTTI + Attributes:
O que mudou de verdade?
- Antes: Código duplicado, Dependência de formulário, SQL espalhado
- Depois: Reutilização total, Baixo acoplamento, Extensível para qualquer entidade, Pronto para API / serviços

A parte avançada (que diferencia sênior de pleno):
- Esse código ainda pode evoluir para:
  Cache de RTTI (evitar custo de reflexão)
  Mapper por atributos (nome de coluna ≠ nome da property)
  Unit of Work
  Suporte a UPDATE / DELETE dinâmico
  Lazy loading

