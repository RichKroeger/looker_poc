connection: "dar-dbdev1"

# include all the views
include: "*.view"

# include all the dashboards
include: "*.dashboard"

explore: company_dim {
}

explore: invoice_sales {
  from: vw_invoice_sales
  view_label: "Invoiced Sales"

}


# - explore: aaaa_cognos_reports_distribution_test

# - explore: aaqa_budget_pulse_details

# - explore: accounting_code_dim

# - explore: adj_global_sales_calc_facts
#   joins:
#     - join: global_sales_calc_facts
#       type: left_outer
#       sql_on: ${adj_global_sales_calc_facts.global_sales_calc_facts_id} = ${global_sales_calc_facts.global_sales_calc_facts_id}
#       relationship: many_to_one


# - explore: adj_global_sales_calc_facts_bkp_05_23_17
#   joins:
#     - join: global_sales_calc_facts
#       type: left_outer
#       sql_on: ${adj_global_sales_calc_facts_bkp_05_23_17.global_sales_calc_facts_id} = ${global_sales_calc_facts.global_sales_calc_facts_id}
#       relationship: many_to_one


# - explore: alternate_item_dim

# - explore: asp_net_roles

# - explore: asp_net_user_claims

# - explore: asp_net_user_logins

# - explore: asp_net_user_roles

# - explore: asp_net_users

# - explore: be_2015_nov_items

# - explore: brand_dim

# - explore: brand_lookup

# - explore: brand_lookup_bkp

# - explore: bsg_data_nov

# - explore: budget_pulse_by_customer_group

# - explore: budget_pulse_details_new

# - explore: budget_pulse_details_rk

# - explore: budget_pulse_details_test

# - explore: business_entity

# - explore: business_type

# - explore: category_lookup

# - explore: cmdty_conversion

# - explore: cn_alternate_items

# - explore: cn_custom_item_dim

# - explore: cog_fin_sales_analysis

# - explore: cog_fin_sales_summary_cypy

# - explore: cog_financial_sales_facts_summary

# - explore: cog_global_attributes_vw

# - explore: cog_sales_analysis_data_vw

# - explore: cog_ship_to

# - explore: cog_trade_discount_dim

# - explore: cog_yoy_review_exclusive

# - explore: cog_zotos_countries

# - explore: cognos_reports_distribution

# - explore: company_no_to_company

# - explore: contract_promotions_dim

# - explore: corporate_dim

# - explore: cost_break_down

# - explore: country_state_dim

# - explore: credit_debit_reason_dim

# - explore: credit_rating_dim

# - explore: curr_month_num_days_in_month

# - explore: currency_dim

# - explore: cust_group_configuration

# - explore: custom_item_dim

# - explore: custom_item_dim_bkp

# - explore: custom_item_dim_rk

# - explore: custom_item_dim_wrk

# - explore: customer

# - explore: customer_class_dim

# - explore: customer_dim

# - explore: customer_item_dim

# - explore: customer_price_code_dim

# - explore: date_dim

# - explore: date_dim_bus_day

# - explore: dbqa1_new_items

# - explore: division

# - explore: division_dim

# - explore: enterprise_dim

# - explore: error_log

# - explore: exchange_rates_dim

# - explore: exclusive_financial_metrics

# - explore: exclusive_summary_by_cust_group

# - explore: executive_cost_data_tbl

# - explore: financial_cost_details

# - explore: financial_footnote

# - explore: financial_sales_facts

# - explore: financial_sales_facts1

# - explore: financial_sales_facts2

# - explore: financial_sales_facts3

# - explore: financial_sales_facts5

# - explore: financial_sales_facts6

# - explore: financial_sales_facts_bkup

# - explore: financial_sales_facts_v1

# - explore: financial_sales_facts_v2

# - explore: financial_shipped_open_facts6

# - explore: financial_sku_register_2016

# - explore: financial_sku_register_2016a

# - explore: full_revenue_lookup

# - explore: geography_dim

# - explore: gl_adjustment_transaction_details

# - explore: gl_transaction_detail

# - explore: global_brand_group_dim

# - explore: global_brand_lkup

# - explore: global_brand_lkup_obsolete20170803

# - explore: global_brand_view

# - explore: global_business_type_dim

# - explore: global_company_dim

# - explore: global_division_dim

# - explore: global_product_category_dim

# - explore: global_sales_append

# - explore: global_sales_calc_facts

# - explore: global_sales_calcs

# - explore: global_sales_facts

# - explore: global_sales_summary

# - explore: global_sales_summary_facts

# - explore: green_sheet_metrics

# - explore: green_sheet_stage_status

# - explore: greensheet_budget_details_old

# - explore: greensheet_budget_pulse

# - explore: greensheet_budget_pulse_backup

