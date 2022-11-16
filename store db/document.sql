USE store
GO
--drop table document
/****** Object:  Table [dbo].[document]    Script Date: 11/24/2021 1:37:04 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[document](
	[Store_id] [int] NULL,
	[doc1_name] [varchar](100) NULL,
	[doc1_type] [varchar](100) NULL,
	[doc1_size] [varbinary](max) NULL,
	[doc1_path] [varchar](500) NULL,
	[doc2_name] [varchar](100) NULL,
	[doc2_type] [varchar](100) NULL,
	[doc2_size] [varbinary](max) NULL,
	[doc2_path] [varchar](500) NULL,
	[doc3_name] [varchar](100) NULL,
	[doc3_type] [varchar](100) NULL,
	[doc3_size] [varbinary](max) NULL,
	[doc3_path] [varchar](500) NULL,
	[doc4_name] [varchar](100) NULL,
	[doc4_type] [varchar](100) NULL,
	[doc4_size] [varbinary](max) NULL,
	[doc4_path] [varchar](500) NULL,
	[doc5_name] [varchar](100) NULL,
	[doc5_type] [varchar](100) NULL,
	[doc5_size] [varbinary](max) NULL,
	[doc5_path] [varchar](500) NULL,
	[doc6_name] [varchar](100) NULL,
	[doc6_type] [varchar](100) NULL,
	[doc6_size] [varbinary](max) NULL,
	[doc6_path] [varchar](500) NULL,
	[doc7_name] [varchar](100) NULL,
	[doc7_type] [varchar](100) NULL,
	[doc7_size] [varbinary](max) NULL,
	[doc7_path] [varchar](500) NULL,
	[doc8_name] [varchar](100) NULL,
	[doc8_type] [varchar](100) NULL,
	[doc8_size] [varbinary](max) NULL,
	[doc8_path] [varchar](500) NULL,
	[doc9_name] [varchar](100) NULL,
	[doc9_type] [varchar](100) NULL,
	[doc9_size] [varbinary](max) NULL,
	[doc9_path] [varchar](500) NULL,
	[doc10_name] [varchar](100) NULL,
	[doc10_type] [varchar](100) NULL,
	[doc10_size] [varbinary](max) NULL,
	[doc10_path] [varchar](500) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

ALTER TABLE [dbo].[document]  WITH CHECK ADD FOREIGN KEY([Store_id])
REFERENCES [dbo].[Store_info] (Store_id)
GO


