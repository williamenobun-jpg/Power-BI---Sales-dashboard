--- EVERY 2 MONTHS UPDATES/ANALYSIS


DECLARE @STARTDATE DATE ='01 JAN 2019'
DECLARE @ENDDATE DATE ='28 FEB 2019'
DECLARE @PYSTARTDATE DATE =DATEADD(YEAR,-1,@STARTDATE)
DECLARE @PYENDDATE DATE =DATEADD(YEAR,-1,@ENDDATE)


SELECT 'CY' AS STATUS,*
  FROM [IgloryTrading].[dbo].[SALES_ANALYSIS_5]
  Where CAST(date as date )is not null 
  and CAST(date as date ) between @STARTDATE and @ENDDATE

  UNION 

  SELECT 'PY' AS STATUS,*
  FROM [IgloryTrading].[dbo].[SALES_ANALYSIS_5]
  Where CAST(date as date ) is not null 
  and CAST(date as date ) between @PYSTARTDATE and @PYENDDATE




  --SELECT 'CY' AS STATUS,*
  --FROM [IgloryTrading].[dbo].[SALES_ANALYSIS_5]
  --Where CAST(date as date )is not null 
  --and CAST(date as date ) between '01 JAN 2019' and '28 FEB 2019'

  --UNION 

  --SELECT 'PY' AS STATUS,*
  --FROM [IgloryTrading].[dbo].[SALES_ANALYSIS_5]
  --Where CAST(date as date ) is not null 
  --and CAST(date as date ) between '01 JAN 2018' and '28 FEB 2018'
