view: item_dim {
  sql_table_name: dbo.ITEM_DIM ;;

  dimension: abc_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ABC_CODE ;;
  }

  dimension: abc_restage_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ABC_RESTAGE_CODE ;;
  }

  dimension: accounting_code {
    hidden: yes
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

  dimension: alcohol_percent {
    hidden: yes
    type: number
    sql: ${TABLE}.ALCOHOL_PERCENT ;;
  }

  dimension: alcohol_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.ALCOHOL_WEIGHT ;;
  }

  dimension: allotment_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ALLOTMENT_CODE ;;
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

  dimension: brand_code {
    hidden: yes
    type: string
    sql: ${TABLE}.BRAND_CODE ;;
  }

  dimension: brand_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.BRAND_CODE_DESC ;;
  }

  dimension: brand_code_long_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.BRAND_CODE_LONG_DESC ;;
  }

  dimension: brand_code_short_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.BRAND_CODE_SHORT_DESC ;;
  }

  dimension: brand_family {
    hidden: yes
    type: string
    sql: ${TABLE}.BRAND_FAMILY ;;
  }

  dimension: brand_family_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.BRAND_FAMILY_DESC ;;
  }

  dimension: brand_family_dsc {
    hidden: yes
    type: string
    sql: ${TABLE}.BRAND_FAMILY_DSC ;;
  }

  dimension: budget_acct_no {
    hidden: yes
    type: string
    sql: ${TABLE}.BUDGET_ACCT_NO ;;
  }

  dimension: business_type_code {
    hidden: yes
    type: string
    sql: ${TABLE}.BUSINESS_TYPE_CODE ;;
  }

  dimension: business_type_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.BUSINESS_TYPE_CODE_DESC ;;
  }

  dimension: business_type_code_dsc {
    hidden: yes
    type: string
    sql: ${TABLE}.BUSINESS_TYPE_CODE_DSC ;;
  }

  dimension: category_code {
    hidden: yes
    type: string
    sql: ${TABLE}.CATEGORY_CODE ;;
  }

  dimension: category_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.CATEGORY_CODE_DESC ;;
  }

  dimension: category_code_dsc {
    hidden: yes
    type: string
    sql: ${TABLE}.CATEGORY_CODE_DSC ;;
  }

  dimension: class_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.CLASS_CODE_DESC ;;
  }

  dimension: commodity_code {
    hidden: yes
    type: string
    sql: ${TABLE}.COMMODITY_CODE ;;
  }

  dimension: company_no {
    hidden: yes
    type: string
    sql: ${TABLE}.COMPANY_NO ;;
  }

  dimension: cost_acct_no {
    hidden: yes
    type: string
    sql: ${TABLE}.COST_ACCT_NO ;;
  }

  dimension: cur_matl_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_MATL_LWR_LEVEL ;;
  }

  dimension: cur_matl_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_MATL_THIS_LEVEL ;;
  }

  dimension: cur_mfg_ovrhd_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_MFG_OVRHD_LWR_LEVEL ;;
  }

  dimension: cur_mfg_ovrhd_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_MFG_OVRHD_THIS_LEVEL ;;
  }

  dimension: cur_pur_ovrhd_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_PUR_OVRHD_LWR_LEVEL ;;
  }

  dimension: cur_pur_ovrhd_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_PUR_OVRHD_THIS_LEVEL ;;
  }

  dimension: cur_rest_item_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.CUR_REST_ITEM_DESC ;;
  }

  dimension: cur_run_labor_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_RUN_LABOR_LWR_LEVEL ;;
  }

  dimension: cur_run_labor_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_RUN_LABOR_THIS_LEVEL ;;
  }

  dimension: cur_setup_labor_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_SETUP_LABOR_LWR_LEVEL ;;
  }

  dimension: cur_setup_labor_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_SETUP_LABOR_THIS_LEVEL ;;
  }

  dimension: cur_unit_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.CUR_UNIT_COST ;;
  }

  dimension: current_rest_abc_code {
    hidden: yes
    type: string
    sql: ${TABLE}.CURRENT_REST_ABC_CODE ;;
  }

  dimension: current_rest_attrib_code {
    hidden: yes
    type: string
    sql: ${TABLE}.CURRENT_REST_ATTRIB_CODE ;;
  }

  dimension: current_rest_attrib_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.CURRENT_REST_ATTRIB_DESC ;;
  }

  dimension: current_rest_item_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.CURRENT_REST_ITEM_DESC ;;
  }

  dimension: current_restaged_item {
    hidden: yes
    type: string
    sql: ${TABLE}.CURRENT_RESTAGED_ITEM ;;
  }

  dimension: dws_action {
    hidden: yes
    type: string
    sql: ${TABLE}.DWS_ACTION ;;
  }

  dimension: extra_field4 {
    hidden: yes
    type: number
    sql: ${TABLE}.EXTRA_FIELD4 ;;
  }

  dimension: extra_field_date {
    hidden: yes
    type: number
    sql: ${TABLE}.EXTRA_FIELD_DATE ;;
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

  dimension_group: insert_dt {
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
    sql: ${TABLE}.INSERT_DT ;;
  }

  dimension: item_accounting_class {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_ACCOUNTING_CLASS ;;
  }

  dimension: item_b_type {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_B_TYPE ;;
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

  dimension: item_ext_class_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_EXT_CLASS_CODE ;;
  }

  dimension: item_ext_language {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_EXT_LANGUAGE ;;
  }

  dimension: item_ext_oe_class {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_EXT_OE_CLASS ;;
  }

  dimension: item_ext_package {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_EXT_PACKAGE ;;
  }

  dimension: item_ext_prod_name {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_EXT_PROD_NAME ;;
  }

  dimension: item_ext_shade_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_EXT_SHADE_CODE ;;
  }

  dimension: item_no {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_NO ;;
  }

  dimension: item_no_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_NO_DESC ;;
  }

  dimension: item_type_code {
    hidden: yes
    type: string
    sql: ${TABLE}.ITEM_TYPE_CODE ;;
  }

  dimension: master_restage_item {
    hidden: yes
    type: string
    sql: ${TABLE}.MASTER_RESTAGE_ITEM ;;
  }

  dimension: obsolete_code {
    hidden: yes
    type: string
    sql: ${TABLE}.OBSOLETE_CODE ;;
  }

  dimension: obsolete_date {
    hidden: yes
    type: string
    sql: ${TABLE}.OBSOLETE_DATE ;;
  }

  dimension: price_point {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICE_POINT ;;
  }

  dimension: price_point_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.PRICE_POINT_DESC ;;
  }

  dimension: prior_restage_item {
    hidden: yes
    type: string
    sql: ${TABLE}.PRIOR_RESTAGE_ITEM ;;
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

  dimension: restage_code {
    hidden: yes
    type: string
    sql: ${TABLE}.RESTAGE_CODE ;;
  }

  dimension: restage_seq {
    hidden: yes
    type: number
    sql: ${TABLE}.RESTAGE_SEQ ;;
  }

  dimension: sales_acct_no {
    hidden: yes
    type: string
    sql: ${TABLE}.SALES_ACCT_NO ;;
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

  dimension: shade_code_desc {
    hidden: yes
    type: string
    sql: ${TABLE}.SHADE_CODE_DESC ;;
  }

  dimension: shipping_weight {
    hidden: yes
    type: number
    sql: ${TABLE}.SHIPPING_WEIGHT ;;
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

  dimension: std_matl_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_MATL_LWR_LEVEL ;;
  }

  dimension: std_matl_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_MATL_THIS_LEVEL ;;
  }

  dimension: std_mfg_ovrhd_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_MFG_OVRHD_LWR_LEVEL ;;
  }

  dimension: std_mfg_ovrhd_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_MFG_OVRHD_THIS_LEVEL ;;
  }

  dimension: std_pur_ovrhd_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_PUR_OVRHD_LWR_LEVEL ;;
  }

  dimension: std_pur_ovrhd_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_PUR_OVRHD_THIS_LEVEL ;;
  }

  dimension: std_run_labor_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_RUN_LABOR_LWR_LEVEL ;;
  }

  dimension: std_run_labor_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_RUN_LABOR_THIS_LEVEL ;;
  }

  dimension: std_setup_labor_lwr_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_SETUP_LABOR_LWR_LEVEL ;;
  }

  dimension: std_setup_labor_this_level {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_SETUP_LABOR_THIS_LEVEL ;;
  }

  dimension: std_unit_cost {
    hidden: yes
    type: number
    sql: ${TABLE}.STD_UNIT_COST ;;
  }

  dimension: uom {
    hidden: yes
    type: string
    sql: ${TABLE}.UOM ;;
  }

  dimension: upc_ean_code {
    hidden: yes
    type: string
    sql: ${TABLE}.UPC_EAN_CODE ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [item_ext_prod_name]
  }
}
