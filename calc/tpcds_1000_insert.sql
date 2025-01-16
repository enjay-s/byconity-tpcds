

/*
call_center     42
catalog_page    30,000
catalog_returns 143,996,756
catalog_sales   1,439,980,416
customer        12,000,000
customer_address        6,000,000
customer_demographics   1,920,800
date_dim        73,049
household_demographics  7,200
income_band     20
inventory       783,000,000
item    300,000
promotion       1,500
reason  65
ship_mode       20
store   1,002
store_returns   287,999,764
store_sales     2,879,987,999
time_dim        86,400
warehouse       20
web_page        3,000
web_returns     71,997,522
web_sales       720,000,376
web_site        54

SELECT
    database,
    name,
    total_rows
FROM system.tables
WHERE database = 'tpcds1000'

Query id: 5f86c47d-cb98-4947-aadc-936d4ba4d4c7

┌─database──┬─name───────────────────┬─total_rows─┐
│ tpcds1000 │ call_center            │         42 │
│ tpcds1000 │ catalog_page           │      30000 │
│ tpcds1000 │ catalog_returns        │  144977419 │
│ tpcds1000 │ catalog_sales          │ 1446463507 │
│ tpcds1000 │ customer               │   12000000 │
│ tpcds1000 │ customer_address       │    6000000 │
│ tpcds1000 │ customer_demographics  │    1920800 │
│ tpcds1000 │ date_dim               │      73049 │
│ tpcds1000 │ household_demographics │       7200 │
│ tpcds1000 │ income_band            │         20 │
│ tpcds1000 │ inventory              │  783000000 │
│ tpcds1000 │ item                   │     300000 │
│ tpcds1000 │ promotion              │       1500 │
│ tpcds1000 │ reason                 │         65 │
│ tpcds1000 │ ship_mode              │         20 │
│ tpcds1000 │ store                  │       1002 │
│ tpcds1000 │ store_returns          │  287999764 │
│ tpcds1000 │ store_sales            │ 2879987999 │
│ tpcds1000 │ time_dim               │      86400 │
│ tpcds1000 │ warehouse              │         20 │
│ tpcds1000 │ web_page               │       3000 │
│ tpcds1000 │ web_returns            │   71997522 │
│ tpcds1000 │ web_sales              │  720000376 │
│ tpcds1000 │ web_site               │         54 │
└───────────┴────────────────────────┴────────────┘

catalog_page	9	30000	0.267152865
catalog_returns	27	144977419	11.090699179
catalog_sales	34	1446463507	105.01981181
customer	18	12000000	6.479408774
customer_address	13	6000000	2.4610249
customer_demographics	9	1920800	0.72400176
date_dim	28	73049	0.867844785
household_demographics	5	7200	0.208298501
income_band	3	20	0.149996349
inventory	4	783000000	4.687369154
item	22	300000	2.064111961
promotion	19	1500	0.270314645
reason	3	65	0.128278946
ship_mode	6	20	0.167998092
store	29	1002	0.433302556
store_returns	20	287999764	15.720345668
store_sales	23	2879987999	64.558222166
time_dim	10	86400	0.423409662
warehouse	14	20	0.216661325
web_page	14	3000	0.344140055
web_returns	24	71997522	10.832220948
web_sales	34	720000376	33.802637188
web_site	26	54	0.391431899

select * from call_center order by cc_call_center_id desc limit 100;
select * from catalog_page order by cp_catalog_page_id desc limit 100;
select * from catalog_returns order by cr_returned_date_sk desc limit 100;
select * from catalog_sales order by cs_sold_date_sk desc limit 100;
select * from customer_address order by ca_address_id desc limit 100;
select * from customer_demographics order by cd_demo_sk desc limit 100;
select * from customer order by c_customer_id desc limit 100;
select * from date_dim order by d_date_id desc limit 100;
select * from household_demographics order by hd_demo_sk desc limit 100;
select * from income_band order by ib_income_band_sk desc limit 100;
select * from inventory order by inv_item_sk desc limit 100;
select * from item order by i_item_id desc limit 100;
select * from promotion order by p_promo_id desc limit 100;
select * from reason order by r_reason_id desc limit 100;
select * from ship_mode order by sm_ship_mode_id desc limit 100;
select * from store_returns order by sr_returned_date_sk desc limit 100;
select * from store_sales order by ss_sold_date_sk desc limit 100;
select * from store order by s_store_id desc limit 100;
select * from time_dim order by t_time_id desc limit 100;
select * from warehouse order by w_warehouse_id desc limit 100;
select * from web_page order by wp_web_page_id desc limit 100;
select * from web_returns order by wr_returned_date_sk desc limit 100;
select * from web_sales order by ws_sold_date_sk desc limit 100;
select * from web_site order by web_site_id desc limit 100;
[12/31/2024 14:30:20.003] Run benchmark sql from /disk/nvme0n1/jasong/tpcds/sql/standard
[12/31/2024 14:30:21.356] [Query1]duration: 1254ms, status: 0
[12/31/2024 14:30:24.312] [Query2]duration: 2866ms, status: 0
[12/31/2024 14:30:26.178] [Query3]duration: 1777ms, status: 0
[12/31/2024 14:31:21.873] [Query4]duration: 55603ms, status: 0
[12/31/2024 14:31:27.488] [Query5]duration: 5522ms, status: 0
[12/31/2024 14:31:29.209] [Query6]duration: 1633ms, status: 0
[12/31/2024 14:31:33.176] [Query7]duration: 3878ms, status: 0
[12/31/2024 14:31:35.206] [Query8]duration: 1936ms, status: 0
[12/31/2024 14:31:45.506] [Query9]duration: 10210ms, status: 0
[12/31/2024 14:31:47.513] [Query10]duration: 1909ms, status: 0
[12/31/2024 14:32:21.143] [Query11]duration: 33531ms, status: 0
[12/31/2024 14:32:22.216] [Query12]duration: 984ms, status: 0
[12/31/2024 14:32:32.529] [Query13]duration: 10223ms, status: 0
[12/31/2024 14:32:58.967] [Query14]duration: 13275ms, status: 0
[12/31/2024 14:32:59.965] [Query15]duration: 914ms, status: 0
[12/31/2024 14:34:18.768] [Query16]duration: 78716ms, status: 0
[12/31/2024 14:34:25.538] [Query17]duration: 6678ms, status: 0
[12/31/2024 14:34:27.931] [Query18]duration: 2306ms, status: 0
[12/31/2024 14:34:30.781] [Query19]duration: 2763ms, status: 0
[12/31/2024 14:34:31.493] [Query20]duration: 623ms, status: 0
[12/31/2024 14:34:31.952] [Query21]duration: 368ms, status: 0
[12/31/2024 14:34:33.682] [Query22]duration: 1644ms, status: 0
[12/31/2024 14:35:10.002] [Query23]duration: 36230ms, status: 0
[12/31/2024 14:35:41.904] [Query24]duration: 16473ms, status: 0
[12/31/2024 14:35:47.693] [Query25]duration: 5698ms, status: 0
[12/31/2024 14:35:49.237] [Query26]duration: 1456ms, status: 0
[12/31/2024 14:35:53.530] [Query27]duration: 4193ms, status: 0
[12/31/2024 14:36:03.287] [Query28]duration: 9667ms, status: 0
[12/31/2024 14:36:14.002] [Query29]duration: 10618ms, status: 0
[12/31/2024 14:36:15.159] [Query30]duration: 1065ms, status: 0
[12/31/2024 14:36:20.082] [Query31]duration: 4835ms, status: 0
[12/31/2024 14:36:20.514] [Query32]duration: 331ms, status: 0
[12/31/2024 14:36:23.485] [Query33]duration: 2882ms, status: 0
[12/31/2024 14:36:26.877] [Query34]duration: 3301ms, status: 0
[12/31/2024 14:36:30.929] [Query35]duration: 3964ms, status: 0
[12/31/2024 14:36:33.453] [Query36]duration: 2438ms, status: 0
[12/31/2024 14:36:33.880] [Query37]duration: 338ms, status: 0
[12/31/2024 14:36:45.718] [Query38]duration: 11755ms, status: 0
[12/31/2024 14:36:46.961] [Query39]duration: 594ms, status: 0
[12/31/2024 14:36:48.644] [Query40]duration: 1589ms, status: 0
[12/31/2024 14:36:48.963] [Query41]duration: 231ms, status: 0
[12/31/2024 14:36:50.331] [Query42]duration: 1268ms, status: 0
[12/31/2024 14:36:53.148] [Query43]duration: 2731ms, status: 0
[12/31/2024 14:36:55.290] [Query44]duration: 2053ms, status: 0
[12/31/2024 14:36:56.659] [Query45]duration: 1278ms, status: 0
[12/31/2024 14:37:01.662] [Query46]duration: 4915ms, status: 0
[12/31/2024 14:37:09.350] [Query47]duration: 7600ms, status: 0
[12/31/2024 14:37:17.015] [Query48]duration: 7574ms, status: 0
[12/31/2024 14:37:20.838] [Query49]duration: 3729ms, status: 0
[12/31/2024 14:37:24.738] [Query50]duration: 3797ms, status: 0
[12/31/2024 14:37:40.208] [Query51]duration: 15383ms, status: 0
[12/31/2024 14:37:41.502] [Query52]duration: 1208ms, status: 0
[12/31/2024 14:37:45.819] [Query53]duration: 4233ms, status: 0
[12/31/2024 14:37:49.132] [Query54]duration: 3225ms, status: 0
[12/31/2024 14:37:50.439] [Query55]duration: 1219ms, status: 0
[12/31/2024 14:37:52.931] [Query56]duration: 2391ms, status: 0
[12/31/2024 14:38:30.241] [Query57]duration: 37222ms, status: 241
[12/31/2024 14:38:38.042] [Query58]duration: 7711ms, status: 0
[12/31/2024 14:38:46.003] [Query59]duration: 7872ms, status: 0
[12/31/2024 14:38:50.046] [Query60]duration: 3954ms, status: 0
[12/31/2024 14:38:55.918] [Query61]duration: 5783ms, status: 0
[12/31/2024 14:38:58.501] [Query62]duration: 2492ms, status: 0
[12/31/2024 14:39:03.048] [Query63]duration: 4459ms, status: 0
[12/31/2024 14:39:09.929] [Query64]duration: 6790ms, status: 0
[12/31/2024 14:39:18.549] [Query65]duration: 8532ms, status: 0
[12/31/2024 14:39:23.031] [Query66]duration: 4386ms, status: 0
[12/31/2024 14:39:49.689] [Query67]duration: 26570ms, status: 0
[12/31/2024 14:39:56.808] [Query68]duration: 7031ms, status: 0
[12/31/2024 14:39:59.504] [Query69]duration: 2608ms, status: 0
[12/31/2024 14:40:04.264] [Query70]duration: 4672ms, status: 0
[12/31/2024 14:40:07.346] [Query71]duration: 2996ms, status: 0
[12/31/2024 14:40:18.371] [Query72]duration: 10935ms, status: 0
[12/31/2024 14:40:21.981] [Query73]duration: 3523ms, status: 0
[12/31/2024 14:40:42.200] [Query74]duration: 20130ms, status: 0
[12/31/2024 14:41:14.933] [Query75]duration: 32642ms, status: 0
[12/31/2024 14:41:18.474] [Query76]duration: 3453ms, status: 0
[12/31/2024 14:41:21.767] [Query77]duration: 3202ms, status: 0
[12/31/2024 14:42:20.512] [Query78]duration: 58651ms, status: 0
[12/31/2024 14:42:26.460] [Query79]duration: 5858ms, status: 0
[12/31/2024 14:42:33.842] [Query80]duration: 7288ms, status: 0
[12/31/2024 14:42:35.447] [Query81]duration: 1517ms, status: 0
[12/31/2024 14:42:36.117] [Query82]duration: 583ms, status: 0
[12/31/2024 14:42:37.275] [Query83]duration: 1072ms, status: 0
[12/31/2024 14:42:38.206] [Query84]duration: 849ms, status: 0
[12/31/2024 14:42:44.671] [Query85]duration: 6375ms, status: 0
[12/31/2024 14:42:45.824] [Query86]duration: 1063ms, status: 0
[12/31/2024 14:42:57.617] [Query87]duration: 11705ms, status: 0
[12/31/2024 14:43:00.690] [Query88]duration: 2980ms, status: 0
[12/31/2024 14:43:04.376] [Query89]duration: 3597ms, status: 0
[12/31/2024 14:43:05.338] [Query90]duration: 876ms, status: 0
[12/31/2024 14:43:14.605] [Query91]duration: 9179ms, status: 0
[12/31/2024 14:43:15.218] [Query92]duration: 526ms, status: 0
[12/31/2024 14:43:19.757] [Query93]duration: 4437ms, status: 0
[12/31/2024 14:43:23.367] [Query94]duration: 3521ms, status: 0
[12/31/2024 14:44:13.305] [Query95]duration: 49843ms, status: 0
[12/31/2024 14:44:15.499] [Query96]duration: 2105ms, status: 0
[12/31/2024 14:44:54.077] [Query97]duration: 38491ms, status: 0
[12/31/2024 14:44:55.908] [Query98]duration: 1743ms, status: 0
[12/31/2024 14:45:44.975] [Query99]duration: 48976ms, status: 241
[12/31/2024 14:45:44.977] total duration: 887073ms

*/

