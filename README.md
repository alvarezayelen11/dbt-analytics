# dbt-analytics

Proyecto de práctica enfocado en el desarrollo de un pipeline analítico con **dbt Cloud** y **BigQuery**.

El objetivo es implementar un flujo de transformación de datos aplicando buenas prácticas de modelado, testing y documentación, siguiendo los estándares recomendados por la comunidad de dbt.

Este proyecto fue inspirado en los contenidos de los programas **dbt Fundamentals** y **Advanced Testing** disponibles en **[dbt Labs](https://learn.getdbt.com/catalog)**.

---

## **Características principales**

- 🔹 **Fuentes (`sources`)** configuradas para `raw.customers` y `raw.orders`.
- 🔹 **Modelos de staging** para estandarizar datos antes de construir capas analíticas.
- 🔹 **Modelos de marts**:  
  - `dim_customers`: dimensión enriquecida de clientes con métricas y `lifetime_value`.  
  - `fct_orders`: tabla de hechos que combina pedidos y pagos.
- 🔹 **Tests genéricos**: `unique`, `not_null`, `accepted_values`, `relationships`.
- 🔹 **Test singular**: valida que el monto total de pagos nunca sea negativo.
- 🔹 **Documentación**: modelos y columnas documentadas con dbt Docs.

---
## 📂 **Estructura del proyecto**

```
dbt-analytics/
├── models/
│   ├── staging/
│   │   ├── jaffle_shop/
│   │   │   ├── src_jaffle_shop.yml              # Definición de sources para customers y orders
│   │   │   ├── stg_jaffle_shop__customers.sql   # Modelo staging de clientes
│   │   │   ├── stg_jaffle_shop__orders.sql      # Modelo staging de órdenes
│   │   │   └── stg_jaffle_shop.yml              # Tests y documentación de modelos
│   │   └── stripe/
│   │       └── stg_stripe__payments.sql         # Modelo staging de pagos Stripe
│   └── marts/
│       ├── marketing/
│       │   └── dim_customers.sql                # Dimensión de clientes con métricas de pedidos
│       └── finance/
│           └── fct_orders.sql                   # Tabla de hechos de pedidos
├── tests/
│   └── assert_positive_value_for_total_amount.sql # Test singular para validar montos positivos
└── dbt_project.yml                              # Configuración principal de dbt
```

---

## Authors

- [Ayelén Álvarez](https://www.linkedin.com/in/-ayelen-alvarez/)

---

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
