view: inventory_balance_analysis_fact {
  sql_table_name: dbo.INVENTORY_BALANCE_ANALYSIS_FACT ;;

  dimension: abc_code {
    type: string
    sql: ${TABLE}.ABC_CODE ;;
  }

  dimension: abc_restage_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ABC_RESTAGE_CODE ;;
  }

  dimension: accounting_code {
    type: string
    sql: ${TABLE}.ACCOUNTING_CODE ;;
  }

  dimension: accounting_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.ACCOUNTING_CODE_DESC ;;
  }

  dimension: accounting_desc {
    type: string
    sql: ${TABLE}.ACCOUNTING_DESC ;;
  }

  dimension: attribute_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTRIBUTE_CODE ;;
  }

  dimension: brand_code_description {
    type: string
    sql: ${TABLE}.BRAND_CODE_DESCRIPTION ;;
  }

  dimension: brand_family_description {
    type: string
    sql: ${TABLE}.BRAND_FAMILY_DESCRIPTION ;;
  }

  dimension: business_type_code {
    hidden: yes
    type: string
    sql: ${TABLE}.BUSINESS_TYPE_CODE ;;
  }

  dimension: category_code {
    type: string
    sql: ${TABLE}.CATEGORY_CODE ;;
  }

  dimension: class_code {
    hidden: yes
    type: string
    sql: ${TABLE}.CLASS_CODE ;;
  }

  dimension: commodity_code {
    hidden: yes
    type: string
    sql: ${TABLE}.COMMODITY_CODE ;;
  }

  dimension: company_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.COMPANY_DESC ;;
  }

  dimension: company_no {
    hidden: yes
    type: string
    sql: ${TABLE}.COMPANY_NO ;;
  }

  dimension: current_restage_item_description {
    hidden: yes
    type: string
    sql: ${TABLE}.CURRENT_RESTAGE_ITEM_DESCRIPTION ;;
  }

  dimension: current_unit_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.CURRENT_UNIT_COST ;;
  }

  measure: average_unit_cost {
    type: average
    sql: ${TABLE}.CURRENT_UNIT_COST ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: customer_item_number {
    hidden: yes
    type: string
    sql: ${current_unit_cost} ;;
  }

  dimension: demand_plan_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.DEMAND_PLAN_QTY ;;
  }

  dimension: f_flag {
    description: "Frequency"
    type: string
    sql: ${TABLE}.F_FLAG ;;
  }

  dimension_group: insert_dt {
    hidden: yes
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
    sql: ${TABLE}.INSERT_DT ;;
  }

  dimension: inventory_value {
    hidden: yes
    type: number
    sql: ${TABLE}.INVENTORY_VALUE ;;
  }

  dimension: item_accounting_class {
    type: string
    sql: ${TABLE}.ITEM_ACCOUNTING_CLASS ;;
  }

  dimension: item_class {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_CLASS ;;
  }

  dimension: item_country_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_COUNTRY_CODE ;;
  }

  dimension: item_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_DESC ;;
  }

  dimension: primary_key {
    hidden: yes
    primary_key: yes
    type: string
    sql: concat(${period_mord}, ${current_restage_item_description}, CONVERT(varchar(10), ${qty})) ;;
  }

  dimension: item_no {
    type: string
    sql: ${TABLE}.ITEM_NO ;;
  }

  dimension: item_no_desc {
    type: string
    sql: ${TABLE}.ITEM_NO_DESC ;;
  }

  dimension: item_type_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_TYPE_CODE ;;
  }

  dimension_group: period_dt {
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
    convert_tz: no
    datatype: date
    sql: ${TABLE}.PERIOD_DT ;;
  }

  dimension: period_id {
    hidden: yes
    type: number
    sql: ${TABLE}.PERIOD_ID ;;
  }

  dimension: period_yr {
    hidden: yes
    type: number
    sql: ${TABLE}.PERIOD_YR ;;
  }

  dimension: period_mord {
    type: string
    sql: ${TABLE}.PERIODMORD ;;
  }

  dimension: pricepoint_code {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICEPOINT_CODE ;;
  }

  dimension: pricepoint_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICEPOINT_CODE_DESC ;;
  }

  dimension: pricepoint_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICEPOINT_DESC ;;
  }

  dimension: product_code {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_CODE ;;
  }

  dimension: product_name_code {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_NAME_CODE ;;
  }

  dimension: product_name_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_NAME_CODE_DESC ;;
  }

  dimension: product_name_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_NAME_DESC ;;
  }

  dimension: qty {
    hidden: yes
    type: number
    sql: ${TABLE}.QTY ;;
  }

  measure: total_qty {
    type: sum
    sql: ${qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

#   dimension: is_before_mtd {
#   type: yesno
#   sql:
#     (DATEPART(DAY, ${period_dt_time}) < DATEPART(DAY, CURRENT_TIMESTAMP)
#       OR
#       (
#         DATEPART(DAY, ${period_dt_time}) = DATEPART(DAY, CURRENT_TIMESTAMP) AND
#         DATEPART(HOUR, ${period_dt_time}) < DATEPART(HOUR, CURRENT_TIMESTAMP)
#       )
#       OR
#       (
#         DATEPART(DAY, ${period_dt_time}) = DATEPART(DAY, CURRENT_TIMESTAMP) AND
#         DATEPART(HOUR, ${period_dt_time}) <= DATEPART(HOUR, CURRENT_TIMESTAMP) AND
#         DATEPART(MINUTE, ${period_dt_time}) < DATEPART(MINUTE, CURRENT_TIMESTAMP)
#       )
#     );;
#     }
#
#   measure: avl_dc_inventory {
#     type: sum
#     sql: ${qty} ;;
#     value_format_name: decimal_0
#     filters: {
#       field: is_before_mtd
#       value: "yes"
#     }
#   }

  dimension: qty_per_case {
    hidden: yes
    type: number
    sql: ${TABLE}.QTY_PER_CASE ;;
  }

  dimension: qty_per_pack {
    hidden: yes
    type: number
    sql: ${TABLE}.QTY_PER_PACK ;;
  }

  dimension: sell_size_description {
    hidden: yes
    type: string
    sql: ${TABLE}.SELL_SIZE_DESCRIPTION ;;
  }

  dimension: shade_code_description {
    hidden: yes
    type: string
    sql: ${TABLE}.SHADE_CODE_DESCRIPTION ;;
  }

  dimension: size_code {
    hidden: yes
    type: string
    sql: ${TABLE}.SIZE_CODE ;;
  }

  dimension: standard_unit_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.STANDARD_UNIT_COST ;;
  }

  measure: total_standard_unit_cost {
    type: sum
    sql: ${standard_unit_cost} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: average_standard_unit_cost {
    type: average
    sql: ${standard_unit_cost} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: total_cust_ext_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.TOTAL_CUST_EXT_COST ;;
  }

  dimension: cust_orders {
    hidden: yes
    type: number
    sql: ${TABLE}.TOTAL_CUST_ORDERS ;;
  }

  measure: total_customer_orders {
    type: sum
    sql: ${cust_orders} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: total_mfg_ext_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.TOTAL_MFG_EXT_COST ;;
  }

  dimension: mfg_orders {
    hidden: yes
    type: number
    sql: ${TABLE}.TOTAL_MFG_ORDERS ;;
  }

  measure: total_mfg_orders {
    type: sum
    sql: ${mfg_orders} ;;
    drill_fields: [detail*]
    value_format_name: decimal_0
  }

  dimension: unconsumed_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.UNCONSUMED_COST ;;
  }

  dimension: unconsumed_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.UNCONSUMED_QTY ;;
  }

  measure: total_unconsumed_qty {
    type: sum
    sql: ${unconsumed_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: unit_cost_default {
    hidden: yes
    type: number
    sql: ${TABLE}.UNIT_COST_DEFAULT ;;
  }

  dimension: unit_measure {
    hidden: yes
    type: string
    sql: ${TABLE}.UNIT_MEASURE ;;
  }

  dimension: upc_code {
    hidden: yes
    type: string
    sql: ${TABLE}.UPC_CODE ;;
  }

  dimension: warehouse_code {
    hidden: yes
    type: string
    sql: ${TABLE}.WAREHOUSE_CODE ;;
  }

  dimension: yr {
    hidden: yes
    type: number
    sql: ${TABLE}.YR ;;
  }

  dimension: yr_qtr {
    hidden: yes
    type: number
    sql: ${TABLE}.YR_QTR ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: []
  }

  set: detail {
    fields: [item_no, item_desc, total_qty, total_unconsumed_qty, total_mfg_orders]
  }
}
