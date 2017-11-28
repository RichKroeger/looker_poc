view: sales_territory_dim {
  sql_table_name: dbo.SALES_TERRITORY_DIM ;;

  dimension: company_no {
    type: string
    sql: ${TABLE}.COMPANY_NO ;;
  }

  dimension_group: insert_dt {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.INSERT_DT ;;
  }

  dimension: salesrep_name {
    type: string
    sql: ${TABLE}.SALESREP_NAME ;;
  }

  dimension: salesrep_no {
    type: string
    sql: ${TABLE}.SALESREP_NO ;;
  }

  dimension: salesrep_no_name {
    type: string
    sql: ${TABLE}.SALESREP_NO_NAME ;;
  }

  dimension: salesrep_status {
    type: string
    sql: ${TABLE}.SALESREP_STATUS ;;
  }

  dimension: territory_id {
    type: string
    sql: ${TABLE}.TERRITORY_ID ;;
  }

  dimension: territory_id_name {
    type: string
    sql: ${TABLE}.TERRITORY_ID_NAME ;;
  }

  dimension: territory_name {
    type: string
    sql: ${TABLE}.TERRITORY_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [territory_name, territory_id_name, salesrep_name, salesrep_no_name]
  }
}
