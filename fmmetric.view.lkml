view: fmmetric {
  sql_table_name: ref.FMMetric ;;

  dimension: fmmetric_id {
    hidden: yes
    primary_key: yes
    type: number
    sql: ${TABLE}.FMMetricId ;;
  }

  dimension: fmmetric_cd {
    hidden: yes
    type: string
    sql: ${TABLE}.FMMetricCd ;;
  }

  dimension: metric_name {
    type: string
    sql: ${TABLE}.FMMetricName ;;
  }

  dimension: fmmetric_seq {
    hidden: yes
    type: number
    sql: ${TABLE}.FMMetricSeq ;;
  }

  measure: count {
    hidden: yes
    type: count
    drill_fields: [fmmetric_id, metric_name]
  }
}