# - explore: greensheet_detail_data

# - explore: greensheet_detail_facts

# - explore: gs_cgnsmbc6

# - explore: gs_cgnsmbf9

# - explore: gs_cgnsmbf9_87

# - explore: gs_company_dim

# - explore: gs_customer_dim

# - explore: gs_customer_item_dim

# - explore: gs_drill_thru_details_only

# - explore: gs_invoice_details_fact

# - explore: gs_item_dim

# - explore: gs_itmattrsv1

# - explore: gs_mba5_rep

# - explore: gs_mbbarep

# - explore: gs_mbbfrep

# - explore: gs_open_orders_fact

# - explore: gs_security_dim

# - explore: gs_shipped_open_facts

# - explore: gs_stg_invoice_details_fact

# - explore: gs_stg_invoice_details_fact_1

# - explore: gs_stg_open_orders_fact

# - explore: gs_stg_security_dim_1

# - explore: gs_stg_security_dim_2

# - explore: gs_stg_security_dim_3

# - explore: gs_stg_shipped_open_facts

# - explore: gs_summary_exclusive

# - explore: gsidn

# - explore: holiday_schedule

# - explore: inventory_balance_analysis_fact

# - explore: inventory_balance_fact

# - explore: invoice_allowances

# - explore: invoice_balance_analysis_fact

# - explore: invoice_details_fact

# - explore: invoice_details_fact_corphier

# - explore: invoice_details_fact_history

# - explore: invoice_details_maxdate

# - explore: invoice_details_reporting_summary

# - explore: invoice_history_detail_facts

# - explore: invoice_history_detail_facts_2007

# - explore: invoice_history_detail_facts_2008

# - explore: invoice_history_detail_facts_vw

# - explore: item_base_cost_dim

# - explore: item_curr_price_dim

# - explore: item_dim

# - explore: item_dscategory

# - explore: item_planning

# - explore: manage_bi_help_docs

# - explore: manage_bi_web_config

# - explore: mapics_gl_data

# - explore: markdowns

# - explore: market_analysis_dim

# - explore: marketing_analytics_config2

# - explore: marketing_ppk

# - explore: missed_items

# - explore: missing_items_dec_2016

# - explore: npd_project_detail

# - explore: open_orders_fact

# - explore: open_orders_fact_corphier

# - explore: order_invoice_fact

# - explore: order_invoice_fact_2012_2011

# - explore: pos_detail_data

# - explore: posv1_detail_data

# - explore: pro_fax_assets

# - explore: process_log

# - explore: product_dim

# - explore: rk_custom_items

# - explore: rp_detail_facts

# - explore: rp_detail_facts_cases

# - explore: rp_detail_facts_cost

# - explore: rp_detail_facts_eaches

# - explore: rp_detail_facts_price

# - explore: sales_budget_reporting_summary

# - explore: sales_dim

# - explore: sales_goal_fact

# - explore: sales_territory_dim

# - explore: security_dim

# - explore: shipped_open_facts

# - explore: shipped_open_facts_vw
#   joins:
#     - join: shipped_open_facts
#       type: left_outer
#       sql_on: ${shipped_open_facts_vw.shipped_open_facts_id} = ${shipped_open_facts.shipped_open_facts_id}
#       relationship: many_to_one


# - explore: sku_cost_details

# - explore: sku_detail_f16

# - explore: stg_accounting_code_dim

# - explore: stg_adj_global_sales_calc_facts
#   joins:
#     - join: global_sales_calc_facts
#       type: left_outer
#       sql_on: ${stg_adj_global_sales_calc_facts.global_sales_calc_facts_id} = ${global_sales_calc_facts.global_sales_calc_facts_id}
#       relationship: many_to_one


# - explore: stg_brand_dim

# - explore: stg_budget_reporting_summary_1

# - explore: stg_budget_reporting_summary_cy

# - explore: stg_budget_reporting_summary_cy_cmtd

# - explore: stg_budget_reporting_summary_cy_lfm

# - explore: stg_budget_reporting_summary_cy_lfytd

# - explore: stg_budget_reporting_summary_cy_ytd

# - explore: stg_budget_reporting_summary_ly

# - explore: stg_budget_reporting_summary_ly_cmtd

# - explore: stg_budget_reporting_summary_ly_lfm

# - explore: stg_budget_reporting_summary_ly_lfytd

# - explore: stg_budget_reporting_summary_ly_ytd

# - explore: stg_c_ords

# - explore: stg_company_dim

# - explore: stg_contract_promotions_dim

# - explore: stg_corporate_dim_d1

# - explore: stg_corporate_dim_d2

# - explore: stg_corporate_dim_d3

# - explore: stg_corporate_dim_e1

