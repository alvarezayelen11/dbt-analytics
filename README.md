# dbt-analytics

Proyecto realizado en el marco del curso **dbt Fundamentals** y **Advanced Testing** disponibles en **[dbt Labs](https://learn.getdbt.com/catalog)**.

Su objetivo es construir un pipeline analítico simple utilizando **dbt Cloud** y **BigQuery**, aplicando buenas prácticas de modelado, tests y documentación.

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

## Authors

- [Ayelén Álvarez](https://www.linkedin.com/in/-ayelen-alvarez/)

---

### Resources:
- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [dbt community](https://getdbt.com/community) to learn from other analytics engineers
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices
