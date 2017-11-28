view: vw_invoice_sales {
  sql_table_name: dbo.vw_InvoiceSales ;;

  dimension: account_cd {
    type: string
    sql: ${TABLE}.AccountCd ;;
  }

  dimension: account_name {
    type: string
    sql: ${TABLE}.AccountName ;;
  }

  dimension: ags_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.AGS ;;
  }

  dimension: ags_mtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.AGS_MTD ;;
  }

  dimension: ags_mtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.AGS_MTD_LY ;;
  }

  dimension: ags_qtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.AGS_QTD ;;
  }

  dimension: ags_qtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.AGS_QTD_LY ;;
  }

  dimension: ags_ytd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.AGS_YTD ;;
  }

  dimension: ags_ytd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.AGS_YTD_LY ;;
  }

  dimension: brand_group {
    type: string
    sql: ${TABLE}.BrandGroup ;;
  }

  dimension: business_type {
    type: string
    sql: ${TABLE}.BusinessType ;;
  }

  dimension: category_cd {
    type: string
    sql: ${TABLE}.CategoryCd ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: cogs_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.COGS ;;
  }

  dimension: cogs_mtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.COGS_MTD ;;
  }

  dimension: cogs_mtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.COGS_MTD_LY ;;
  }

  dimension: cogs_qtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.COGS_QTD ;;
  }

  dimension: cogs_qtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.COGS_QTD_LY ;;
  }

  dimension: cogs_ytd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.COGS_YTD ;;
  }

  dimension: cogs_ytd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.COGS_YTD_LY ;;
  }

  dimension: company_cd {
    type: string
    sql: ${TABLE}.CompanyCd ;;
  }

  dimension: company_name {
    type: string
    sql: ${TABLE}.CompanyName ;;
  }

  dimension: credit_memo_reason_cd {
    type: string
    sql: ${TABLE}.CreditMemoReasonCd ;;
  }

  dimension: credit_memo_reason_name {
    type: string
    sql: ${TABLE}.CreditMemoReasonName ;;
  }

  dimension: customer_name {
    type: string
    sql: ${TABLE}.CustomerName ;;
  }

  dimension: customer_no {
    type: string
    sql: ${TABLE}.CustomerNo ;;
  }

  dimension: discount_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Discount ;;
  }

  dimension: discount_mtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Discount_MTD ;;
  }

  dimension: discount_mtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Discount_MTD_LY ;;
  }

  dimension: discount_qtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Discount_QTD ;;
  }

  dimension: discount_qtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Discount_QTD_LY ;;
  }

  dimension: discount_ytd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Discount_YTD ;;
  }

  dimension: discount_ytd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Discount_YTD_LY ;;
  }

  dimension: division {
    type: string
    sql: ${TABLE}.Division ;;
  }

  dimension_group: invoice_dt {
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
    sql: ${TABLE}.InvoiceDt ;;
  }

  dimension: invoice_nbr {
    type: number
    sql: ${TABLE}.InvoiceNbr ;;
  }

  dimension: invoice_order_qty {
    type: number
    sql: ${TABLE}.InvoiceOrderQty ;;
  }

  dimension: invoice_qty {
    type: number
    sql: ${TABLE}.InvoiceQty ;;
  }

  dimension: invoice_shipped_qty {
    type: number
    sql: ${TABLE}.InvoiceShippedQty ;;
  }

  dimension: item_name {
    type: string
    sql: ${TABLE}.ItemName ;;
  }

  dimension: item_no {
    type: string
    sql: ${TABLE}.ItemNo ;;
  }

  dimension: margin_measure {
    type: number
    hidden: :yes
    sql: ${TABLE}.Margin ;;
  }

  dimension: margin_mtd_measure {
    type: number
    hidden: :yes
    sql: ${TABLE}.Margin_MTD ;;
  }

  dimension: margin_mtd_ly_measure {
    type: number
    hidden: :yes
    sql: ${TABLE}.Margin_MTD_LY ;;
  }

  dimension: margin_qtd_measure {
    type: number
    hidden: :yes
    sql: ${TABLE}.Margin_QTD ;;
  }

  dimension: margin_qtd_ly_measure {
    type: number
    hidden: :yes
    sql: ${TABLE}.Margin_QTD_LY ;;
  }

  dimension: margin_ytd_measure {
    type: number
    hidden: :yes
    sql: ${TABLE}.Margin_YTD ;;
  }

  dimension: margin_ytd_ly_measure {
    type: number
    hidden: :yes
    sql: ${TABLE}.Margin_YTD_LY ;;
  }

  dimension: net_sales_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.NetSales ;;
  }

  dimension: net_sales_mtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.NetSales_MTD ;;
  }

  dimension: net_sales_mtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.NetSales_MTD_LY ;;
  }

  dimension: net_sales_qtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.NetSales_QTD ;;
  }

  dimension: net_sales_qtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.NetSales_QTD_LY ;;
  }

  dimension: net_sales_ytd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.NetSales_YTD ;;
  }

  dimension: net_sales_ytd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.NetSales_YTD_LY ;;
  }

  dimension: order_no {
    type: string
    sql: ${TABLE}.OrderNo ;;
  }

  dimension: order_uom {
    type: string
    sql: ${TABLE}.OrderUOM ;;
  }

  dimension: per_case_qty {
    type: number
    sql: ${TABLE}.PerCaseQty ;;
  }

  dimension: purchase_order_no {
    type: string
    sql: ${TABLE}.PurchaseOrderNo ;;
  }

  dimension: restaged_item_name {
    type: string
    sql: ${TABLE}.RestagedItemName ;;
  }

  dimension: restaged_item_no {
    type: string
    sql: ${TABLE}.RestagedItemNo ;;
  }

  dimension: revenue_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Revenue ;;
  }

  dimension: revenue_mtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Revenue_MTD ;;
  }

  dimension: revenue_mtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Revenue_MTD_LY ;;
  }

  dimension: revenue_qtd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Revenue_QTD ;;
  }

  dimension: revenue_qtd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Revenue_QTD_LY ;;
  }

  dimension: revenue_ytd_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Revenue_YTD ;;
  }

  dimension: revenue_ytd_ly_measure {
    type: number
    hidden: yes
    sql: ${TABLE}.Revenue_YTD_LY ;;
  }

  dimension: ship_to_city {
    type: string
    sql: ${TABLE}.ShipToCity ;;
  }

  dimension: ship_to_country_cd {
    type: string
    sql: ${TABLE}.ShipToCountryCd ;;
  }

  dimension: ship_to_country_name {
    type: string
    sql: ${TABLE}.ShipToCountryName ;;
  }

  dimension: ship_to_state_cd {
    type: string
    sql: ${TABLE}.ShipToStateCd ;;
  }

  dimension: ship_to_state_name {
    type: string
    sql: ${TABLE}.ShipToStateName ;;
  }

  dimension: ship_to_zip {
    type: string
    sql: ${TABLE}.ShipToZip ;;
  }

  dimension: source_id {
    type: number
    sql: ${TABLE}.SourceId ;;
  }

# AGS

# AGS_YTD
# AGS_QTD
# AGS_MTD
# AGS_YTD_LY
# AGS_QTD_LY
# AGS_MTD_LY


#define measures associate to AGS
  measure: AGS {
    type: sum
    sql: ${TABLE}.ags ;;
  }
  measure: AGS_YTD {
    type: sum
    sql: ${TABLE}.AGS_YTD ;;
  }
  measure: AGS_QTD {
    type: sum
    sql: ${TABLE}.AGS_QTD ;;
  }
  measure: AGS_MTD {
    type: sum
    sql: ${TABLE}.AGS_MTD ;;
  }

  measure: AGS_YTD_LY {
    type: sum
    sql: ${TABLE}.AGS_YTD_LY ;;
  }
  measure: AGS_QTD_LY {
    type: sum
    sql: ${TABLE}.AGS_QTD_LY ;;
  }
  measure: AGS_MTD_LY {
    type: sum
    sql: ${TABLE}.AGS_MTD_LY ;;
  }
# variance formulas
  measure: AGS_MTD_VAR {
    type: number
    sql:${AGS_MTD}-${AGS_MTD_LY}  ;;
  }
  measure: AGS_YTD_VAR {
    type: number
    sql:${AGS_YTD}-${AGS_YTD_LY}  ;;
  }
# end of block for AGS measures

#define measures associate to COGS
  measure: COGS {
    type: sum
    sql: ${TABLE}.COGS ;;
  }
  measure: COGS_YTD {
    type: sum
    sql: ${TABLE}.COGS_YTD ;;
  }
  measure: COGS_QTD {
    type: sum
    sql: ${TABLE}.COGS_QTD ;;
  }
  measure: COGS_MTD {
    type: sum
    sql: ${TABLE}.COGS_MTD ;;
  }

  measure: COGS_YTD_LY {
    type: sum
    sql: ${TABLE}.COGS_YTD_LY ;;
  }
  measure: COGS_QTD_LY {
    type: sum
    sql: ${TABLE}.COGS_QTD_LY ;;
  }
  measure: COGS_MTD_LY {
    type: sum
    sql: ${TABLE}.COGS_MTD_LY ;;
  }
# variance formulas
  measure: COGS_MTD_VAR {
    type: number
    sql:${COGS_MTD}-${COGS_MTD_LY}  ;;
  }
  measure: COGS_YTD_VAR {
    type: number
    sql:${COGS_YTD}-${COGS_YTD_LY}  ;;
  }
# end of block for COGS measures

#define measures associate to Trade Discount
  measure: Discount {
    type: sum
    sql: ${TABLE}.Discount ;;
  }
  measure: Discount_YTD {
    type: sum
    sql: ${TABLE}.Discount_YTD ;;
  }
  measure: Discount_QTD {
    type: sum
    sql: ${TABLE}.Discount_QTD ;;
  }
  measure: Discount_MTD {
    type: sum
    sql: ${TABLE}.Discount_MTD ;;
  }

  measure: Discount_YTD_LY {
    type: sum
    sql: ${TABLE}.Discount_YTD_LY ;;
  }
  measure: Discount_QTD_LY {
    type: sum
    sql: ${TABLE}.Discount_QTD_LY ;;
  }
  measure: Discount_MTD_LY {
    type: sum
    sql: ${TABLE}.Discount_MTD_LY ;;
  }
