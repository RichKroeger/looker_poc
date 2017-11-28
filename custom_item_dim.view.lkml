view: custom_item_dim {
  sql_table_name: dbo.CUSTOM_ITEM_DIM ;;

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

  dimension: brand_code {
    type: string
    sql: ${TABLE}.BRAND_CODE ;;
  }

  dimension: brand_code_desc {
    type: string
    sql: ${TABLE}.BRAND_CODE_DESC ;;
  }

  dimension: brand_code_long_desc {
    type: string
    sql: ${TABLE}.BRAND_CODE_LONG_DESC ;;
  }

  dimension: brand_code_short_desc {
    type: string
    sql: ${TABLE}.BRAND_CODE_SHORT_DESC ;;
  }

  dimension: category_code {
    type: string
    sql: ${TABLE}.CATEGORY_CODE ;;
  }

  dimension: category_code_desc {
    type: string
    sql: ${TABLE}.CATEGORY_CODE_DESC ;;
  }

  dimension: category_code_dsc {
    type: string
    sql: ${TABLE}.CATEGORY_CODE_DSC ;;
  }

  dimension: company_no {
    type: string
    sql: ${TABLE}.COMPANY_NO ;;
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

  dimension: item_desc {
    type: string
    sql: ${TABLE}.ITEM_DESC ;;
  }

  dimension: item_no {
    type: string
    sql: ${TABLE}.ITEM_NO ;;
  }

  dimension: item_no_desc {
    type: string
    sql: ${TABLE}.ITEM_NO_DESC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
