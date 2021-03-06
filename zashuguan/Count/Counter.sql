CREATE TABLE [dbo].[PE_StatAddress] (
	[TAddress] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[TAddNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatBrowser] (
	[TBrowser] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[TBrwNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatColor] (
	[TColor] [nvarchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[TColNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatDay] (
	[0] [int] NULL ,
	[1] [int] NULL ,
	[2] [int] NULL ,
	[3] [int] NULL ,
	[4] [int] NULL ,
	[5] [int] NULL ,
	[6] [int] NULL ,
	[7] [int] NULL ,
	[8] [int] NULL ,
	[9] [int] NULL ,
	[10] [int] NULL ,
	[11] [int] NULL ,
	[12] [int] NULL ,
	[13] [int] NULL ,
	[14] [int] NULL ,
	[15] [int] NULL ,
	[16] [int] NULL ,
	[17] [int] NULL ,
	[18] [int] NULL ,
	[19] [int] NULL ,
	[20] [int] NULL ,
	[21] [int] NULL ,
	[22] [int] NULL ,
	[23] [int] NULL ,
	[TDay] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatInfoList] (
	[StartDate] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[TotalNum] [int] NOT NULL ,
	[TotalView] [int] NULL ,
	[MonthNum] [int] NULL ,
	[MonthMaxNum] [int] NULL ,
	[OldMonth] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[MonthMaxDate] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayNum] [int] NULL ,
	[DayMaxNum] [int] NULL ,
	[OldDay] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[DayMaxDate] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[HourNum] [int] NULL ,
	[HourMaxNum] [int] NULL ,
	[OldHour] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HourMaxTime] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChinaNum] [int] NULL ,
	[OtherNum] [int] NULL ,
	[MasterTimeZone] [int] NULL ,
	[IntervalNum] [int] NULL ,
	[OnlineTime] [int] NULL ,
	[VisitRecord] [int] NULL ,
	[KillRefresh] [int] NULL ,
	[RegFields_Fill] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[OldTotalNum] [int] NULL ,
	[OldTotalView] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatIp] (
	[TIp] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[TIpNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatIpInfo] (
	[StartIp] [float] NOT NULL ,
	[EndIp] [float] NULL ,
	[Address] [nvarchar] (70) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatKeyword] (
	[TKeyword] [nvarchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[TKeywordNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatMonth] (
	[1] [int] NULL ,
	[2] [int] NULL ,
	[3] [int] NULL ,
	[4] [int] NULL ,
	[5] [int] NULL ,
	[6] [int] NULL ,
	[7] [int] NULL ,
	[8] [int] NULL ,
	[9] [int] NULL ,
	[10] [int] NULL ,
	[11] [int] NULL ,
	[12] [int] NULL ,
	[13] [int] NULL ,
	[14] [int] NULL ,
	[15] [int] NULL ,
	[16] [int] NULL ,
	[17] [int] NULL ,
	[18] [int] NULL ,
	[19] [int] NULL ,
	[20] [int] NULL ,
	[21] [int] NULL ,
	[22] [int] NULL ,
	[23] [int] NULL ,
	[24] [int] NULL ,
	[25] [int] NULL ,
	[26] [int] NULL ,
	[27] [int] NULL ,
	[28] [int] NULL ,
	[29] [int] NULL ,
	[30] [int] NULL ,
	[31] [int] NULL ,
	[TMonth] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatMozilla] (
	[TMozilla] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[TMozNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatOnline] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[UserIP] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserAgent] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserPage] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[OnTime] [datetime] NULL ,
	[LastTime] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatRefer] (
	[TRefer] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[TRefNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatScreen] (
	[TScreen] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[TScrNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatSystem] (
	[TSystem] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[TSysNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatTimezone] (
	[TTimezone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[TTimNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatVisit] (
	[1] [int] NULL ,
	[2] [int] NULL ,
	[3] [int] NULL ,
	[4] [int] NULL ,
	[5] [int] NULL ,
	[6] [int] NULL ,
	[7] [int] NULL ,
	[8] [int] NULL ,
	[9] [int] NULL ,
	[10] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatVisitor] (
	[Id] [int] IDENTITY (1, 1) NOT NULL ,
	[VTime] [datetime] NULL ,
	[Ip] [nvarchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[System] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Browser] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Screen] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Color] [nvarchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[Referer] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Timezone] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatWeburl] (
	[TWeburl] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[TWebNum] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatWeek] (
	[1] [int] NULL ,
	[2] [int] NULL ,
	[3] [int] NULL ,
	[4] [int] NULL ,
	[5] [int] NULL ,
	[6] [int] NULL ,
	[7] [int] NULL ,
	[TWeek] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_StatYear] (
	[1] [int] NULL ,
	[2] [int] NULL ,
	[3] [int] NULL ,
	[4] [int] NULL ,
	[5] [int] NULL ,
	[6] [int] NULL ,
	[7] [int] NULL ,
	[8] [int] NULL ,
	[9] [int] NULL ,
	[10] [int] NULL ,
	[11] [int] NULL ,
	[12] [int] NULL ,
	[TYear] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatInfoList] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_StatInfoList] PRIMARY KEY  CLUSTERED 
	(
		[TotalNum]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_StatIpInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_StatIpInfo] PRIMARY KEY  CLUSTERED 
	(
		[StartIp]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_StatOnline] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_StatOnline] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_StatVisitor] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_StatVisitor] PRIMARY KEY  CLUSTERED 
	(
		[Id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_StatAddress] ADD 
	CONSTRAINT [DF__PE_StatAd__TAddN__76CBA758] DEFAULT (0) FOR [TAddNum]
GO

 CREATE  INDEX [TAddress] ON [dbo].[PE_StatAddress]([TAddress]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatBrowser] ADD 
	CONSTRAINT [DF__PE_StatBr__TBrwN__78B3EFCA] DEFAULT (0) FOR [TBrwNum]
GO

ALTER TABLE [dbo].[PE_StatColor] ADD 
	CONSTRAINT [DF__PE_StatCo__TColN__7A9C383C] DEFAULT (0) FOR [TColNum]
GO

ALTER TABLE [dbo].[PE_StatDay] ADD 
	CONSTRAINT [DF__PE_StatDay__0__7C8480AE] DEFAULT (0) FOR [0],
	CONSTRAINT [DF__PE_StatDay__1__7D78A4E7] DEFAULT (0) FOR [1],
	CONSTRAINT [DF__PE_StatDay__2__7E6CC920] DEFAULT (0) FOR [2],
	CONSTRAINT [DF__PE_StatDay__3__7F60ED59] DEFAULT (0) FOR [3],
	CONSTRAINT [DF__PE_StatDay__4__00551192] DEFAULT (0) FOR [4],
	CONSTRAINT [DF__PE_StatDay__5__014935CB] DEFAULT (0) FOR [5],
	CONSTRAINT [DF__PE_StatDay__6__023D5A04] DEFAULT (0) FOR [6],
	CONSTRAINT [DF__PE_StatDay__7__03317E3D] DEFAULT (0) FOR [7],
	CONSTRAINT [DF__PE_StatDay__8__0425A276] DEFAULT (0) FOR [8],
	CONSTRAINT [DF__PE_StatDay__9__0519C6AF] DEFAULT (0) FOR [9],
	CONSTRAINT [DF__PE_StatDay__10__060DEAE8] DEFAULT (0) FOR [10],
	CONSTRAINT [DF__PE_StatDay__11__07020F21] DEFAULT (0) FOR [11],
	CONSTRAINT [DF__PE_StatDay__12__07F6335A] DEFAULT (0) FOR [12],
	CONSTRAINT [DF__PE_StatDay__13__08EA5793] DEFAULT (0) FOR [13],
	CONSTRAINT [DF__PE_StatDay__14__09DE7BCC] DEFAULT (0) FOR [14],
	CONSTRAINT [DF__PE_StatDay__15__0AD2A005] DEFAULT (0) FOR [15],
	CONSTRAINT [DF__PE_StatDay__16__0BC6C43E] DEFAULT (0) FOR [16],
	CONSTRAINT [DF__PE_StatDay__17__0CBAE877] DEFAULT (0) FOR [17],
	CONSTRAINT [DF__PE_StatDay__18__0DAF0CB0] DEFAULT (0) FOR [18],
	CONSTRAINT [DF__PE_StatDay__19__0EA330E9] DEFAULT (0) FOR [19],
	CONSTRAINT [DF__PE_StatDay__20__0F975522] DEFAULT (0) FOR [20],
	CONSTRAINT [DF__PE_StatDay__21__108B795B] DEFAULT (0) FOR [21],
	CONSTRAINT [DF__PE_StatDay__22__117F9D94] DEFAULT (0) FOR [22],
	CONSTRAINT [DF__PE_StatDay__23__1273C1CD] DEFAULT (0) FOR [23]
GO

ALTER TABLE [dbo].[PE_StatInfoList] ADD 
	CONSTRAINT [DF__PE_StatIn__Total__145C0A3F] DEFAULT (0) FOR [TotalNum],
	CONSTRAINT [DF__PE_StatIn__Total__15502E78] DEFAULT (0) FOR [TotalView],
	CONSTRAINT [DF__PE_StatIn__Month__164452B1] DEFAULT (0) FOR [MonthNum],
	CONSTRAINT [DF__PE_StatIn__Month__173876EA] DEFAULT (0) FOR [MonthMaxNum],
	CONSTRAINT [DF__PE_StatIn__DayNu__182C9B23] DEFAULT (0) FOR [DayNum],
	CONSTRAINT [DF__PE_StatIn__DayMa__1920BF5C] DEFAULT (0) FOR [DayMaxNum],
	CONSTRAINT [DF__PE_StatIn__HourN__1A14E395] DEFAULT (0) FOR [HourNum],
	CONSTRAINT [DF__PE_StatIn__HourM__1B0907CE] DEFAULT (0) FOR [HourMaxNum],
	CONSTRAINT [DF__PE_StatIn__China__1BFD2C07] DEFAULT (0) FOR [ChinaNum],
	CONSTRAINT [DF__PE_StatIn__Other__1CF15040] DEFAULT (0) FOR [OtherNum],
	CONSTRAINT [DF__PE_StatIn__Maste__1DE57479] DEFAULT (0) FOR [MasterTimeZone],
	CONSTRAINT [DF__PE_StatIn__Inter__1ED998B2] DEFAULT (0) FOR [IntervalNum],
	CONSTRAINT [DF__PE_StatIn__Onlin__1FCDBCEB] DEFAULT (0) FOR [OnlineTime],
	CONSTRAINT [DF__PE_StatIn__Visit__20C1E124] DEFAULT (0) FOR [VisitRecord],
	CONSTRAINT [DF__PE_StatIn__KillR__21B6055D] DEFAULT (0) FOR [KillRefresh],
	CONSTRAINT [DF__PE_StatIn__OldTo__22AA2996] DEFAULT (0) FOR [OldTotalNum],
	CONSTRAINT [DF__PE_StatIn__OldTo__239E4DCF] DEFAULT (0) FOR [OldTotalView]
GO

ALTER TABLE [dbo].[PE_StatIp] ADD 
	CONSTRAINT [DF__PE_StatIp__TIpNu__25869641] DEFAULT (0) FOR [TIpNum]
GO

 CREATE  INDEX [TIp] ON [dbo].[PE_StatIp]([TIp]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatIpInfo] ADD 
	CONSTRAINT [DF__PE_StatIp__Start__276EDEB3] DEFAULT (0) FOR [StartIp],
	CONSTRAINT [DF__PE_StatIp__EndIp__286302EC] DEFAULT (0) FOR [EndIp]
GO

 CREATE  INDEX [ip1] ON [dbo].[PE_StatIpInfo]([StartIp]) ON [PRIMARY]
GO

 CREATE  INDEX [ip2] ON [dbo].[PE_StatIpInfo]([EndIp]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatKeyword] ADD 
	CONSTRAINT [DF__PE_StatKe__TKeyw__2A4B4B5E] DEFAULT (0) FOR [TKeywordNum]
GO

 CREATE  INDEX [TKeyword] ON [dbo].[PE_StatKeyword]([TKeyword]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatMonth] ADD 
	CONSTRAINT [DF__PE_StatMonth__1__2C3393D0] DEFAULT (0) FOR [1],
	CONSTRAINT [DF__PE_StatMonth__2__2D27B809] DEFAULT (0) FOR [2],
	CONSTRAINT [DF__PE_StatMonth__3__2E1BDC42] DEFAULT (0) FOR [3],
	CONSTRAINT [DF__PE_StatMonth__4__2F10007B] DEFAULT (0) FOR [4],
	CONSTRAINT [DF__PE_StatMonth__5__300424B4] DEFAULT (0) FOR [5],
	CONSTRAINT [DF__PE_StatMonth__6__30F848ED] DEFAULT (0) FOR [6],
	CONSTRAINT [DF__PE_StatMonth__7__31EC6D26] DEFAULT (0) FOR [7],
	CONSTRAINT [DF__PE_StatMonth__8__32E0915F] DEFAULT (0) FOR [8],
	CONSTRAINT [DF__PE_StatMonth__9__33D4B598] DEFAULT (0) FOR [9],
	CONSTRAINT [DF__PE_StatMonth__10__34C8D9D1] DEFAULT (0) FOR [10],
	CONSTRAINT [DF__PE_StatMonth__11__35BCFE0A] DEFAULT (0) FOR [11],
	CONSTRAINT [DF__PE_StatMonth__12__36B12243] DEFAULT (0) FOR [12],
	CONSTRAINT [DF__PE_StatMonth__13__37A5467C] DEFAULT (0) FOR [13],
	CONSTRAINT [DF__PE_StatMonth__14__38996AB5] DEFAULT (0) FOR [14],
	CONSTRAINT [DF__PE_StatMonth__15__398D8EEE] DEFAULT (0) FOR [15],
	CONSTRAINT [DF__PE_StatMonth__16__3A81B327] DEFAULT (0) FOR [16],
	CONSTRAINT [DF__PE_StatMonth__17__3B75D760] DEFAULT (0) FOR [17],
	CONSTRAINT [DF__PE_StatMonth__18__3C69FB99] DEFAULT (0) FOR [18],
	CONSTRAINT [DF__PE_StatMonth__19__3D5E1FD2] DEFAULT (0) FOR [19],
	CONSTRAINT [DF__PE_StatMonth__20__3E52440B] DEFAULT (0) FOR [20],
	CONSTRAINT [DF__PE_StatMonth__21__3F466844] DEFAULT (0) FOR [21],
	CONSTRAINT [DF__PE_StatMonth__22__403A8C7D] DEFAULT (0) FOR [22],
	CONSTRAINT [DF__PE_StatMonth__23__412EB0B6] DEFAULT (0) FOR [23],
	CONSTRAINT [DF__PE_StatMonth__24__4222D4EF] DEFAULT (0) FOR [24],
	CONSTRAINT [DF__PE_StatMonth__25__4316F928] DEFAULT (0) FOR [25],
	CONSTRAINT [DF__PE_StatMonth__26__440B1D61] DEFAULT (0) FOR [26],
	CONSTRAINT [DF__PE_StatMonth__27__44FF419A] DEFAULT (0) FOR [27],
	CONSTRAINT [DF__PE_StatMonth__28__45F365D3] DEFAULT (0) FOR [28],
	CONSTRAINT [DF__PE_StatMonth__29__46E78A0C] DEFAULT (0) FOR [29],
	CONSTRAINT [DF__PE_StatMonth__30__47DBAE45] DEFAULT (0) FOR [30],
	CONSTRAINT [DF__PE_StatMonth__31__48CFD27E] DEFAULT (0) FOR [31]
GO

ALTER TABLE [dbo].[PE_StatMozilla] ADD 
	CONSTRAINT [DF__PE_StatMo__TMozN__4AB81AF0] DEFAULT (0) FOR [TMozNum]
GO

 CREATE  INDEX [TMozilla] ON [dbo].[PE_StatMozilla]([TMozilla]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [id] ON [dbo].[PE_StatOnline]([id]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatRefer] ADD 
	CONSTRAINT [DF__PE_StatRe__TRefN__4D94879B] DEFAULT (0) FOR [TRefNum]
GO

 CREATE  INDEX [TRefer] ON [dbo].[PE_StatRefer]([TRefer]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatScreen] ADD 
	CONSTRAINT [DF__PE_StatSc__TScrN__4F7CD00D] DEFAULT (0) FOR [TScrNum]
GO

ALTER TABLE [dbo].[PE_StatSystem] ADD 
	CONSTRAINT [DF__PE_StatSy__TSysN__5165187F] DEFAULT (0) FOR [TSysNum]
GO

ALTER TABLE [dbo].[PE_StatTimezone] ADD 
	CONSTRAINT [DF__PE_StatTi__TTimN__534D60F1] DEFAULT (0) FOR [TTimNum]
GO

ALTER TABLE [dbo].[PE_StatVisit] ADD 
	CONSTRAINT [DF__PE_StatVisit__1__5535A963] DEFAULT (0) FOR [1],
	CONSTRAINT [DF__PE_StatVisit__2__5629CD9C] DEFAULT (0) FOR [2],
	CONSTRAINT [DF__PE_StatVisit__3__571DF1D5] DEFAULT (0) FOR [3],
	CONSTRAINT [DF__PE_StatVisit__4__5812160E] DEFAULT (0) FOR [4],
	CONSTRAINT [DF__PE_StatVisit__5__59063A47] DEFAULT (0) FOR [5],
	CONSTRAINT [DF__PE_StatVisit__6__59FA5E80] DEFAULT (0) FOR [6],
	CONSTRAINT [DF__PE_StatVisit__7__5AEE82B9] DEFAULT (0) FOR [7],
	CONSTRAINT [DF__PE_StatVisit__8__5BE2A6F2] DEFAULT (0) FOR [8],
	CONSTRAINT [DF__PE_StatVisit__9__5CD6CB2B] DEFAULT (0) FOR [9],
	CONSTRAINT [DF__PE_StatVisit__10__5DCAEF64] DEFAULT (0) FOR [10]
GO

ALTER TABLE [dbo].[PE_StatVisitor] ADD 
	CONSTRAINT [DF__PE_StatVi__Timez__5FB337D6] DEFAULT (0) FOR [Timezone]
GO

 CREATE  INDEX [Id] ON [dbo].[PE_StatVisitor]([Id]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatWeburl] ADD 
	CONSTRAINT [DF__PE_StatWe__TWebN__619B8048] DEFAULT (0) FOR [TWebNum]
GO

 CREATE  INDEX [FWebNum] ON [dbo].[PE_StatWeburl]([TWebNum]) ON [PRIMARY]
GO

 CREATE  INDEX [TWeburl] ON [dbo].[PE_StatWeburl]([TWeburl]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_StatWeek] ADD 
	CONSTRAINT [DF__PE_StatWeek__1__6383C8BA] DEFAULT (0) FOR [1],
	CONSTRAINT [DF__PE_StatWeek__2__6477ECF3] DEFAULT (0) FOR [2],
	CONSTRAINT [DF__PE_StatWeek__3__656C112C] DEFAULT (0) FOR [3],
	CONSTRAINT [DF__PE_StatWeek__4__66603565] DEFAULT (0) FOR [4],
	CONSTRAINT [DF__PE_StatWeek__5__6754599E] DEFAULT (0) FOR [5],
	CONSTRAINT [DF__PE_StatWeek__6__68487DD7] DEFAULT (0) FOR [6],
	CONSTRAINT [DF__PE_StatWeek__7__693CA210] DEFAULT (0) FOR [7]
GO

ALTER TABLE [dbo].[PE_StatYear] ADD 
	CONSTRAINT [DF__PE_StatYear__1__6B24EA82] DEFAULT (0) FOR [1],
	CONSTRAINT [DF__PE_StatYear__2__6C190EBB] DEFAULT (0) FOR [2],
	CONSTRAINT [DF__PE_StatYear__3__6D0D32F4] DEFAULT (0) FOR [3],
	CONSTRAINT [DF__PE_StatYear__4__6E01572D] DEFAULT (0) FOR [4],
	CONSTRAINT [DF__PE_StatYear__5__6EF57B66] DEFAULT (0) FOR [5],
	CONSTRAINT [DF__PE_StatYear__6__6FE99F9F] DEFAULT (0) FOR [6],
	CONSTRAINT [DF__PE_StatYear__7__70DDC3D8] DEFAULT (0) FOR [7],
	CONSTRAINT [DF__PE_StatYear__8__71D1E811] DEFAULT (0) FOR [8],
	CONSTRAINT [DF__PE_StatYear__9__72C60C4A] DEFAULT (0) FOR [9],
	CONSTRAINT [DF__PE_StatYear__10__73BA3083] DEFAULT (0) FOR [10],
	CONSTRAINT [DF__PE_StatYear__11__74AE54BC] DEFAULT (0) FOR [11],
	CONSTRAINT [DF__PE_StatYear__12__75A278F5] DEFAULT (0) FOR [12]
GO

