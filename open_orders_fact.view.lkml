view: open_orders_fact {
  sql_table_name: dbo.OPEN_ORDERS_FACT ;;

  dimension: abc_code {
    type: string
    sql: ${TABLE}.ABC_CODE ;;
  }

  dimension: accounting_code {
    type: string
    sql: ${TABLE}.ACCOUNTING_CODE ;;
  }

  dimension: accounting_code_desc {
    type: string
    sql: ${TABLE}.ACCOUNTING_CODE_DESC ;;
  }

  dimension: accounting_code_long_desc {
    type: string
    sql: ${TABLE}.ACCOUNTING_CODE_LONG_DESC ;;
  }

  dimension: attribute_code {
    type: string
    sql: ${TABLE}.ATTRIBUTE_CODE ;;
  }

  dimension: billto_customer_no {
    type: string
    sql: ${TABLE}.BILLTO_CUSTOMER_NO ;;
  }

  dimension: blanket_item_ind {
    type: string
    sql: ${TABLE}.BLANKET_ITEM_IND ;;
  }

  dimension: company_no {
    type: string
    sql: ${TABLE}.COMPANY_NO ;;
  }

  dimension: contract_no {
    type: number
    sql: ${TABLE}.CONTRACT_NO ;;
  }

  dimension: cost_goods_sold {
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD ;;
  }

  measure: total_cogs {
    description: "Total Cost of Goods Sold"
    type: sum
    sql: ${cost_goods_sold} ;;
  }

  dimension: credit_code {
    type: string
    sql: ${TABLE}.CREDIT_CODE ;;
  }

  dimension: customer_class_code {
    type: string
    sql: ${TABLE}.CUSTOMER_CLASS_CODE ;;
  }

  dimension: customer_item_no {
    type: string
    sql: ${TABLE}.CUSTOMER_ITEM_NO ;;
  }

  dimension: customer_no {
    type: string
    sql: ${TABLE}.CUSTOMER_NO ;;
  }

  dimension: customer_po_grouping {
    type: string
    sql: ${TABLE}.CUSTOMER_PO_GROUPING ;;
  }

  dimension: customer_po_no {
    type: string
    sql: ${TABLE}.CUSTOMER_PO_NO ;;
  }

  dimension: customer_price_code {
    type: string
    sql: ${TABLE}.CUSTOMER_PRICE_CODE ;;
  }

  dimension: dept_no {
    type: string
    sql: ${TABLE}.DEPT_NO ;;
  }

  dimension: header_status {
    type: string
    sql: ${TABLE}.HEADER_STATUS ;;
  }

  dimension: industry_item_desc {
    type: string
    sql: ${TABLE}.INDUSTRY_ITEM_DESC ;;
  }

  dimension: industry_item_no {
    type: string
    sql: ${TABLE}.INDUSTRY_ITEM_NO ;;
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

  dimension: item_no {
    type: string
    sql: ${TABLE}.ITEM_NO ;;
  }

  dimension: kit_component_indicator {
    type: string
    sql: ${TABLE}.KIT_COMPONENT_INDICATOR ;;
  }

  dimension_group: latest_promise_dt {
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
    sql: ${TABLE}.LATEST_PROMISE_DT ;;
  }

  dimension_group: latest_request_dt {
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
    sql: ${TABLE}.LATEST_REQUEST_DT ;;
  }

  dimension: line_item_sequence {
    type: number
    sql: ${TABLE}.LINE_ITEM_SEQUENCE ;;
  }

  dimension: line_item_status {
    type: string
    sql: ${TABLE}.LINE_ITEM_STATUS ;;
  }

  dimension: margin {
    type: number
    sql: ${TABLE}.MARGIN ;;
  }

  measure: average_margin {
    type: average
    sql: ${margin} ;;
  }

  dimension: market_analysis_code {
    type: string
    sql: ${TABLE}.MARKET_ANALYSIS_CODE ;;
  }

  dimension: non_inventory_code {
    type: string
    sql: ${TABLE}.NON_INVENTORY_CODE ;;
  }

  dimension: open_order_qty {
    type: number
    sql: ${TABLE}.OPEN_ORDER_QTY ;;
  }

  dimension: open_ordered_qty {
    type: number
    sql: ${TABLE}.OPEN_ORDERED_QTY ;;
  }

  measure: average_open_ordered_qty {
    type: average
    sql: ${open_ordered_qty} ;;
  }

  dimension: order_base_price {
    type: number
    sql: ${TABLE}.ORDER_BASE_PRICE ;;
  }

  measure: average_order_base_price {
    type: average
    sql: ${order_base_price} ;;
  }

  dimension_group: order_dt {
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
    sql: ${TABLE}.ORDER_DT ;;
  }

  dimension: order_net_sales_amt {
    type: number
    sql: ${TABLE}.ORDER_NET_SALES_AMT ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.ORDER_NO ;;
  }

  dimension_group: order_request_dt {
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
    sql: ${TABLE}.ORDER_REQUEST_DT ;;
  }

  dimension: order_sell_price {
    type: number
    sql: ${TABLE}.ORDER_SELL_PRICE ;;
  }

  dimension_group: original_promise_dt {
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
    sql: ${TABLE}.ORIGINAL_PROMISE_DT ;;
  }

  dimension_group: original_request_dt {
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
    sql: ${TABLE}.ORIGINAL_REQUEST_DT ;;
  }

  dimension: price_book_id {
    type: string
    sql: ${TABLE}.PRICE_BOOK_ID ;;
  }

  dimension: price_source_code {
    type: string
    sql: ${TABLE}.PRICE_SOURCE_CODE ;;
  }

  dimension: pricing_uom {
    type: string
    sql: ${TABLE}.PRICING_UOM ;;
  }

  dimension: quantity_per_case {
    type: number
    sql: ${TABLE}.QUANTITY_PER_CASE ;;
  }

  dimension: quantity_per_pack {
    type: number
    sql: ${TABLE}.QUANTITY_PER_PACK ;;
  }

  dimension: release_no {
    type: number
    sql: ${TABLE}.RELEASE_NO ;;
  }

  dimension: release_status {
    type: string
    sql: ${TABLE}.RELEASE_STATUS ;;
  }

  dimension_group: request_dt {
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
    sql: ${TABLE}.REQUEST_DT ;;
  }

  dimension: sale_code {
    type: string
    sql: ${TABLE}.SALE_CODE ;;
  }

  dimension: salesrep_no {
    type: string
    sql: ${TABLE}.SALESREP_NO ;;
  }

  dimension: sell_size {
    type: string
    sql: ${TABLE}.SELL_SIZE ;;
  }

  dimension: shipto_no {
    type: string
    sql: ${TABLE}.SHIPTO_NO ;;
  }

  dimension: shipto_state {
    type: string
    sql: ${TABLE}.SHIPTO_STATE ;;
  }

  dimension: shipto_state_code_name {
    type: string
    sql: ${TABLE}.SHIPTO_STATE_CODE_NAME ;;
  }

  dimension: shipto_state_name {
    type: string
    sql: ${TABLE}.SHIPTO_STATE_NAME ;;
  }

  dimension: stocking_qty {
    type: number
    sql: ${TABLE}.STOCKING_QTY ;;
  }

  dimension: stocking_uom {
    type: string
    sql: ${TABLE}.STOCKING_UOM ;;
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

  dimension: territory_id {
    type: string
    sql: ${TABLE}.TERRITORY_ID ;;
  }

  dimension: tot_bo_qty {
    type: number
    sql: ${TABLE}.TOT_BO_QTY ;;
  }

  dimension: tot_ship_qty {
    type: number
    sql: ${TABLE}.TOT_SHIP_QTY ;;
  }

  dimension: upc_ean_code {
    type: string
    sql: ${TABLE}.UPC_EAN_CODE ;;
  }

  dimension: warehouse {
    type: string
    sql: ${TABLE}.WAREHOUSE ;;
  }

  dimension: warehouse_code_desc {
    type: string
    sql: ${TABLE}.WAREHOUSE_CODE_DESC ;;
  }

  dimension: warehouse_desc {
    type: string
    sql: ${TABLE}.WAREHOUSE_DESC ;;
  }

  dimension: zone {
    type: string
    sql: ${TABLE}.ZONE ;;
  }

  dimension: zone_code_desc {
    type: string
    sql: ${TABLE}.ZONE_CODE_DESC ;;
  }

  dimension: zone_desc {
    type: string
    sql: ${TABLE}.ZONE_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: [shipto_state_name, shipto_state_code_name]
  }
}
