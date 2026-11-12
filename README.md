# Commercial Intelligence & Profitability Analytics

Proyecto de portafolio de análisis comercial con SQL sobre **Distribuidora Cordillera**, una empresa ficticia. El objetivo es construir indicadores de desempeño comercial y rentabilidad estimada a partir de datos auditados.

## Hito 1 · Auditoría y calidad de datos

La auditoría se concentró en cuatro de las 17 tablas de la base: clientes, pedidos, líneas de pedido y productos. Revisé identificadores, relaciones entre tablas, consistencia de fechas y conciliación de importes.

- [Notebook de auditoría](notebooks/01_auditoria_datos.ipynb)
- [Base de datos SQLite](data/distribuidora_cordillera.sqlite)

La próxima etapa es construir el modelo analítico en SQL que servirá de base para los indicadores y el informe en Power BI.

## Cómo ejecutar el notebook

Necesitas conda y VS Code con las extensiones **Python** y **Jupyter**. Desde la carpeta principal del proyecto, ejecuta:

```bash
conda create -n road-to-bi python=3.11
conda activate road-to-bi
python -m pip install -r requirements.txt
```

Si ya tienes el entorno `road-to-bi`, actívalo y ejecuta el comando de instalación de dependencias.

Abre `notebooks/01_auditoria_datos.ipynb` en VS Code, selecciona `road-to-bi` como kernel y pulsa **Run All**. El directorio de trabajo del notebook debe ser `notebooks/`, porque la conexión busca la base en `../data/distribuidora_cordillera.sqlite`. La celda de conexión debe mostrar `Base encontrada: True`.
