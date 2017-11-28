view: manufacture_order {
  sql_table_name: fact.ManufactureOrder ;;

  dimension: aps_capability {
    hidden: yes
    type: string
    sql: ${TABLE}.ApsCapability ;;
  }

  dimension: comment {
    hidden: yes
    type: string
    sql: ${TABLE}.Comment ;;
  }

  dimension_group: created {
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
    sql: ${TABLE}.CreatedDt ;;
  }

  dimension: cumulative_lead_time_in_weeks {
    hidden: yes
    type: number
    sql: ${TABLE}.CumulativeLeadTimeInWeeks ;;
  }

  dimension_group: demand_planning {
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
    sql: ${TABLE}.DemandPlanningDt ;;
  }

  dimension: deviation_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.DeviationQty ;;
  }

  measure: total_deviation_qty {
    type: sum
    sql: ${deviation_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: finished_item_no {
    type: string
    sql: ${TABLE}.FinishedItemNo ;;
  }

  dimension: finished_item_warehouse_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.FinishedItemWarehouseCd ;;
  }

  dimension: is_active {
    hidden: yes
    type: string
    sql: ${TABLE}.IsActive ;;
  }

  dimension_group: last_activity {
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
    sql: ${TABLE}.LastActivityDt ;;
  }

  dimension_group: order_completion {
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
    sql: ${TABLE}.OrderCompletionDt ;;
  }

  dimension_group: order_due {
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
    sql: ${TABLE}.OrderDueDt ;;
  }

  dimension: order_no {
    primary_key: yes
    type: string
    sql: ${TABLE}.OrderNo ;;
  }

  dimension: order_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.OrderQty ;;
  }

  measure: total_order_qty {
    type: sum
    sql: ${order_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: order_status_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.OrderStatusCd ;;
  }

  dimension: planner_id {
    type: number
    sql: ${TABLE}.PlannerId ;;
  }

  dimension: received_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.ReceivedQty ;;
  }

  measure: total_received_qty {
    type: sum
    sql: ${received_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension_group: scheduled_last {
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
    sql: ${TABLE}.ScheduledLastDt ;;
  }

  dimension_group: scheduled_start {
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
    sql: ${TABLE}.ScheduledStartDt ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }


  set: detail {
    fields: [finished_item_no, total_order_qty, total_received_qty, total_deviation_qty]
  }
}
