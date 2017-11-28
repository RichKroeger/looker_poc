view: terms_dim {
  sql_table_name: dbo.TERMS_DIM ;;

  dimension: day_due {
    type: number
    sql: ${TABLE}.DAY_DUE ;;
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

  dimension: month_end_cutoff {
    type: number
    sql: ${TABLE}.MONTH_END_CUTOFF ;;
  }

  dimension: terms_code {
    type: string
    sql: ${TABLE}.TERMS_CODE ;;
  }

  dimension: terms_code_desc {
    type: string
    sql: ${TABLE}.TERMS_CODE_DESC ;;
  }

  dimension: terms_desc {
    type: string
    sql: ${TABLE}.TERMS_DESC ;;
  }

  dimension: terms_discount_days {
    type: number
    sql: ${TABLE}.TERMS_DISCOUNT_DAYS ;;
  }

  dimension: terms_net_due_days {
    type: number
    sql: ${TABLE}.TERMS_NET_DUE_DAYS ;;
  }

  dimension: terms_percent {
    type: number
    sql: ${TABLE}.TERMS_PERCENT ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
