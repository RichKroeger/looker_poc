view: shipped_open_facts {
  sql_table_name: dbo.SHIPPED_OPEN_FACTS ;;

  dimension: shipped_open_facts_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.SHIPPED_OPEN_FACTS_ID ;;
  }

  dimension: abc_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ABC_CODE ;;
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

  dimension: accounting_code_long_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.ACCOUNTING_CODE_LONG_DESC ;;
  }

  dimension: attribute_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTRIBUTE_CODE ;;
  }

  dimension: attribute_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.ATTRIBUTE_CODE_DESC ;;
  }

  dimension: bill_to_customer_no {
    hidden: yes
    type: string
    sql: ${TABLE}.BILLTO_CUSTOMER_NO ;;
  }

  dimension: blanket_item_ind {
    hidden: yes
    type: string
    sql: ${TABLE}.BLANKET_ITEM_IND ;;
  }

  dimension: brand_code {
    group_label: "Brand"
    type: string
    sql: ${TABLE}.BRAND_CODE ;;
  }

  dimension: brand_code_desc {
    group_label: "Brand"
    type: string
    sql: ${TABLE}.BRAND_CODE_DESC ;;
  }

  dimension: brand_code_long_desc {
    hidden: yes
    group_label: "Brand"
    type: string
    sql: ${TABLE}.BRAND_CODE_LONG_DESC ;;
  }

  dimension: brand_code_short_desc {
    hidden: yes
    group_label: "Brand"
    type: string
    sql: ${TABLE}.BRAND_CODE_SHORT_DESC ;;
  }

  dimension: brand_family {
    group_label: "Brand"
    type: string
    sql: ${TABLE}.BRAND_FAMILY ;;
  }

  dimension: brand_family_desc {
    hidden: yes
    group_label: "Brand"
    type: string
    sql: ${TABLE}.BRAND_FAMILY_DESC ;;
  }

  dimension: brand_family_dsc {
    hidden: yes
    group_label: "Brand"
    type: string
    sql: ${TABLE}.BRAND_FAMILY_DSC ;;
  }

  dimension: business_type_code {
    group_label: "Business Type"
    type: string
    sql: ${TABLE}.BUSINESS_TYPE_CODE ;;
    drill_fields: [company_no_name, total_net_sales]
  }

  dimension: is_primary_business_type_only {
    description: "This excludes Common Components and other business types"
    type: yesno
    sql: ${business_type_code} NOT IN ('CC', 'OT') ;;
  }

  dimension: business_type_code_desc {
    group_label: "Business Type"
    type: string
    sql: ${TABLE}.BUSINESS_TYPE_CODE_DESC ;;
  }

  dimension: business_type_code_dsc {
    hidden: yes
    group_label: "Business Type"
    type: string
    sql: ${TABLE}.BUSINESS_TYPE_CODE_DSC ;;
  }

  dimension: category_code {
    group_label: "Category"
    type: string
    sql: ${TABLE}.CATEGORY_CODE ;;
  }

  dimension: category_code_desc {
    hidden: yes
    group_label: "Category"
    type: string
    sql: ${TABLE}.CATEGORY_CODE_DESC ;;
  }

  dimension: category_code_dsc {
    hidden: yes
    group_label: "Category"
    type: string
    sql: ${TABLE}.CATEGORY_CODE_DSC ;;
  }

  dimension: company_name {
    group_label: "Company"
    type: string
    sql: ${TABLE}.COMPANY_NAME ;;
  }

  dimension: company_no {
    group_label: "Company"
    type: string
    sql: ${TABLE}.COMPANY_NO ;;
    drill_fields: [item_no, total_cogs_shipped]
  }

  dimension: is_inter_company {
    description: "Inter company includes Europe and Canada"
    type: yesno
    sql: ${company_no} IN ('42', '43', '66') ;;
  }


  dimension: company_no_name {
    group_label: "Company"
    type: string
    sql: ${TABLE}.COMPANY_NO_NAME ;;
    drill_fields: [business_type_code_desc, product_code, item_no]
    link: {
      label: "Company Dashboard"
      url: "/dashboards/2?Company={{value}}"
      icon_url: "http://www.looker.com/favicon.ico"
    }
  }

  dimension: contract_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_DESC ;;
  }

  dimension: contract_no {
    hidden: yes
    type: number
    sql: ${TABLE}.CONTRACT_NO ;;
  }

  dimension: contract_no_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.CONTRACT_NO_DESC ;;
  }

  dimension: cogs_open_orders {
    hidden: yes
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD_OPENORDERS ;;
  }

  measure: total_cogs_open_orders {
    type: sum
    sql: ${cogs_open_orders} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: cogss_open_orders_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD_OPENORDERS_CY ;;
  }

  dimension: cogs_open_orders_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD_OPENORDERS_LY ;;
  }

  dimension: cogs_open_orders_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD_OPENORDERS_MTD ;;
  }

  dimension: cogs_shipped {
    hidden: yes
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD_SHIPPED ;;
  }

  measure: total_cogs_shipped {
    type: sum
    sql: ${cogs_shipped} ;;
    drill_fields: [company_no, total_cogs_shipped]
    value_format_name: usd_0
  }

  measure: average_cogs {
    type: average
    sql: ${cogs_shipped} ;;
    drill_fields: [detail*]
  }

  dimension: cost_goods_sold_shipped_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD_SHIPPED_CY ;;
  }

  dimension: cost_goods_sold_shipped_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD_SHIPPED_LY ;;
  }

  dimension: cost_goods_sold_shipped_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.COST_GOODS_SOLD_SHIPPED_MTD ;;
  }

  dimension: credit_code {
    hidden: yes
    group_label: "Credit"
    type: string
    sql: ${TABLE}.CREDIT_CODE ;;
  }

  dimension: credit_memo_reason_code {
    group_label: "Credit"
    type: string
    sql: ${TABLE}.CREDIT_MEMO_REASON_CODE ;;
  }

  dimension: is_booked_sales {
    type: yesno
    sql: ${credit_memo_reason_code} IN ('ORD', 'PA', 'TS', 'EB');;
  }

  dimension: credit_memo_reason_code_desc {
    group_label: "Credit"
    type: string
    sql: ${TABLE}.CREDIT_MEMO_REASON_CODE_DESC ;;
  }

  dimension: credit_memo_reason_dsc {
    hidden: yes
    group_label: "Credit"
    type: string
    sql: ${TABLE}.CREDIT_MEMO_REASON_DSC ;;
  }

  dimension: credit_rating_code {
    hidden: yes
    group_label: "Credit"
    type: string
    sql: ${TABLE}.CREDIT_RATING_CODE ;;
  }

  dimension: credit_rating_code_desc {
    hidden: yes
    group_label: "Credit"
    type: string
    sql: ${TABLE}.CREDIT_RATING_CODE_DESC ;;
  }

  dimension: credit_rating_desc {
    hidden: yes
    group_label: "Credit"
    type: string
    sql: ${TABLE}.CREDIT_RATING_DESC ;;
  }

  dimension: cur_rest_item_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.CUR_REST_ITEM_DESC ;;
  }

  dimension: cur_unit_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_UNIT_COST ;;
  }

  measure: total_cur_unit_cost {
    type: sum
    sql: ${cur_unit_cost} ;;
    value_format_name: usd_0
    drill_fields: [detail*]
  }

  dimension: current_restaged_item {
    hidden: yes
    type: string
    sql: ${TABLE}.CURRENT_RESTAGED_ITEM ;;
  }

  dimension: current_restaged_item_no_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.Current_Restaged_Item_No_Desc ;;
  }

  dimension: customer_class_code {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_CLASS_CODE ;;
  }

  dimension: customer_class_code_desc {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_CLASS_CODE_DESC ;;
  }

  dimension: customer_class_desc {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_CLASS_DESC ;;
  }

  dimension: customer_item_desc {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_ITEM_DESC ;;
  }

  dimension: customer_item_dsc {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_ITEM_DSC ;;
  }

  dimension: customer_item_no {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_ITEM_NO ;;
  }

  dimension: customer_name {
    group_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_NAME ;;
  }

  dimension: customer_no {
    group_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_NO ;;
  }

  dimension: customer_no_name {
    group_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_NO_NAME ;;
  }

  dimension: customer_po_grouping {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_PO_GROUPING ;;
  }

  dimension: customer_po_no {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_PO_NO ;;
  }

  dimension: customer_price_code {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_PRICE_CODE ;;
  }

  dimension: customer_price_code_desc {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_PRICE_CODE_DESC ;;
  }

  dimension: customer_price_desc {
    hidden: yes
    view_label: "Customer"
    type: string
    sql: ${TABLE}.CUSTOMER_PRICE_DESC ;;
  }

  dimension: dept_no {
    hidden: yes
    type: string
    sql: ${TABLE}.DEPT_NO ;;
  }

  dimension: discount_percent {
    hidden: yes
    group_label: "Discounts"
    type: number
    sql: ${TABLE}.DISCOUNT_PERCENT ;;
  }

  measure: total_discount_percent {
    group_label: "Discounts"
    type: sum
    sql: ${discount_percent} ;;
    drill_fields: [detail*]
  }

  measure: average_discount_percent {
    group_label: "Discounts"
    type: average
    sql: ${discount_percent} ;;
    drill_fields: [detail*]
  }

  dimension: discount_percent_cy {
    hidden: yes
    group_label: "Discounts"
    type: number
    sql: ${TABLE}.DISCOUNT_PERCENT_CY ;;
  }

  dimension: discount_percent_ly {
    hidden: yes
    group_label: "Discounts"
    type: number
    sql: ${TABLE}.DISCOUNT_PERCENT_LY ;;
  }

  dimension: discount_percent_mtd {
    hidden: yes
    group_label: "Discounts"
    type: number
    sql: ${TABLE}.DISCOUNT_PERCENT_MTD ;;
  }

  dimension: full_revenue_shipped {
    view_label: "Revenue"
    hidden: yes
    type: number
    sql: ${TABLE}.FULL_REVENUE_SHIPPED ;;
  }

  measure: total_shipped_revenue {
    type: sum
    sql: ${full_revenue_shipped} ;;
    value_format_name: usd_0
    drill_fields: [detail*]
  }

  measure: average_shipped_revenue {
    type: average
    sql: ${full_revenue_shipped} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: full_revenue_shipped_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.FULL_REVENUE_SHIPPED_CY ;;
  }

  measure: total_full_revenue_shipped_cy {
    hidden: yes
    type: sum
    sql:  ${full_revenue_shipped_cy};;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: average_full_revenue_shipped_cy {
    hidden: yes
    type: average
    sql:  ${full_revenue_shipped_cy};;
    value_format_name: usd
    drill_fields: [detail*]
  }


  dimension: full_revenue_shipped_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.FULL_REVENUE_SHIPPED_LY ;;
  }

  measure: total_full_revenue_shipped_ly {
    hidden: yes
    type: sum
    sql:  ${full_revenue_shipped_ly};;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: average_full_revenue_shipped_ly {
    hidden: yes
    type: average
    sql:  ${full_revenue_shipped_ly};;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: full_revenue_shipped_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.FULL_REVENUE_SHIPPED_MTD ;;
  }

  measure: total_full_revenue_shipped_mtd {
    type: sum
    sql:  ${full_revenue_shipped_mtd};;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: average_full_revenue_shipped_mtd {
    hidden: yes
    type: average
    sql:  ${full_revenue_shipped_mtd};;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: geographical_zone {
    type: string
    sql: ${TABLE}.GEOGRAPHICAL_ZONE ;;
  }

  dimension: green_sheet_line {
    hidden: yes
    type: string
    sql: ${TABLE}.GREEN_SHEET_LINE ;;
  }

  dimension: green_sheet_line_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.GREEN_SHEET_LINE_DESC ;;
  }

  dimension: gross_sales_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT ;;
  }

  measure: average_gross_sales_amt {
    type: average
    sql: ${gross_sales_amt} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  measure: total_gross_sales_amt {
    type: sum
    sql: ${gross_sales_amt} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: gross_sales_amt_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT_CY ;;
  }

  dimension: gross_sales_amt_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT_LY ;;
  }

  dimension: gross_sales_amt_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.GROSS_SALES_AMT_MTD ;;
  }

  dimension: header_status {
    hidden: yes
    type: string
    sql: ${TABLE}.HEADER_STATUS ;;
  }

  dimension: industry_item_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.INDUSTRY_ITEM_DESC ;;
  }

  dimension: industry_item_no {
    hidden: yes
    type: string
    sql: ${TABLE}.INDUSTRY_ITEM_NO ;;
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

  dimension_group: invoice {
    view_label: "Invoice"
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      month_num,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.INVOICE_DT ;;
  }

  dimension: is_before_ytd {
    type: yesno
    sql:
    (DATEPART(dayofyear, ${invoice_time}) < DATEPART(dayofyear, CURRENT_TIMESTAMP)
      OR
      (
        DATEPART(dayofyear, ${invoice_time}) = DATEPART(dayofyear, CURRENT_TIMESTAMP) AND
        DATEPART(HOUR, ${invoice_time}) < DATEPART(HOUR, CURRENT_TIMESTAMP)
      )
      OR
      (
        DATEPART(dayofyear, ${invoice_time}) = DATEPART(dayofyear, CURRENT_TIMESTAMP) AND
        DATEPART(HOUR, ${invoice_time}) <= DATEPART(HOUR, CURRENT_TIMESTAMP) AND
        DATEPART(MINUTE, ${invoice_time}) < DATEPART(MINUTE, CURRENT_TIMESTAMP)
      )
    );;
  }

  dimension: invoice_month_date {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.Invoice_Month ;;
  }

  dimension: invoice_no {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_NO ;;
  }

  dimension: invoice_order_qty {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_ORDER_QTY ;;
  }

  measure: total_invoice_order_qty {
    type: sum
    sql: ${invoice_order_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: invoice_order_qty_cy {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_ORDER_QTY_CY ;;
  }

  dimension: invoice_order_qty_ly {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_ORDER_QTY_LY ;;
  }

  dimension: invoice_order_qty_mtd {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_ORDER_QTY_MTD ;;
  }

  dimension: invoice_shipped_qty {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_SHIPPED_QTY ;;
  }

  dimension: invoice_shipped_qty_cy {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_SHIPPED_QTY_CY ;;
  }

  dimension: invoice_shipped_qty_ly {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_SHIPPED_QTY_LY ;;
  }

  dimension: invoice_shipped_qty_mtd {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_SHIPPED_QTY_MTD ;;
  }

  dimension: invoice_yr {
    hidden: yes
    view_label: "Invoice"
    type: number
    sql: ${TABLE}.INVOICE_YR ;;
  }

  dimension: item_accounting_class {
    hidden: yes
    view_label: "Item"
    type: string
    sql: ${TABLE}.ITEM_ACCOUNTING_CLASS ;;
  }

  dimension: item_class {
    hidden: yes
    view_label: "Item"
    type: string
    sql: ${TABLE}.ITEM_CLASS ;;
  }

  dimension: item_class_code {
    hidden: yes
    view_label: "Item"
    type: string
    sql: ${TABLE}.ITEM_CLASS_CODE ;;
  }

  dimension: item_country_code {
    hidden: yes
    view_label: "Item"
    type: string
    sql: ${TABLE}.ITEM_COUNTRY_CODE ;;
  }

  dimension: item_desc {
    hidden: yes
    view_label: "Item"
    type: string
    sql: ${TABLE}.ITEM_DESC ;;
  }

  dimension: item_no {
    hidden: yes
    view_label: "Item"
    type: string
    sql: ${TABLE}.ITEM_NO ;;
  }

  dimension: item_no_desc {
    hidden: yes
    view_label: "Item"
    type: string
    sql: ${TABLE}.ITEM_NO_DESC ;;
  }

  dimension: kit_component_indicator {
    hidden: yes
    type: string
    sql: ${TABLE}.KIT_COMPONENT_INDICATOR ;;
  }

  dimension: kit_component_qty_per {
    hidden: yes
    type: number
    sql: ${TABLE}.KIT_COMPONENT_QTY_PER ;;
  }

  dimension_group: latest_promise_dt {
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
    sql: ${TABLE}.LATEST_PROMISE_DT ;;
  }

  dimension_group: latest_request_dt {
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
    sql: ${TABLE}.LATEST_REQUEST_DT ;;
  }

  dimension: line_item_seq {
    hidden: yes
    type: number
    sql: ${TABLE}.LINE_ITEM_SEQ ;;
  }

  dimension: line_item_status {
    hidden: yes
    type: string
    sql: ${TABLE}.LINE_ITEM_STATUS ;;
  }

  dimension: margin_shipped {
    hidden: yes
    type: number
    sql: ${TABLE}.MARGIN_SHIPPED ;;
  }

  measure: total_margin_shipped {
    type: sum
    sql: ${margin_shipped} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: margin_shipped_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.MARGIN_SHIPPED_CY ;;
  }

  dimension: margin_shipped_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.MARGIN_SHIPPED_LY ;;
  }

  dimension: margin_shipped_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.MARGIN_SHIPPED_MTD ;;
  }

  dimension: market_analysis_code {
    hidden: yes
    type: string
    sql: ${TABLE}.MARKET_ANALYSIS_CODE ;;
  }

  dimension: market_analysis_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.MARKET_ANALYSIS_CODE_DESC ;;
  }

  dimension: market_analysis_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.MARKET_ANALYSIS_DESC ;;
  }

  dimension: net_sales_amt {
    hidden: yes
    type: number
    sql: ${TABLE}.NET_SALES_AMT ;;
  }

  measure: total_net_sales {
    description: "AGS"
    type: sum
    sql: ${net_sales_amt} ;;
    value_format_name: usd_0
    drill_fields: [business_type_code, business_type_code_desc,  total_net_sales]
  }

  dimension: net_sales_amt_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.NET_SALES_AMT_CY ;;
  }

  dimension: net_sales_amt_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.NET_SALES_AMT_LY ;;
  }

  dimension: net_sales_amt_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.NET_SALES_AMT_MTD ;;
  }

  dimension: non_inventory_code {
    hidden: yes
    type: string
    sql: ${TABLE}.NON_INVENTORY_CODE ;;
  }

  dimension: open_order_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_ORDER_QTY ;;
  }

  measure: total_open_order_qty {
    type: sum
    sql: ${open_order_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }


  dimension: open_order_qty_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_ORDER_QTY_CY ;;
  }

  dimension: open_order_qty_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_ORDER_QTY_LY ;;
  }

  dimension: open_order_qty_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_ORDER_QTY_MTD ;;
  }

  dimension: open_ordered_qty {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_ORDERED_QTY ;;
  }

  dimension: open_ordered_qty_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_ORDERED_QTY_CY ;;
  }

  dimension: open_ordered_qty_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_ORDERED_QTY_LY ;;
  }

  dimension: open_ordered_qty_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.OPEN_ORDERED_QTY_MTD ;;
  }

  dimension: order_base_price {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_BASE_PRICE ;;
  }

  dimension: order_base_price_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_BASE_PRICE_CY ;;
  }

  dimension: order_base_price_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_BASE_PRICE_LY ;;
  }

  dimension: order_base_price_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_BASE_PRICE_MTD ;;
  }

  dimension_group: order {
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
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_NET_SALES_AMT ;;
  }

  measure: total_order_net_sales_amt {
    type: sum
    sql: ${order_net_sales_amt} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: order_net_sales_amt_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_NET_SALES_AMT_CY ;;
  }

  dimension: order_net_sales_amt_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_NET_SALES_AMT_LY ;;
  }

  dimension: order_net_sales_amt_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_NET_SALES_AMT_MTD ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.ORDER_NO ;;
  }

  dimension_group: order_request_dt {
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
    sql: ${TABLE}.ORDER_REQUEST_DT ;;
  }

  dimension: order_sell_price {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_SELL_PRICE ;;
  }

  dimension: order_sell_price_cy {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_SELL_PRICE_CY ;;
  }

  dimension: order_sell_price_ly {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_SELL_PRICE_LY ;;
  }

  dimension: order_sell_price_mtd {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_SELL_PRICE_MTD ;;
  }

  dimension: order_type {
    hidden: yes
    type: string
    sql: ${TABLE}.Order_Type ;;
  }

  dimension: order_uom {
    hidden: yes
    type: string
    sql: ${TABLE}.ORDER_UOM ;;
  }

  dimension: order_yr {
    hidden: yes
    type: number
    sql: ${TABLE}.ORDER_YR ;;
  }

  dimension_group: original_promise_dt {
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
    sql: ${TABLE}.ORIGINAL_PROMISE_DT ;;
  }

  dimension_group: original_request_dt {
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
    sql: ${TABLE}.ORIGINAL_REQUEST_DT ;;
  }

  dimension: po_no {
    hidden: yes
    type: string
    sql: ${TABLE}.PO_NO ;;
  }

  dimension: price_book_id {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICE_BOOK_ID ;;
  }

  dimension: price_source_code {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICE_SOURCE_CODE ;;
  }

  dimension: pricing_uom {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICING_UOM ;;
  }

  dimension: product_code {
    hidden: yes
    type: string
    sql: ${TABLE}.PRODUCT_CODE ;;
  }

  dimension: quantity_per_case {
    hidden: yes
    type: number
    sql: ${TABLE}.QUANTITY_PER_CASE ;;
  }

  dimension: quantity_per_pack {
    hidden: yes
    type: number
    sql: ${TABLE}.QUANTITY_PER_PACK ;;
  }

  dimension: release_no {
    hidden: yes
    type: number
    sql: ${TABLE}.RELEASE_NO ;;
  }

  dimension: release_number_1 {
    hidden: yes
    type: number
    sql: ${TABLE}.RELEASE_NUMBER_1 ;;
  }

  dimension: release_status {
    hidden: yes
    type: string
    sql: ${TABLE}.RELEASE_STATUS ;;
  }

  dimension_group: request_dt {
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
    sql: ${TABLE}.REQUEST_DT ;;
  }

  dimension: requested_month {
    hidden: yes
    type: number
    sql: ${TABLE}.Requested_Month ;;
  }

  dimension: sales_code {
    hidden: yes
    group_label: "Sales"
    type: string
    sql: ${TABLE}.SALES_CODE ;;
  }

  dimension: sales_price {
    hidden: yes
    group_label: "Sales"
    type: number
    sql: ${TABLE}.SALES_PRICE ;;
  }

  measure: total_sales_price {
    hidden: yes
    group_label: "Sales"
    type: sum
    sql: ${sales_price} ;;
    drill_fields: [detail*]
  }

  dimension: sales_price_cy {
    hidden: yes
    group_label: "Sales"
    type: number
    sql: ${TABLE}.SALES_PRICE_CY ;;
  }

  dimension: sales_price_ly {
    hidden: yes
    group_label: "Sales"
    type: number
    sql: ${TABLE}.SALES_PRICE_LY ;;
  }

  dimension: sales_price_mtd {
    hidden: yes
    group_label: "Sales"
    type: number
    sql: ${TABLE}.SALES_PRICE_MTD ;;
  }

  dimension: salesrep_name {
    group_label: "Sales"
    type: string
    sql: ${TABLE}.SALESREP_NAME ;;
  }

  dimension: salesrep_no {
    group_label: "Sales"
    type: string
    sql: ${TABLE}.SALESREP_NO ;;
  }

  dimension: salesrep_no_name {
    hidden: yes
    group_label: "Sales"
    type: string
    sql: ${TABLE}.SALESREP_NO_NAME ;;
  }

  dimension: salesrep_status {
    group_label: "Sales"
    hidden: yes
    type: string
    sql: ${TABLE}.SALESREP_STATUS ;;
  }

  dimension: sell_size {
    hidden: yes
    type: string
    sql: ${TABLE}.SELL_SIZE ;;
  }

  dimension: sell_size_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.SELL_SIZE_DESC ;;
  }

  dimension_group: shipment_dt {
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
    sql: ${TABLE}.SHIPMENT_DT ;;
  }

  dimension: shipment_id {
    hidden: yes
    type: string
    sql: ${TABLE}.SHIPMENT_ID ;;
  }

  dimension: shipment_status {
    hidden: yes
    type: string
    sql: ${TABLE}.SHIPMENT_STATUS ;;
  }

  dimension: shipment_yr {
    hidden: yes
    type: number
    sql: ${TABLE}.SHIPMENT_YR ;;
  }

  dimension: ship_to_city {
    hidden: yes
    type: string
    sql: ${TABLE}.SHIPTO_CITY ;;
  }

  dimension: ship_to_country_code {
    hidden: yes
    type: string
    sql: ${TABLE}.SHIPTO_COUNTRY_CODE ;;
  }

  dimension: shipto_country_code_name {
    hidden: yes
    type: string
    sql: ${TABLE}.SHIPTO_COUNTRY_CODE_NAME ;;
  }

  dimension: ship_to_country_name {
    type: string
    sql: ${TABLE}.SHIPTO_COUNTRY_NAME ;;
    map_layer_name: countries
  }

  dimension: ship_to_name {
    hidden: yes
    type: string
    sql: ${TABLE}.SHIPTO_NAME ;;
  }

  dimension: ship_to_no {
    hidden: yes
    type: string
    sql: ${TABLE}.SHIPTO_NO ;;
  }

  dimension: ship_to_state {
    type: string
    sql: ${TABLE}.SHIPTO_STATE ;;
    map_layer_name: us_states
  }

  dimension: ship_to_state_name {
    hidden: yes
    type: string
    sql: ${TABLE}.SHIPTO_STATE_NAME ;;
  }

  dimension: ship_to_zip {
    type: string
    sql: ${TABLE}.SHIPTO_ZIP ;;
    map_layer_name: us_zipcode_tabulation_areas
  }

  dimension: size_code {
    hidden: yes
    type: string
    sql: ${TABLE}.SIZE_CODE ;;
  }

  dimension: size_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.SIZE_CODE_DESC ;;
  }

  dimension: sold_to_city {
    hidden: yes
    group_label: "Sold To"
    type: string
    sql: ${TABLE}.SOLDTO_CITY ;;
  }

  dimension: sold_to_country_code {
    hidden: yes
    group_label: "Sold To"
    type: string
    sql: ${TABLE}.SOLDTO_COUNTRY_CODE ;;
  }

  dimension: sold_to_country_code_name {
    hidden: yes
    group_label: "Sold To"
    type: string
    sql: ${TABLE}.SOLDTO_COUNTRY_CODE_NAME ;;
  }

  dimension: sold_to_country_name {
    hidden: yes
    group_label: "Sold To"
    type: string
    sql: ${TABLE}.SOLDTO_COUNTRY_NAME ;;
  }

  dimension: sold_to_customer_no {
    hidden: yes
    group_label: "Sold To"
    type: string
    sql: ${TABLE}.SOLDTO_CUSTOMER_NO ;;
  }

  dimension: sold_to_state_code {
    hidden: yes
    group_label: "Sold To"
    type: string
    sql: ${TABLE}.SOLDTO_STATE_CODE ;;
  }

  dimension: sold_to_state_code_name {
    hidden: yes
    group_label: "Sold To"
    type: string
    sql: ${TABLE}.SOLDTO_STATE_CODE_NAME ;;
  }

  dimension: sold_to_state_name {
    hidden: yes
    group_label: "Sold To"
    type: string
    sql: ${TABLE}.SOLDTO_STATE_NAME ;;
  }

  dimension: std_unit_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_UNIT_COST ;;
  }

  dimension: stocking_qty {
    hidden: yes
    group_label: "Stocking"
    type: number
    sql: ${TABLE}.STOCKING_QTY ;;
  }

  measure: total_stocking_qty {
    type: sum
    sql: ${stocking_qty} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: stocking_uom {
    hidden: yes
    group_label: "Stocking"
    type: string
    sql: ${TABLE}.STOCKING_UOM ;;
  }

  measure: total_stocking_uom {
    hidden: yes
    type: sum
    sql: ${stocking_qty} ;;
    value_format_name: usd
    drill_fields: [detail*]
  }

  dimension: terms_code {
    group_label: "Terms"
    type: string
    sql: ${TABLE}.TERMS_CODE ;;
  }

#   dimension: is_free_goods {
#     type: yesno
#     sql: ${terms_code} = 69;;
#   }

  dimension: terms_code_desc {
    hidden: yes
    group_label: "Terms"
    type: string
    sql: ${TABLE}.TERMS_CODE_DESC ;;
  }

  dimension: terms_desc {
    hidden: yes
    group_label: "Terms"
    type: string
    sql: ${TABLE}.TERMS_DESC ;;
  }

  dimension: territory_id {
    hidden: yes
    type: string
    sql: ${TABLE}.TERRITORY_ID ;;
  }

  dimension: territory_id_name {
    hidden: yes
    type: string
    sql: ${TABLE}.TERRITORY_ID_NAME ;;
  }

  dimension: territory_name {
    type: string
    sql: ${TABLE}.TERRITORY_NAME ;;
  }

  dimension: tot_bo_qty {
    hidden: yes
    view_label: "Totals"
    type: number
    sql: ${TABLE}.TOT_BO_QTY ;;
  }

  measure: total_back_order_qty {
    type: sum
    sql: ${tot_bo_qty} ;;
    value_format_name: decimal_0
    drill_fields: [detail*]
  }

  dimension: tot_bo_qty_cy {
    hidden: yes
    view_label: "Totals"
    type: number
    sql: ${TABLE}.TOT_BO_QTY_CY ;;
  }

  dimension: tot_bo_qty_ly {
    hidden: yes
    view_label: "Totals"
    type: number
    sql: ${TABLE}.TOT_BO_QTY_LY ;;
  }

  dimension: tot_bo_qty_mtd {
    hidden: yes
    view_label: "Totals"
    type: number
    sql: ${TABLE}.TOT_BO_QTY_MTD ;;
  }

  dimension: tot_ship_qty {
    hidden: yes
    view_label: "Totals"
    type: number
    sql: ${TABLE}.TOT_SHIP_QTY ;;
  }

  dimension: tot_ship_qty_cy {
    hidden: yes
    view_label: "Totals"
    type: number
    sql: ${TABLE}.TOT_SHIP_QTY_CY ;;
  }

  dimension: tot_ship_qty_ly {
    hidden: yes
    view_label: "Totals"
    type: number
    sql: ${TABLE}.TOT_SHIP_QTY_LY ;;
  }

  dimension: tot_ship_qty_mtd {
    hidden: yes
    view_label: "Totals"
    type: number
    sql: ${TABLE}.TOT_SHIP_QTY_MTD ;;
  }

  dimension: upc_ean_code {
    hidden: yes
    type: string
    sql: ${TABLE}.UPC_EAN_CODE ;;
  }

  dimension: warehouse_code {
    hidden: yes
    group_label: "Warehouse"
    type: string
    sql: ${TABLE}.WAREHOUSE_CODE ;;
  }

  dimension: warehouse_code_desc {
    group_label: "Warehouse"
    type: string
    sql: ${TABLE}.WAREHOUSE_CODE_DESC ;;
  }

  dimension: warehouse_desc {
    hidden: yes
    group_label: "Warehouse"
    type: string
    sql: ${TABLE}.WAREHOUSE_DESC ;;
  }

  dimension: zone {
    hidden: yes
    group_label: "Zone"
    type: string
    sql: ${TABLE}.ZONE ;;
  }

  dimension: zone_code_desc {
    hidden: yes
    group_label: "Zone"
    type: string
    sql: ${TABLE}.ZONE_CODE_DESC ;;
  }

  dimension: zone_desc {
    hidden: yes
    group_label: "Zone"
    type: string
    sql: ${TABLE}.ZONE_DESC ;;
  }


  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      business_type_code_desc,
      item_no,
      total_open_order_qty,
      total_back_order_qty
    ]
  }
}
