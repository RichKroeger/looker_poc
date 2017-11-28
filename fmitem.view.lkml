view: fmitem {
  sql_table_name: fact.FMItem ;;

  dimension: fmitem_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.FMItemId ;;
  }

  dimension: abc2_cd {
    label: "ABC 2"
    type: string
    sql: ${TABLE}.ABC2Cd ;;
  }

  dimension: abc3_cd {
    label: "ABC 3"
    type: string
    sql: ${TABLE}.ABC3Cd ;;
  }

  dimension: abc4_cd {
    label: "ABC 4"
    type: string
    sql: ${TABLE}.ABC4Cd ;;
  }

  dimension: apscapability {
    type: string
    sql: ${TABLE}.APSCapability ;;
  }

  dimension: corporation_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.CorporationCd ;;
  }

  dimension: current_mtdopen_order_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.CurrentMTDOpenOrderQty ;;
  }

  measure: total_current_mtd_open_order_qty {
    type: sum
    sql: ${current_mtdopen_order_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: current_mtd_shipped_order_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.CurrentMTDShippedOrderQty ;;
  }

  measure: total_current_mtd_shipped_order_qty {
    type: sum
    sql: ${current_mtd_shipped_order_qty} ;;
    value_format_name: decimal_0
  }


  dimension: forecast_ind {
    hidden: yes
    type: string
    sql: ${TABLE}.ForecastInd ;;
  }

  dimension_group: inserted_dt_tm {
    hidden: yes
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
    sql: ${TABLE}.InsertedDtTm ;;
  }

  dimension: item_no {
    type: string
    sql: ${TABLE}.ItemNo ;;
  }

  dimension: past_due_open_order_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.PastDueOpenOrderQty ;;
  }

  measure: total_past_due_open_order_qty {
    type: sum
    sql: ${past_due_open_order_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  measure: total_short_quantity {
    type: number
    sql: CASE WHEN ${total_current_mtd_open_order_qty} > ${inventory_balance_analysis_fact.total_qty} THEN (${total_current_mtd_open_order_qty} - ${inventory_balance_analysis_fact.total_qty}) ELSE NULL END  ;;
    value_format_name: decimal_0
  }

  measure: total_short_dollars {
    type: number
    sql: ${inventory_balance_analysis_fact.average_standard_unit_cost} * ${total_short_quantity};;
    value_format_name: usd
  }

  dimension: planner_id {
    type: number
    sql: ${TABLE}.PlannerId ;;
  }

  dimension: ship_to_warehouse_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.ShipToWarehouseCd ;;
  }

  dimension_group: updated_dt_tm {
    hidden: yes
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
    sql: ${TABLE}.UpdatedDtTm ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [fmitem_id, fmitem_monthly.count]
  }

  set: detail {
    fields: [fmitem_id, total_current_mtd_shipped_order_qty, total_current_mtd_shipped_order_qty, total_short_dollars]
  }
}
