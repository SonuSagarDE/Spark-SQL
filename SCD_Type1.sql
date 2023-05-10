-- Databricks notebook source
-- MAGIC %md
-- MAGIC ###Type 1 SCDs - Overwriting
-- MAGIC In a Type 1 SCD the new data overwrites the existing data. Thus the existing data is lost as it is not stored anywhere else. This is the default type of dimension you create. You do not need to specify any additional information to create a Type 1 SCD.

-- COMMAND ----------

-- MAGIC %md
-- MAGIC #### MERGE INTO (Delta Lake on Databricks)
-- MAGIC * Merges a set of updates, insertions, and deletions based on a source table into a target Delta table.
-- MAGIC * __`Syntax`__ :
-- MAGIC * __`MERGE INTO target_table_identifier [AS target_alias]`__
-- MAGIC * __`USING source_table_identifier [<time_travel_version>] [AS source_alias]`__
-- MAGIC * __`ON <merge_condition>`__
-- MAGIC * __`[ WHEN MATCHED [ AND <condition> ] THEN <matched_action> ]`__
-- MAGIC * __`[ WHEN MATCHED [ AND <condition> ] THEN <matched_action> ]`__
-- MAGIC * __`[ WHEN NOT MATCHED [ AND <condition> ]  THEN <not_matched_action> ] `__

-- COMMAND ----------

-- MAGIC %fs rm -r dbfs:/user/hive/warehouse/events

-- COMMAND ----------

DROP TABLE IF EXISTS events;
CREATE TABLE IF NOT EXISTS events(event_id int,event_date date,data string, delete boolean);


-- COMMAND ----------


