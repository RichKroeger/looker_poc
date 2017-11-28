view: date_dim {
  sql_table_name: dbo.DATE_DIM ;;

  dimension_group: cal {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.CAL_DATE ;;
  }

  dimension: cal_day {
    type: number
    sql: ${TABLE}.CAL_DAY ;;
  }

#   dimension: cal_month {
#     type: number
#     sql: ${TABLE}.CAL_MONTH ;;
#   }

  dimension: cal_month_desc {
    type: string
    sql: ${TABLE}.CAL_MONTH_DESC ;;
  }

  dimension: cal_month_desc_short {
    type: string
    sql: ${TABLE}.CAL_MONTH_DESC_SHORT ;;
  }

  dimension: cal_qtr {
    type: number
    sql: ${TABLE}.CAL_QTR ;;
  }

  dimension: cal_qtr_desc {
    type: string
    sql: ${TABLE}.CAL_QTR_DESC ;;
  }

  dimension: cal_week_day {
    type: number
    sql: ${TABLE}.CAL_WEEK_DAY ;;
  }

  dimension: cal_week_day_desc {
    type: string
    sql: ${TABLE}.CAL_WEEK_DAY_DESC ;;
  }

  dimension: cal_week_day_desc_short {
    type: string
    sql: ${TABLE}.CAL_WEEK_DAY_DESC_SHORT ;;
  }

  dimension: cal_week_num {
    type: number
    sql: ${TABLE}.CAL_WEEK_NUM ;;
  }

#   dimension: cal_year {
#     type: number
#     sql: ${TABLE}.CAL_YEAR ;;
#   }

  dimension: current_day {
    type: number
    sql: ${TABLE}.CURRENT_DAY ;;
  }

  dimension: current_month {
    type: number
    sql: ${TABLE}.CURRENT_MONTH ;;
  }

  dimension: current_year {
    type: number
    sql: ${TABLE}.CURRENT_YEAR ;;
  }

  dimension: date_id {
    type: number
    sql: ${TABLE}.DATE_ID ;;
  }

  dimension: days_in_year {
    type: number
    sql: ${TABLE}.DAYS_IN_YEAR ;;
  }

  dimension_group: month_first_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MONTH_FIRST_DAY ;;
  }

  dimension_group: month_last_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.MONTH_LAST_DAY ;;
  }

  dimension: per_date {
    type: string
    sql: ${TABLE}.PER_DATE ;;
  }

  dimension: per_day {
    type: number
    sql: ${TABLE}.PER_DAY ;;
  }

  dimension: per_month {
    type: number
    sql: ${TABLE}.PER_MONTH ;;
  }

  dimension: per_month_desc {
    type: string
    sql: ${TABLE}.PER_MONTH_DESC ;;
  }

  dimension: per_year {
    type: number
    sql: ${TABLE}.PER_YEAR ;;
  }

  dimension_group: week_first_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.WEEK_FIRST_DAY ;;
  }

  dimension_group: week_last_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.WEEK_LAST_DAY ;;
  }

  dimension_group: year_first_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.YEAR_FIRST_DAY ;;
  }

  dimension_group: year_last_day {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.YEAR_LAST_DAY ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