INSERT INTO tpcds1000.call_center    FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/call_center_1_16_*.dat'     ;
INSERT INTO tpcds1000.catalog_page      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_page_1_16_*.dat'     ;
INSERT INTO tpcds1000.catalog_returns        FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_returns_{1..16}_16_*.dat'     ;
INSERT INTO tpcds1000.customer       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/customer_{1..16}_16_*.dat'     ;
INSERT INTO tpcds1000.customer_address       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/customer_address_{1..16}_16_*.dat'     ;
INSERT INTO tpcds1000.customer_demographics       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/customer_demographics_{1..16}_16_*.dat'     ;
INSERT INTO tpcds1000.date_dim       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/date_dim_1_16_*.dat'     ;
INSERT INTO tpcds1000.household_demographics      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/household_demographics_1_16_*.dat'     ;
INSERT INTO tpcds1000.income_band    FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/income_band_1_16_*.dat'     ;
INSERT INTO tpcds1000.inventory      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/inventory_{1..16}_16_*.dat'     ;
INSERT INTO tpcds1000.item      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/item_1_16_*.dat'     ;
INSERT INTO tpcds1000.promotion      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/promotion_1_16_*.dat'     ;
INSERT INTO tpcds1000.reason    FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/reason_1_16_*.dat'     ;
INSERT INTO tpcds1000.ship_mode      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/ship_mode_1_16_*.dat'     ;