# variance formulas
  measure: Discount_MTD_VAR {
    type: number
    sql:${Discount_MTD}-${Discount_MTD_LY}  ;;
  }
  measure: Discount_YTD_VAR {
    type: number
    sql:${Discount_YTD}-${Discount_YTD_LY}  ;;
  }
# end of block for Discount measures

# Margin
# Margin_YTD
# Margin_QTD
# Margin_MTD
# Margin_YTD_LY
# Margin_QTD_LY
# Margin_MTD_LY


#define measures associate to  Margin
  measure: Margin {
    type: sum
    sql: ${TABLE}.Margin ;;
  }
  measure: Margin_YTD {
    type: sum
    sql: ${TABLE}.Margin_YTD ;;
  }
  measure: Margin_QTD {
    type: sum
    sql: ${TABLE}.Margin_QTD ;;
  }
  measure: Margin_MTD {
    type: sum
    sql: ${TABLE}.Margin_MTD ;;
  }

  measure: Margin_YTD_LY {
    type: sum
    sql: ${TABLE}.Margin_YTD_LY ;;
  }
  measure: Margin_QTD_LY {
    type: sum
    sql: ${TABLE}.Margin_QTD_LY ;;
  }
  measure: Margin_MTD_LY {
    type: sum
    sql: ${TABLE}.Margin_MTD_LY ;;
  }
# variance formulas
  measure: Margin_MTD_VAR {
    type: number
    sql:${Margin_MTD}-${Margin_MTD_LY}  ;;
  }
  measure: Margin_YTD_VAR {
    type: number
    sql:${Margin_YTD}-${Margin_YTD_LY}  ;;
  }
# end of block for Margin measures

# commit: added all NetSales measures


# NetSales
# NetSales_YTD
# NetSales_QTD
# NetSales_MTD
# NetSales_YTD_LY
# NetSales_QTD_LY
# NetSales_MTD_LY


#define measures associate to  NetSales
  measure: NetSales {
    type: sum
    sql: ${TABLE}.NetSales ;;
  }
  measure: NetSales_YTD {
    type: sum
    sql: ${TABLE}.NetSales_YTD ;;
  }
  measure: NetSales_QTD {
    type: sum
    sql: ${TABLE}.NetSales_QTD ;;
  }
  measure: NetSales_MTD {
    type: sum
    sql: ${TABLE}.NetSales_MTD ;;
  }

  measure: NetSales_YTD_LY {
    type: sum
    sql: ${TABLE}.NetSales_YTD_LY ;;
  }
  measure: NetSales_QTD_LY {
    type: sum
    sql: ${TABLE}.NetSales_QTD_LY ;;
  }
  measure: NetSales_MTD_LY {
    type: sum
    sql: ${TABLE}.NetSales_MTD_LY ;;
  }
# variance formulas
  measure: NetSales_MTD_VAR {
    type: number
    sql:${NetSales_MTD}-${NetSales_MTD_LY}  ;;
  }
  measure: NetSales_YTD_VAR {
    type: number
    sql:${NetSales_YTD}-${NetSales_YTD_LY}  ;;
  }
# end of block for NetSales measures


# Revenue
# Revenue_YTD
# Revenue_QTD
# Revenue_MTD
# Revenue_YTD_LY
# Revenue_QTD_LY
# Revenue_MTD_LY


#define measures associate to  Revenue
  measure: Revenue {
    type: sum
    sql: ${TABLE}.Revenue ;;
  }
  measure: Revenue_YTD {
    type: sum
    sql: ${TABLE}.Revenue_YTD ;;
  }
  measure: Revenue_QTD {
    type: sum
    sql: ${TABLE}.Revenue_QTD ;;
  }
  measure: Revenue_MTD {
    type: sum
    sql: ${TABLE}.Revenue_MTD ;;
  }

  measure: Revenue_YTD_LY {
    type: sum
    sql: ${TABLE}.Revenue_YTD_LY ;;
  }
  measure: Revenue_QTD_LY {
    type: sum
    sql: ${TABLE}.Revenue_QTD_LY ;;
  }
  measure: Revenue_MTD_LY {
    type: sum
    sql: ${TABLE}.Revenue_MTD_LY ;;
  }
# variance formulas
  measure: Revenue_MTD_VAR {
    type: number
    sql:${Revenue_MTD}-${Revenue_MTD_LY}  ;;
  }
  measure: Revenue_YTD_VAR {
    type: number
    sql:${Revenue_YTD}-${Revenue_YTD_LY}  ;;
  }
# end of block for Revenue measures


  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      account_name,
      company_name,
      category_name,
      credit_memo_reason_name,
      customer_name,
      item_name,
      restaged_item_name,
      ship_to_country_name,
      ship_to_state_name
    ]
  }
}
