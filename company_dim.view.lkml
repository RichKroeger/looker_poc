view: company_dim {
  sql_table_name: dbo.COMPANY_DIM ;;

  dimension: company_name {
    type: string
    sql: ${TABLE}.COMPANY_NAME ;;
  }

  dimension: company_no {
    type: string
    sql: ${TABLE}.COMPANY_NO ;;
  }

  dimension: company_no_name {
    type: string
    sql: ${TABLE}.COMPANY_NO_NAME ;;
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

  measure: count {
    type: count
    drill_fields: [company_name, company_no_name]
  }
}
