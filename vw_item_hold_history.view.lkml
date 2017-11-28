view: vw_item_hold_history {
  sql_table_name: WMS.vw_ItemHoldHistory ;;

  dimension: actual_qty_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.ActualQty ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.Comment ;;
  }

  dimension_group: created_dt_tm {
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
    sql: ${TABLE}.CreatedDtTm ;;
  }

  dimension: employee_name {
    type: string
    sql: ${TABLE}.EmployeeName ;;
  }

  dimension_group: history_dt_tm {
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
    sql: ${TABLE}.HistoryDtTm ;;
  }

  dimension: history_name {
    type: string
    sql: ${TABLE}.HistoryName ;;
  }

  dimension: hold_location {
    type: string
    sql: ${TABLE}.HoldLocation ;;
  }

  dimension: inventory_location {
    type: string
    sql: ${TABLE}.InventoryLocation ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.ItemName ;;
  }

  dimension: item_no {
    type: string
    sql: ${TABLE}.ItemNo ;;
  }

  dimension: license_plate {
    type: string
    sql: ${TABLE}.LicensePlate ;;
  }

  dimension: lot_no {
    type: string
    sql: ${TABLE}.LotNo ;;
  }

  dimension: reason {
    type: string
    sql: ${TABLE}.Reason ;;
  }

  dimension: warehouse_cd {
    type: string
    sql: ${TABLE}.WarehouseCd ;;
  }
  measure: ActualQty{
    type: sum
    sql: ${TABLE}.ActualQty ;;
  }
  measure: count {
    type: count
    drill_fields: [item_name, employee_name, history_name]
  }
}