# - explore: stg_corporate_dim_e2

# - explore: stg_corporate_dim_e3

# - explore: stg_country_dim

# - explore: stg_country_state_dim

# - explore: stg_credit_debit_reason_dim

# - explore: stg_credit_rating_dim

# - explore: stg_customer_class_dim

# - explore: stg_customer_dim

# - explore: stg_customer_item_dim

# - explore: stg_customer_price_code_dim

# - explore: stg_ddem

# - explore: stg_deninv

# - explore: stg_endinv

# - explore: stg_enterprise_dim

# - explore: stg_exclusive_summary_by_cust_group

# - explore: stg_exclusive_summary_by_cust_no

# - explore: stg_fore_cast

# - explore: stg_global_sales_calc_facts
#   joins:
#     - join: global_sales_calc_facts
#       type: left_outer
#       sql_on: ${stg_global_sales_calc_facts.global_sales_calc_facts_id} = ${global_sales_calc_facts.global_sales_calc_facts_id}
#       relationship: many_to_one


# - explore: stg_global_sales_facts

# - explore: stg_greensheet_detail_facts

# - explore: stg_greensheet_detail_facts_mar16

# - explore: stg_greensheet_details

# - explore: stg_grreq

# - explore: stg_inventory_balance_analysis_fact

# - explore: stg_inventory_balance_fact

# - explore: stg_invoice_allowances

# - explore: stg_invoice_balance_analysis_fact

# - explore: stg_invoice_details_fact

# - explore: stg_invoice_details_fact_1

# - explore: stg_invoice_details_fact_1_h

# - explore: stg_invoice_details_fact_2

# - explore: stg_invoice_details_fact_2_h

# - explore: stg_invoice_details_fact_history_ye

# - explore: stg_invoice_details_reporting_summary_1

# - explore: stg_invoice_details_reporting_summary_2

# - explore: stg_invoice_details_reporting_summary_cy

# - explore: stg_invoice_details_reporting_summary_cy_cm

# - explore: stg_invoice_details_reporting_summary_cy_lfm

# - explore: stg_invoice_details_reporting_summary_cy_lfqtd

# - explore: stg_invoice_details_reporting_summary_cy_lfqtr

# - explore: stg_invoice_details_reporting_summary_cy_lfytd

# - explore: stg_invoice_details_reporting_summary_cy_qtr

# - explore: stg_invoice_details_reporting_summary_cy_ytd

# - explore: stg_invoice_details_reporting_summary_ly

# - explore: stg_invoice_details_reporting_summary_ly_cm

# - explore: stg_invoice_details_reporting_summary_ly_cmtd

# - explore: stg_invoice_details_reporting_summary_ly_lfm

# - explore: stg_invoice_details_reporting_summary_ly_lfqtd

# - explore: stg_invoice_details_reporting_summary_ly_lfqtr

# - explore: stg_invoice_details_reporting_summary_ly_lfytd

# - explore: stg_invoice_details_reporting_summary_ly_qtr

# - explore: stg_invoice_details_reporting_summary_ly_ytd

# - explore: stg_item_dim

# - explore: stg_mapics_gl_data

# - explore: stg_markdowns

# - explore: stg_market_analysis_dim

# - explore: stg_monthly_sales_error_import

# - explore: stg_monthly_sales_import

# - explore: stg_monthly_sales_summary

# - explore: stg_open_orders_fact

# - explore: stg_open_orders_fact_2

# - explore: stg_order_invoice_fact

# - explore: stg_order_invoice_fact_1

# - explore: stg_order_invoice_history_fact

# - explore: stg_p_recs

# - explore: stg_pos_detail_data

# - explore: stg_posv1_detail_data

# - explore: stg_rp_data_cases

# - explore: stg_rp_data_cost

# - explore: stg_rp_data_eaches

# - explore: stg_rp_data_price

# - explore: stg_s_recs

# - explore: stg_sales_goal_fact

# - explore: stg_sales_goal_fact_1

# - explore: stg_sales_goal_fact_2

# - explore: stg_sales_territory_dim

# - explore: stg_security_dim_1

# - explore: stg_security_dim_2

# - explore: stg_security_dim_3

# - explore: stg_shipped_open_facts

# - explore: stg_sku_fixlist

# - explore: stg_state_dim

# - explore: stg_summary_by_accounting_code

# - explore: stg_summary_by_sales_territory

# - explore: stg_terms_dim

# - explore: stg_warehouse_dim

# - explore: stg_wos

# - explore: stg_zone_dim

# - explore: sysdiagrams

# - explore: temp1

# - explore: terms_dim

# - explore: territory_dim

# - explore: test_budget_pulse_details

# - explore: tmp_custom_item

# - explore: todays_month_percent

# - explore: todays_month_percent1