INSERT INTO tpcds1000.store      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_1_16_*.dat'     ;
INSERT INTO tpcds1000.store_returns     FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_returns_{1..16}_16_*.dat'     ;
INSERT INTO tpcds1000.time_dim       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/time_dim_1_16_*.dat'     ;
INSERT INTO tpcds1000.warehouse      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/warehouse_1_16_*.dat'     ;
INSERT INTO tpcds1000.web_page       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/web_page_1_16_*.dat'     ;
INSERT INTO tpcds1000.web_returns    FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/web_returns_{1..16}_16_*.dat'     ;
INSERT INTO tpcds1000.web_sales      FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000//web_sales_{1..16}_16_*.dat'     ;
INSERT INTO tpcds1000.web_site       FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/web_site_1_16_*.dat'     ;

INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_1_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_2_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_3_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_4_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_5_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_6_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_7_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_8_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_9_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_10_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_11_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_12_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_13_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_14_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_15_*';
INSERT INTO tpcds1000.catalog_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/catalog_sales_16_*';


INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_1_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_2_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_3_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_4_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_5_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_6_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_7_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_8_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_9_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_10_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_11_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_12_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_13_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_14_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_15_*';
INSERT INTO tpcds1000.store_sales FORMAT CSV INFILE 'hdfs://10.201.228.33:8020/data_tpcds_1000/store_sales_16_*';