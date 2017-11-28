view: credit_debit_reason_dim {
  sql_table_name: dbo.CREDIT_DEBIT_REASON_DIM ;;

  dimension: credit_memo_reason_code {
    type: string
    sql: ${TABLE}.CREDIT_MEMO_REASON_CODE ;;
  }

  dimension: credit_memo_reason_code_desc {
    type: string
    sql: ${TABLE}.CREDIT_MEMO_REASON_CODE_DESC ;;
  }

  dimension: credit_memo_reason_dsc {
    type: string
    sql: ${TABLE}.CREDIT_MEMO_REASON_DSC ;;
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
    drill_fields: []
  }
}
