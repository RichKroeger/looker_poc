view: territory_dim {
  sql_table_name: dbo.TERRITORY_DIM ;;

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

  dimension: pk_id {
    type: number
    sql: ${TABLE}.PK_ID ;;
  }

  dimension: territory_id {
    type: string
    sql: ${TABLE}.TERRITORY_ID ;;
  }

  dimension: territory_id_name {
    type: string
    sql: ${TABLE}.TERRITORY_ID_NAME ;;
  }

  dimension: territory_name {
    type: string
    sql: ${TABLE}.TERRITORY_NAME ;;
  }

  measure: count {
    type: count
    drill_fields: [territory_name, territory_id_name]
  }
}
