view: division_dim {
  sql_table_name: dbo.DIVISION_DIM ;;

  dimension: division_name {
    type: string
    sql: ${TABLE}.DIVISION_NAME ;;
  }

  dimension: division_no {
    type: number
    sql: ${TABLE}.DIVISION_NO ;;
  }

  dimension: division_no_name {
    type: string
    sql: ${TABLE}.DIVISION_NO_NAME ;;
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
    drill_fields: [division_name, division_no_name]
  }
}
