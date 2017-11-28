view: fmitem_monthly {
  sql_table_name: fact.FMItemMonthly ;;

  dimension: case_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.CaseQty ;;
  }

  measure: total_case_qty {
    type: sum
    sql: ${case_qty} ;;
    value_format_name: decimal_0
  }

  measure: forecast {
    type: sum
    sql: ${case_qty} ;;
    value_format_name: decimal_0
    filters: {
      field: fmmetric_id
      value: "4"
    }
    filters: {
      field: was_last_month
      value: "yes"
    }
  }

  dimension: was_last_month {
    hidden: yes
    type: yesno
    sql: DATEPART(MONTH, DATEADD(MONTH, -1, ${year_month_dt_date})) < DATEPART(MONTH, DATEADD(MONTH, -1, GETDATE())) ;;
  }

#   dimension: was_last_month {
#     hidden: yes
#     type: yesno
#     sql: DATEPART(MONTH, DATEADD(MONTH, -2, ${year_month_dt_date})) = DATEPART(MONTH, DATEADD(MONTH, -1, GETDATE())) AND DATEPART(YEAR, ${year_month_dt_date}) = DATEPART(YEAR, GETDATE())  ;;
#   }
#
#   dimension: was_prior_month {
#     hidden: yes
#     type: yesno
#     sql: DATEPART(MONTH, DATEADD(MONTH, -3, ${year_month_dt_date})) = DATEPART(MONTH, DATEADD(MONTH, -1, GETDATE())) AND DATEPART(YEAR, ${year_month_dt_date}) = DATEPART(YEAR, GETDATE())  ;;
#   }
#
#   measure: last_month_forecast {
#     type: sum
#     sql: ${case_qty} ;;
#     value_format_name: decimal_0
#     filters: {
#       field: fmmetric_id
#       value: "4"
#     }
#     filters: {
#       field: was_prior_month
#       value: "yes"
#     }
#   }
#
#   measure: last_month_actual {
#     type: sum
#     sql: ${case_qty} ;;
#     value_format_name: decimal_0
#     filters: {
#       field: fmmetric_id
#       value: "2"
#     }
#     filters: {
#       field: was_last_month
#       value: "yes"
#     }
#   }


  measure: actual {
    type: sum
    sql: ${case_qty} ;;
    value_format_name: decimal_0
    filters: {
      field: fmmetric_id
      value: "2"
    }
  }

  measure: abs_error {
    type: number
    sql: CASE WHEN ${actual} != 0 THEN abs(${forecast} - ${actual}) ELSE NULL END ;;
    value_format_name: decimal_0
  }

  measure: abs_error_percent {
    label: "Error %"
    type: number
    sql: 1.0 * ${abs_error} / NULLIF(${forecast},0) ;;
    value_format_name: percent_2
  }

  measure: WFA {
    label: "WFA"
    type: number
    sql: 1 - ${abs_error_percent};;
    value_format_name: percent_2
  }

  measure: attainment {
    type: number
    sql: 1.0 * ${forecast} / NULLIF(${actual},0) ;;
    value_format_name: percent_2
  }


  dimension: fmitem_id {
    hidden: yes
    type: number
    sql: ${TABLE}.FMItemId ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${fmitem_id},${year_month_dt_raw}, ${fmmetric_id}) ;;
  }

  dimension: fmmetric_id {
#     hidden: yes
  type: number
  sql: ${TABLE}.FMMetricId ;;
}

#   dimension: metric_name {
#     type: string
#     sql: CASE WHEN ${fmmetric_id} = 1 THEN ''
#       WHEN ;;
#   }

dimension_group: year_month_dt {
  label: "Forecast"
  type: time
  timeframes: [
    raw,
    date,
    week,
    month_num,
    month,
    quarter,
    year
  ]
  convert_tz: no
  datatype: date
  sql: ${TABLE}.YearMonthDt ;;
}

dimension_group: today {
  hidden: yes
  type: time
  timeframes: [raw, date, week, month, month_num, year]
  sql: CURRENT_TIMESTAMP() ;;
}

measure: count {
  hidden: yes
  type: count
  drill_fields: [fmitem.fmitem_id]
}
}
