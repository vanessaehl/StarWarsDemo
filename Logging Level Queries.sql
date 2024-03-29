/* Logging levels queries */
	-- None
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 40

	-- Basic
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 42

	-- Performance
		-- No error
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 45

		-- With error (Package1)
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 50

	SELECT TOP 10 * FROM ssisdb.catalog.execution_component_phases WHERE execution_id = 47 --package1 performance
	SELECT TOP 10 * FROM ssisdb.catalog.execution_component_phases WHERE execution_id = 63 --package1 basic

	-- Verbose
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 49

		-- Without data flow task
	SELECT *
	FROM SSISDB.catalog.execution_data_statistics
	WHERE execution_id = 49

		-- With data flow task (Package1)
	SELECT *
	FROM SSISDB.catalog.execution_data_statistics
	WHERE execution_id = 51

	-- Custom: Basic Lite
	SELECT * 
	FROM SSISDB.catalog.event_messages
	WHERE operation_id = 56
