view: division {
  sql_table_name: dbo.Division ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: long_description {
    type: string
    sql: ${TABLE}.Long_Description ;;
  }

  dimension: owner {
    type: string
    sql: ${TABLE}.Owner ;;
  }

  dimension: sequence_no {
    type: number
    sql: ${TABLE}.Sequence_No ;;
  }

  dimension: short_description {
    type: string
    sql: ${TABLE}.Short_Description ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