# - explore: todays_year_percent

# - explore: vw_bill_of_material

# - explore: vw_bill_of_material_multi_level

# - explore: vw_brand_class_master_file

# - explore: vw_corporate_hierarchy_tfr

# - explore: vw_custom_item_dim

# - explore: vw_exclusive_mtd_sales_summary_by_cust_group

# - explore: vw_financial_shipped_open_facts
#   joins:
#     - join: shipped_open_facts
#       type: left_outer
#       sql_on: ${vw_financial_shipped_open_facts.shipped_open_facts_id} = ${shipped_open_facts.shipped_open_facts_id}
#       relationship: many_to_one


# - explore: vw_financial_sku_register_2016

# - explore: vw_fmitem

# - explore: vw_fmitem_monthly

# - explore: vw_fmpoint_of_sale

# - explore: vw_forecast_reconciliation

# - explore: vw_global_brand_lookup

# - explore: vw_global_sales_calc_facts

# - explore: vw_global_sales_calc_facts_v1

# - explore: vw_global_sales_facts

# - explore: vw_inventory_sales_manufacture_last30

# - explore: vw_invoice_details_corphier_tfr

# - explore: vw_invoice_details_corphier_tfr_orphans

# - explore: vw_invoice_sales

# - explore: vw_manufacture_order

# - explore: vw_mo_master

# - explore: vw_open_orders_corphier_tfr

# - explore: vw_pstdtl

# - explore: vw_pulse

# - explore: vw_rp_detail_info

# - explore: vw_rpitem

# - explore: vw_rpitem_detail

# - explore: vw_rpitem_summary

# - explore: vw_sales_goal_corphier_tfr

# - explore: vw_shipped_open_facts
#   joins:
#     - join: gs_shipped_open_facts
#       type: left_outer
#       sql_on: ${vw_shipped_open_facts.gs_shipped_open_facts_id} = ${gs_shipped_open_facts.gs_shipped_open_facts_id}
#       relationship: many_to_one


# - explore: vw_shipped_open_facts_annual

# - explore: vw_shipped_open_facts_yearly

# - explore: vw_shipped_open_facts_yearly_v1

# - explore: vw_shipped_open_facts_yearly_v2

# - explore: vw_shipped_open_facts_yearly_v3

# - explore: vw_stg_greensheet_detail_facts

# - explore: vw_weighted_forecast_accuracy

# - explore: warehouse_dim

# - explore: wrk_unpivot_weekly_amt

# - explore: year_percent_last_month

# - explore: zone_dim

# - explore: zotos_professional_financial_metrics

# - explore: zz_accdmas

# - explore: zz_bclsmas

# - explore: zz_brdmas

# - explore: zz_cgnsgldata

# - explore: zz_cgnsgrnsd

# - explore: zz_cgnsgrnsd_2014_07_23

# - explore: zz_cgnsgrnsd_20160825

# - explore: zz_cgnsinvb

# - explore: zz_cgnsmbc6

# - explore: zz_cgnsmbf9

# - explore: zz_cgnsmbf915

# - explore: zz_cgnsmbf915_dec2015

# - explore: zz_cgnsmbf915_dec2015_87

# - explore: zz_cgnsmbf915_nov2015

# - explore: zz_cgnsmbf915_nov2015_87

# - explore: zz_cgnsmbf915_novdec_87

# - explore: zz_cgnsmbf9_h

# - explore: zz_cgnsmbgg

# - explore: zz_cgnsmomast

# - explore: zz_cgnspstdtl

# - explore: zz_imhist

# - explore: zz_invbalv2

# - explore: zz_itmattrsv1

# - explore: zz_itmrvb

# - explore: zz_itmrvb_f16

# - explore: zz_ldgoal0_f

# - explore: zz_mba5_rep

# - explore: zz_mbbarep

# - explore: zz_mbbbrep

# - explore: zz_mbbdrep

# - explore: zz_mbberep

# - explore: zz_mbbfrep

# - explore: zz_mbbgrep

# - explore: zz_mbbirep

# - explore: zz_mbbjrep

# - explore: zz_mbbnrep

# - explore: zz_mbd1_rep

# - explore: zz_mbdlrep

# - explore: zz_mbdorep

# - explore: zz_mbdyrep

# - explore: zz_mbdzrep

# - explore: zz_mbebrep

# - explore: zz_mbf4_cpp

# - explore: zz_mbf9_cpp

# - explore: zz_mbf9_rep

# - explore: zz_mbi9_rep

# - explore: zz_oeitxnsav

# - explore: zz_purtrendv1

# - explore: zz_rfdet

# - explore: zz_slsmas

# - explore: zz_szpos

# - explore: zz_szposv1

# - explore: zz_whsmst
