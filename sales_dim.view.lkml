view: sales_dim {
  sql_table_name: dbo.SALES_DIM ;;

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

  dimension: pk_id {
    type: number
    sql: ${TABLE}.PK_ID ;;
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

  measure: count {
    type: count
    drill_fields: [salesrep_name, salesrep_no_name]
  }
}
