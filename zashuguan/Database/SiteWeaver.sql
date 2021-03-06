CREATE TABLE [dbo].[PE_AdZone] (
	[ZoneID] [int] NOT NULL ,
	[ChannelID] [int] NULL ,
	[IncludeADID] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ZoneName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZoneJSName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZoneIntro] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZoneType] [int] NULL ,
	[DefaultSetting] [bit] NOT NULL ,
	[ZoneSetting] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ZoneWidth] [int] NULL ,
	[ZoneHeight] [int] NULL ,
	[Active] [bit] NOT NULL ,
	[ShowType] [int] NULL ,
	[UpdateTime] [datetime] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Admin] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[AdminName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Password] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Purview] [int] NOT NULL ,
	[RoleName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LastLoginIP] [nvarchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[LastLoginTime] [datetime] NULL ,
	[LastLogoutTime] [datetime] NULL ,
	[LoginTimes] [int] NULL ,
	[RndPassword] [nvarchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[EnableMultiLogin] [bit] NOT NULL ,
	[AdminPurview_Article] [int] NULL ,
	[AdminPurview_Soft] [int] NULL ,
	[AdminPurview_Photo] [int] NULL ,
	[AdminPurview_GuestBook] [int] NULL ,
	[AdminPurview_Supply] [int] NULL ,
	[AdminPurview_House] [int] NULL ,
	[AdminPurview_Job] [int] NULL ,
	[AdminPurview_Shop] [int] NULL ,
	[AdminPurview_Others] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_View] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_Input] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_Check] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_Manage] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_House] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_GuestBook] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Count_Add] [int] NULL ,
	[Count_Check] [int] NULL ,
	[Count_Reject] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Advertisement] (
	[ADID] [int] NOT NULL ,
	[UserID] [int] NULL ,
	[ZoneID] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ADType] [int] NULL ,
	[ADName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ImgUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ImgWidth] [int] NULL ,
	[ImgHeight] [int] NULL ,
	[FlashWmode] [int] NULL ,
	[ADIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[LinkUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[LinkTarget] [int] NULL ,
	[LinkAlt] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Priority] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Setting] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[CountView] [bit] NOT NULL ,
	[Views] [int] NULL ,
	[CountClick] [bit] NOT NULL ,
	[Clicks] [int] NULL ,
	[Passed] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Announce] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Author] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DateAndTime] [datetime] NULL ,
	[IsSelected] [bit] NOT NULL ,
	[ChannelID] [int] NULL ,
	[ShowType] [int] NULL ,
	[OutTime] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_AreaCollection] (
	[AreaID] [int] IDENTITY (1, 1) NOT NULL ,
	[AreaName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[AreaFile] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[AreaIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Code] [int] NULL ,
	[StringReplace] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[AreaUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[LableStart] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[LableEnd] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[FilterProperty] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[UpFileType] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[AreaPassed] [bit] NOT NULL ,
	[Type] [tinyint] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Article] (
	[ArticleID] [int] NOT NULL ,
	[ChannelID] [int] NOT NULL ,
	[ClassID] [int] NOT NULL ,
	[Title] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[TitleIntact] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Subheading] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Author] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[CopyFrom] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Inputer] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[LinkUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Hits] [int] NOT NULL ,
	[CommentCount] [int] NULL ,
	[UpdateTime] [datetime] NOT NULL ,
	[CreateTime] [datetime] NULL ,
	[OnTop] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Status] [int] NOT NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[IncludePic] [int] NOT NULL ,
	[DefaultPicUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[UploadFiles] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[InfoPoint] [int] NULL ,
	[PaginationType] [int] NULL ,
	[Deleted] [bit] NOT NULL ,
	[SkinID] [int] NULL ,
	[TemplateID] [int] NULL ,
	[Stars] [int] NULL ,
	[TitleFontColor] [nvarchar] (7) COLLATE Chinese_PRC_CI_AS NULL ,
	[TitleFontType] [int] NULL ,
	[MaxCharPerPage] [int] NULL ,
	[ShowCommentLink] [bit] NOT NULL ,
	[Receive] [bit] NOT NULL ,
	[ReceiveUser] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Received] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[AutoReceiveTime] [int] NULL ,
	[ReceiveType] [int] NULL ,
	[Intro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[PresentExp] [float] NULL ,
	[Copymoney] [money] NULL ,
	[IsPayed] [bit] NOT NULL ,
	[Beneficiary] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[PayDate] [datetime] NULL ,
	[VoteID] [int] NULL ,
	[InfoPurview] [int] NULL ,
	[arrGroupID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChargeType] [int] NULL ,
	[PitchTime] [int] NULL ,
	[ReadTimes] [int] NULL ,
	[DividePercent] [int] NULL ,
	[BlogID] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Author] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [smallint] NULL ,
	[AuthorName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Sex] [tinyint] NULL ,
	[BirthDay] [datetime] NULL ,
	[Photo] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Intro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Tel] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Company] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Department] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZipCode] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HomePage] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[QQ] [int] NULL ,
	[AuthorType] [smallint] NULL ,
	[LastUseTime] [datetime] NULL ,
	[Passed] [bit] NOT NULL ,
	[IsElite] [bit] NOT NULL ,
	[onTop] [bit] NOT NULL ,
	[Hits] [int] NULL ,
	[TemplateID] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Bank] (
	[BankID] [int] NOT NULL ,
	[BankShortName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[BankName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Accounts] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[CardNum] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[HolderName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[BankIntro] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[BankPic] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsDefault] [bit] NOT NULL ,
	[OrderID] [int] NULL ,
	[IsDisabled] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_BankrollItem] (
	[ItemID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ClientID] [int] NULL ,
	[DateAndTime] [datetime] NULL ,
	[Money] [money] NULL ,
	[MoneyType] [int] NULL ,
	[CurrencyType] [int] NULL ,
	[eBankID] [int] NULL ,
	[Bank] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Income_PayOut] [int] NULL ,
	[OrderFormID] [int] NULL ,
	[PaymentID] [int] NULL ,
	[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[LogTime] [datetime] NULL ,
	[Inputer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IP] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Card] (
	[CardID] [int] IDENTITY (1, 1) NOT NULL ,
	[CardType] [int] NULL ,
	[ProductID] [int] NULL ,
	[CardNum] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Password] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[AgentName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Money] [money] NULL ,
	[ValidNum] [int] NULL ,
	[ValidUnit] [int] NULL ,
	[EndDate] [datetime] NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[UseTime] [datetime] NULL ,
	[CreateTime] [datetime] NULL ,
	[OrderFormItemID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Channel] (
	[ChannelID] [int] NOT NULL ,
	[ChannelName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ChannelShortName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChannelItemUnit] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ReadMe] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Meta_Keywords] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Meta_Description] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChannelPicUrl] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderID] [int] NOT NULL ,
	[OpenType] [int] NOT NULL ,
	[ChannelType] [int] NOT NULL ,
	[LinkUrl] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChannelDir] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ModuleType] [int] NULL ,
	[Disabled] [bit] NOT NULL ,
	[ShowName] [bit] NOT NULL ,
	[ShowNameOnPath] [bit] NOT NULL ,
	[ShowClassTreeGuide] [bit] NOT NULL ,
	[ShowSuspensionPoints] [bit] NOT NULL ,
	[CheckLevel] [int] NOT NULL ,
	[EnableUploadFile] [bit] NOT NULL ,
	[UploadDir] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MaxFileSize] [int] NULL ,
	[HitsOfHot] [int] NULL ,
	[DaysOfNew] [int] NULL ,
	[MaxPerLine] [int] NULL ,
	[UpFileType] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[DefaultSkinID] [int] NULL ,
	[Template_Index] [int] NULL ,
	[TopMenuType] [int] NULL ,
	[ClassGuideType] [int] NULL ,
	[UseCreateHTML] [int] NOT NULL ,
	[ItemCount] [int] NULL ,
	[ItemChecked] [int] NULL ,
	[CommentCount] [int] NULL ,
	[SpecialCount] [int] NULL ,
	[HitsCount] [int] NULL ,
	[StructureType] [int] NULL ,
	[ListFileType] [int] NULL ,
	[FileNameType] [int] NULL ,
	[AutoCreateType] [int] NULL ,
	[FileExt_Index] [int] NULL ,
	[FileExt_List] [int] NULL ,
	[FileExt_Item] [int] NULL ,
	[UpdatePages] [int] NULL ,
	[ChannelPurview] [int] NULL ,
	[arrGroupID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[JS_SpecialNum] [int] NULL ,
	[AuthorInfoLen] [int] NULL ,
	[MaxPerPage_Index] [int] NULL ,
	[MaxPerPage_SearchResult] [int] NULL ,
	[MaxPerPage_New] [int] NULL ,
	[MaxPerPage_Hot] [int] NULL ,
	[MaxPerPage_Elite] [int] NULL ,
	[MaxPerPage_SpecialList] [int] NULL ,
	[MoneyPerKw] [money] NULL ,
	[TimingCreateSetting] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfReject] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfPassed] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Custom_Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrEnabledTabs] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[CommandChannelPoint] [int] NULL ,
	[EnableComment] [bit] NOT NULL ,
	[CheckComment] [bit] NOT NULL ,		
	[Fields_Options] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_City] (
	[AreaID] [int] IDENTITY (1, 1) NOT NULL ,
	[Country] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Province] [nvarchar] (25) COLLATE Chinese_PRC_CI_AS NULL ,
	[City] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Area] [nvarchar] (25) COLLATE Chinese_PRC_CI_AS NULL ,
	[PostCode] [nvarchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[AreaCode] [nvarchar] (8) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Class] (
	[ClassID] [int] NOT NULL ,
	[ChannelID] [int] NOT NULL ,
	[ClassName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ClassType] [int] NOT NULL ,
	[OpenType] [int] NOT NULL ,
	[ParentID] [int] NOT NULL ,
	[ParentPath] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Depth] [int] NOT NULL ,
	[RootID] [int] NOT NULL ,
	[Child] [int] NOT NULL ,
	[arrChildID] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[PrevID] [int] NOT NULL ,
	[NextID] [int] NOT NULL ,
	[OrderID] [int] NOT NULL ,
	[Tips] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Readme] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Meta_Keywords] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Meta_Description] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[LinkUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ClassPicUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ClassDir] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ParentDir] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[SkinID] [int] NULL ,
	[TemplateID] [int] NULL ,
	[ShowOnTop] [bit] NOT NULL ,
	[ShowOnIndex] [bit] NOT NULL ,
	[IsElite] [bit] NOT NULL ,
	[EnableAdd] [bit] NOT NULL ,
	[EnableProtect] [bit] NOT NULL ,
	[MaxPerPage] [int] NULL ,
	[DefaultItemTemplate] [int] NULL ,
	[DefaultItemSkin] [int] NULL ,
	[ItemListOrderType] [int] NULL ,
	[ItemOpenType] [int] NULL ,
	[ItemCount] [int] NULL ,
	[ClassPurview] [tinyint] NULL ,
	[EnableComment] [bit] NOT NULL ,
	[CheckComment] [bit] NOT NULL ,
	[PresentExp] [float] NULL ,
	[DefaultItemPoint] [float] NULL ,
	[DefaultItemChargeType] [int] NULL ,
	[DefaultItemPitchTime] [int] NULL ,
	[DefaultItemReadTimes] [int] NULL ,
	[DefaultItemDividePercent] [int] NULL ,
	[Custom_Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[CommandClassPoint] [int] NULL ,
	[ReleaseClassPoint] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Classroom] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[FatherID] [int] NULL ,
	[ClassroomName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ClassroomIntroduce] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Client] (
	[ClientID] [int] NOT NULL ,
	[ParentID] [int] NULL ,
	[ClientNum] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ClientType] [int] NULL ,
	[ClientName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ShortedForm] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Area] [int] NULL ,
	[ClientField] [int] NULL ,
	[ValueLevel] [int] NULL ,
	[CreditLevel] [int] NULL ,
	[Importance] [int] NULL ,
	[ConnectionLevel] [int] NULL ,
	[GroupID] [int] NULL ,
	[SourceType] [int] NULL ,
	[PhaseType] [int] NULL ,
	[Remark] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[VisitTimes] [int] NULL ,
	[ServiceTimes] [int] NULL ,
	[ComplainTimes] [int] NULL ,
	[LastVisitTime] [datetime] NULL ,
	[LastServiceTime] [datetime] NULL ,
	[LastComplainTime] [datetime] NULL ,
	[CreateTime] [datetime] NULL ,
	[UpdateTime] [datetime] NULL ,
	[Owner] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Balance] [money] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Comment] (
	[CommentID] [int] IDENTITY (1, 1) NOT NULL ,
	[ModuleType] [int] NULL ,
	[InfoID] [int] NOT NULL ,
	[UserType] [int] NULL ,
	[UserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Sex] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[OICQ] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[MSN] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ICQ] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Homepage] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[IP] [nvarchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[WriteTime] [datetime] NOT NULL ,
	[Score] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ReplyName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ReplyContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ReplyTime] [datetime] NULL ,
	[Support] [int] NULL ,
	[Opposed] [int] NULL ,		
	[Passed] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Company] (
	[CompanyID] [int] NOT NULL ,
	[ClientID] [int] NULL ,
	[CompanyName] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Country] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Province] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[City] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZipCode] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Phone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Homepage] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[BankOfDeposit] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BankAccount] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[TaxNum] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[StatusInField] [int] NULL ,
	[CompanySize] [int] NULL ,
	[BusinessScope] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[AnnualSales] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ManagementForms] [int] NULL ,
	[RegisteredCapital] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[CompamyPic] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_ComplainItem] (
	[ItemID] [int] IDENTITY (1, 1) NOT NULL ,
	[ClientID] [int] NULL ,
	[ContacterID] [int] NULL ,
	[ComplainType] [int] NULL ,
	[ComplainMode] [int] NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[FirstReceiver] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DateAndTime] [datetime] NULL ,
	[MagnitudeOfExigence] [int] NULL ,
	[Process] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Processor] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Result] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[EndTime] [datetime] NULL ,
	[Feedback] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ConfirmTime] [datetime] NULL ,
	[ConfirmCaller] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ConfirmScore] [int] NULL ,
	[ConfirmFeedback] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Status] [int] NULL ,
	[CurrentOwner] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Defendant] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Config] (
	[SiteName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SiteTitle] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SiteUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[InstallDir] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[LogoUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[BannerUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[WebmasterName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[WebmasterEmail] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Copyright] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[SiteKey] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ShowSiteChannel] [bit] NOT NULL ,
	[ShowAdminLogin] [bit] NOT NULL ,
	[EnableSaveRemote] [bit] NOT NULL ,
	[EnableLinkReg] [bit] NOT NULL ,
	[EnableCountFriendSiteHits] [bit] NOT NULL ,
	[EnableSoftKey] [bit] NOT NULL ,
	[objName_FSO] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[AdminDir] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ADDir] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[AnnounceCookieTime] [int] NULL ,
	[HitsOfHot] [int] NULL ,
	[FileExt_SiteIndex] [int] NULL ,
	[FileExt_SiteSpecial] [int] NULL ,
	[SiteUrlType] [int] NULL ,
	[LockIPType] [int] NOT NULL ,
	[LockIP] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EnableUserReg] [bit] NOT NULL ,
	[EmailCheckReg] [bit] NOT NULL ,
	[AdminCheckReg] [bit] NOT NULL ,
	[EnableMultiRegPerEmail] [bit] NOT NULL ,
	[UserNameLimit] [int] NULL ,
	[UserNameMax] [int] NULL ,
	[UserName_RegDisabled] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EnableCheckCodeOfLogin] [bit] NOT NULL ,
	[EnableCheckCodeOfReg] [bit] NOT NULL ,
	[EnableQAofReg] [bit] NOT NULL ,
	[QAofReg] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[PresentExp] [float] NULL ,
	[PresentMoney] [float] NULL ,
	[PresentPoint] [int] NULL ,
	[PresentValidNum] [int] NULL ,
	[PresentValidUnit] [int] NULL ,
	[MoneyExchangePoint] [float] NULL ,
	[MoneyExchangeValidDay] [float] NULL ,
	[UserExpExchangePoint] [float] NULL ,
	[UserExpExchangeValidDay] [float] NULL ,
	[PresentExpPerLogin] [int] NULL ,
	[PresentExpPerElite] [int] NULL ,
	[PointName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[PointUnit] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfRegCheck] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MailObject] [int] NULL ,
	[MailServer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MailServerUserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MailServerPassWord] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MailDomain] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PhotoObject] [int] NULL ,
	[Thumb_DefaultWidth] [int] NULL ,
	[Thumb_DefaultHeight] [int] NULL ,
	[Thumb_Arithmetic] [int] NULL ,
	[Watermark_Type] [int] NULL ,
	[Watermark_Text] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Watermark_Text_FontName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Watermark_Text_FontSize] [int] NULL ,
	[Watermark_Text_FontColor] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Watermark_Text_Bold] [bit] NOT NULL ,
	[Watermark_Images_FileName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Watermark_Images_Transparence] [int] NULL ,
	[Watermark_Images_BackgroundColor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Watermark_Position_X] [int] NULL ,
	[Watermark_Position_Y] [int] NULL ,
	[Watermark_Position] [int] NULL ,
	[SearchInterval] [int] NULL ,
	[SearchResultNum] [int] NULL ,
	[MaxPerPage_SearchResult] [int] NULL ,
	[SearchContent] [bit] NOT NULL ,
	[EnableGuestBuy] [bit] NOT NULL ,
	[IncludeTax] [bit] NOT NULL ,
	[TaxRate] [int] NULL ,
	[PayOnlineProvider] [int] NULL ,
	[PayOnlineShopID] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PayOnlineKey] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PayOnlineRate] [real] NULL ,
	[PayOnlinePlusPoundage] [bit] NOT NULL ,
	[Prefix_OrderFormNum] [nvarchar] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[Prefix_PaymentNum] [nvarchar] (4) COLLATE Chinese_PRC_CI_AS NULL ,
	[Country] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Province] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[City] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PostCode] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfOrderConfirm] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfOrderConfirm] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfSendCard] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfSendCard] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfReceiptMoney] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfReceiptMoney] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfRefund] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfRefund] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfInvoice] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfInvoice] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfDeliver] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EmailOfDeliver] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestBook_EnableVisitor] [bit] NOT NULL ,
	[GuestBookCheck] [bit] NOT NULL ,
	[GuestBook_EnableManageRubbish] [bit] NOT NULL ,
	[GuestBook_ManageRubbish] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestBook_ShowIP] [bit] NOT NULL ,
	[GuestBook_IsAssignSort] [bit] NOT NULL ,
	[GuestBook_MaxPerPage] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EnableRss] [bit] NOT NULL ,
	[RssCodeType] [bit] NOT NULL ,
	[EnableWap] [bit] NOT NULL ,
	[WapLogo] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[EnableWapPl] [bit] NOT NULL ,
	[ShowWapAppendix] [bit] NOT NULL ,
	[ShowWapShop] [bit] NOT NULL ,
	[ShowWapManage] [bit] NOT NULL ,
	[DatabaseVersion] [float] NULL ,
	[Timing_SetDate] [int] NULL ,
	[Timing_SetDay] [int] NULL ,
	[Timing_SetWeekday] [int] NULL ,
	[Timing_Time] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Timing_Date] [datetime] NULL ,
	[Timing_CollectionItemID] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Timing_AreaCollection] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Timing_Breakpoint] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[IsCustom_Content] [bit] NOT NULL ,
	[SMSUserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SMSKey] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
        [SurveyKey] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Mobiles] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
        [SendMessageToAdminWhenOrder] [bit] NOT NULL  ,
        [SendMessageToMemberWhenPaySuccess] [bit] NOT NULL ,
	[MessageOfOrder] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfAddRemit] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfAddIncome] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfAddPayment] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfExchangePoint] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfAddPoint] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfMinusPoint] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfExchangeValid] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfAddValid] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MessageOfMinusValid] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Thumb_BackgroundColor] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[PhotoQuality] [int] NULL ,
	[Meta_Keywords] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Meta_Description] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ShowUserModel] [bit] NOT NULL ,	
	[ShowAnonymous] [bit] NOT NULL ,		
	[Modules] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[RegFields_MustFill] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_ConsumeLog] (
	[LogID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ModuleType] [int] NULL ,
	[InfoID] [int] NULL ,
	[Point] [real] NULL ,
	[LogTime] [datetime] NULL ,
	[Times] [int] NULL ,
	[Income_PayOut] [int] NULL ,
	[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[IP] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Inputer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Contacter] (
	[ContacterID] [int] NOT NULL ,
	[ClientID] [int] NULL ,
	[ParentID] [int] NULL ,
	[UserType] [tinyint] NULL ,
	[TrueName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Sex] [smallint] NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Company] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Department] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Position] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Operation] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CompanyAddress] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Homepage] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[QQ] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ICQ] [nvarchar] (25) COLLATE Chinese_PRC_CI_AS NULL ,
	[MSN] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Yahoo] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[UC] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Aim] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[OfficePhone] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[HomePhone] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[PHS] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Mobile] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Country] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Province] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[City] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZipCode] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[NativePlace] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Nation] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Birthday] [datetime] NULL ,
	[IDCard] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Marriage] [tinyint] NULL ,
	[Family] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Income] [int] NULL ,
	[Education] [int] NULL ,
	[GraduateFrom] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[InterestsOfLife] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[InterestsOfCulture] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[InterestsOfAmusement] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[InterestsOfSport] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[InterestsOfOther] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[CreateTime] [datetime] NULL ,
	[UpdateTime] [datetime] NULL ,
	[arrChannelID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Owner] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_CopyFrom] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [smallint] NULL ,
	[SourceName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Photo] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Intro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Tel] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Mail] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZipCode] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HomePage] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[QQ] [int] NULL ,
	[ContacterName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SourceType] [smallint] NULL ,
	[Passed] [bit] NOT NULL ,
	[onTop] [bit] NOT NULL ,
	[IsElite] [bit] NOT NULL ,
	[Hits] [int] NULL ,
	[LastUseTime] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Country] (
	[CountryID] [int] IDENTITY (1, 1) NOT NULL ,
	[Country] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_DeliverCharge] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[DeliverTypeID] [int] NULL ,
	[AreaType] [int] NULL ,
	[arrArea] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Charge_Min] [money] NULL ,
	[Weight_Min] [float] NULL ,
	[ChargePerUnit] [money] NULL ,
	[WeightPerUnit] [float] NULL ,
	[Charge_Max] [money] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_DeliverItem] (
	[DeliverID] [int] IDENTITY (1, 1) NOT NULL ,
	[OrderFormID] [int] NULL ,
	[DeliverDate] [datetime] NULL ,
	[DeliverDirection] [int] NULL ,
	[HandlerName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[ExpressCompany] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ExpressNumber] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Inputer] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Received] [bit] NOT NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_DeliverType] (
	[TypeID] [int] NOT NULL ,
	[TypeName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Intro] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChargeType] [int] NULL ,
	[IsDefault] [bit] NOT NULL ,
	[IsDisabled] [bit] NOT NULL ,
	[OrderID] [int] NULL ,
	[ReleaseType] [int] NULL ,
	[MinMoney1] [money] NULL ,
	[ReleaseCharge] [money] NULL ,
	[MinMoney2] [money] NULL ,
	[MaxCharge] [money] NULL ,
	[MinMoney3] [money] NULL ,
	[Charge_Min] [money] NULL ,
	[Charge_Max] [money] NULL ,
	[Charge_Percent] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Dictionary] (
	[FieldID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[TableName] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[FieldName] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[FieldValue] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_DownError] (
	[ErrorID] [int] NOT NULL ,
	[ChannelID] [int] NULL ,
	[InfoID] [int] NULL ,
	[UrlID] [int] NULL ,
	[ErrorTimes] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_DownServer] (
	[ServerID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [int] NULL ,
	[ServerName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ServerUrl] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ServerLogo] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderID] [int] NULL ,
	[ShowType] [int] NULL ,
	[InfoPoint] [int] NULL ,
	[InfoPurview] [int] NULL ,
	[arrGroupID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChargeType] [int] NULL ,
	[PitchTime] [int] NULL ,
	[ReadTimes] [int] NULL ,
	[DividePercent] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Equipment] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ClassroomID] [int] NULL ,
	[EquipmentName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[EquipmentIntroduce] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[EquipmentSituation] [int] NULL ,
	[EquipmentValue] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Explain] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Favorite] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserID] [int] NULL ,
	[ChannelID] [int] NULL ,
	[InfoID] [int] NULL ,
	[DateAndTime] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Field] (
	[FieldID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [int] NULL ,
	[FieldName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LabelName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Tips] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[FieldType] [int] NULL ,
	[DefaultValue] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Options] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[EnableNull] [bit] NOT NULL ,
	[ShowOnForm] [bit] NOT NULL ,
	[FieldLevel] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Filters] (
	[FilterID] [int] IDENTITY (1, 1) NOT NULL ,
	[ItemID] [int] NULL ,
	[FilterName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[FilterObject] [int] NULL ,
	[FilterType] [int] NULL ,
	[FilterContent] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[FisString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[FioString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[FilterRep] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Flag] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Friend] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[FriendName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[AddTime] [datetime] NULL ,
	[GroupID] [tinyint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_FriendSite] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[KindID] [int] NULL ,
	[SpecialID] [int] NULL ,
	[LinkType] [int] NULL ,
	[SiteName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[SiteUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[SiteIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[LogoUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[SiteAdmin] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SiteEmail] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[SitePassword] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Stars] [int] NULL ,
	[Hits] [int] NULL ,
	[UpdateTime] [datetime] NULL ,
	[Elite] [bit] NOT NULL ,
	[Passed] [bit] NOT NULL ,
	[OrderID] [int] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_FsKind] (
	[KindID] [int] NOT NULL ,
	[KindName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ReadMe] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[KindType] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_GuestBook] (
	[GuestID] [int] NOT NULL ,
	[KindID] [int] NULL ,
	[TopicID] [int] NULL ,
	[GuestMaxID] [int] NULL ,
	[GuestType] [int] NULL ,
	[GuestName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestSex] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestOicq] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestMsn] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestIcq] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestEmail] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestHomepage] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestImages] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestFace] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestIP] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestTitle] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestDatetime] [datetime] NULL ,
	[Hits] [int] NULL ,
	[ReplyNum] [int] NULL ,
	[LastReplyContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[LastReplyGuest] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LastReplyTime] [datetime] NULL ,
	[LastReplyTitle] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestReply] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestReplyAdmin] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GuestReplyDatetime] [datetime] NULL ,
	[Quintessence] [int] NULL ,
	[GuestIsPassed] [bit] NOT NULL ,
	[GuestIsPrivate] [bit] NOT NULL ,
	[OnTop] [int] NULL ,
	[ReplyIsPrivate] [bit] NOT NULL ,
	[GuestContentLength] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_GuestKind] (
	[KindID] [int] NOT NULL ,
	[KindName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ReadMe] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_HistrolyNews] (
	[HistrolyNewsID] [int] IDENTITY (1, 1) NOT NULL ,
	[ItemID] [int] NULL ,
	[ChannelID] [int] NULL ,
	[ClassID] [int] NULL ,
	[ArticleID] [int] NULL ,
	[Title] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[NewsCollecDate] [datetime] NULL ,
	[NewsUrl] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Result] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_HouseArea] (
	[AreaID] [int] NOT NULL ,
	[AreaName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Province] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_HouseCS] (
	[HouseID] [int] NOT NULL ,
	[ClassID] [int] NULL ,
	[ChannelID] [int] NULL ,
	[HouseSource] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQuyu] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDiZhi] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseXiangXiDiZhi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseHuXing] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseMianJi] [real] NOT NULL ,
	[HouseChanQuan] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJianCheng] [nvarchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseLouCeng] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseChaoXiang] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseLeiXing] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiChu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseZhuangXiu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseShuiDian] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDianQi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiaJu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseGongJiaoLu] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseGongJiaoZhan] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseShiZheng] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[JiaoFangStartDate] [datetime] NULL ,
	[TotalPrice] [real] NULL ,
	[OtherPrice] [real] NULL ,
	[HouseZhiFu] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HousePriceType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ShuiFei] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ContactName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactPhone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactEmail] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ContactQQ] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[YouXiaoQi] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQiTa] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UpdateTime] [datetime] NULL ,
	[Hits] [int] NULL ,
	[ViewAll] [bit] NOT NULL ,
	[Hot] [bit] NOT NULL ,
	[OnTop] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Passed] [bit] NOT NULL ,
	[Deleted] [bit] NOT NULL ,
	[CommendClassDays] [int] NULL ,
	[UploadPhotos] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_HouseCZ] (
	[HouseID] [int] NOT NULL ,
	[ClassID] [int] NULL ,
	[ChannelID] [int] NULL ,
	[HouseSource] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQuyu] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDiZhi] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseXiangXiDiZhi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseHuXing] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseMianJi] [real] NOT NULL ,
	[HouseLouCeng] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseLeiXing] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiChu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseZhuangXiu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseWeiSheng] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDianQi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiaJu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseXinXi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseGongJiaoLu] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseGongJiaoZhan] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseShiZheng] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZuLinStartDate] [datetime] NULL ,
	[ZuLinEndDate] [datetime] NULL ,
	[HouseZuJin] [real] NULL ,
	[HouseZuJinType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseZhiFu] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ContactName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactPhone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactEmail] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ContactQQ] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[YouXiaoQi] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQiTa] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UpdateTime] [datetime] NULL ,
	[Hits] [int] NULL ,
	[ViewAll] [bit] NOT NULL ,
	[Hot] [bit] NOT NULL ,
	[OnTop] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Passed] [bit] NOT NULL ,
	[Deleted] [bit] NOT NULL ,
	[CommendClassDays] [int] NULL ,
	[UploadPhotos] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_HouseConfig] (
	[ClassID] [int] NOT NULL ,
	[ChannelID] [int] NOT NULL ,
	[ClassName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[OpenType] [int] NOT NULL ,
	[ClassDir] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SkinID] [int] NULL ,
	[TemplateID] [int] NULL ,
	[ShowOnTop] [bit] NOT NULL ,
	[MaxPerPage] [int] NULL ,
	[ReleaseDeductPoint] [int] NULL ,
	[CommendClassPoint] [float] NULL ,
	[DefaultItemTemplate] [int] NULL ,
	[DefaultItemSkin] [int] NULL ,
	[ItemOpenType] [int] NULL ,
	[ItemCount] [int] NULL ,
	[UpgradePoint] [int] NULL ,
	[Meta_Keywords] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Meta_Description] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_HouseHZ] (
	[HouseID] [int] NOT NULL ,
	[ClassID] [int] NULL ,
	[ChannelID] [int] NULL ,
	[HouseSource] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HeZhuType] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQuyu] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDiZhi] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseXiangXiDiZhi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseLeiXing] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseLouCeng] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseHuXing] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseHuXing1] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseHuXing2] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseMianJi] [real] NOT NULL ,
	[HouseMianJi1] [real] NOT NULL ,
	[HouseMianJi2] [real] NOT NULL ,
	[HouseJianJie] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseShiYou] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiChu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseZhuangXiu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseWeiSheng] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDianQi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiaJu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseXinXi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseGongJiaoLu] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseGongJiaoZhan] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseShiZheng] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZuLinStartDate] [datetime] NULL ,
	[ZuLinEndDate] [datetime] NULL ,
	[HouseZuJin] [real] NULL ,
	[HouseZuJinType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseZhiFu] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ContactName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactPhone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactEmail] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ContactQQ] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[YouXiaoQi] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQiTa] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UpdateTime] [datetime] NULL ,
	[ViewAll] [bit] NOT NULL ,
	[Hits] [int] NULL ,
	[Hot] [bit] NOT NULL ,
	[OnTop] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Passed] [bit] NOT NULL ,
	[Deleted] [bit] NOT NULL ,
	[CommendClassDays] [int] NULL ,
	[UploadPhotos] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_HouseQG] (
	[HouseID] [int] NOT NULL ,
	[ClassID] [int] NULL ,
	[ChannelID] [int] NULL ,
	[HouseSource] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQuyu] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDiZhi] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJianCheng1] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJianCheng2] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseLeiXing] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseXingZhi] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseHuXing] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseMianJi1] [real] NOT NULL ,
	[HouseMianJi2] [real] NOT NULL ,
	[HouseLouCeng] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseChaoXiang] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[HousePriceType] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[HousePrice1] [real] NULL ,
	[HousePrice2] [real] NULL ,
	[HouseZhiFu] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiChu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseZhuangXiu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseShiZheng] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[JiaoFangStartDate] [datetime] NULL ,
	[ContactName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactPhone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactEmail] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ContactQQ] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[YouXiaoQi] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQiTa] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UpdateTime] [datetime] NULL ,
	[ViewAll] [bit] NOT NULL ,
	[Hits] [int] NULL ,
	[Hot] [bit] NOT NULL ,
	[OnTop] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Passed] [bit] NOT NULL ,
	[Deleted] [bit] NOT NULL ,
	[CommendClassDays] [int] NULL ,
	[UploadPhotos] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_HouseQZ] (
	[HouseID] [int] NOT NULL ,
	[ClassID] [int] NULL ,
	[ChannelID] [int] NULL ,
	[HouseSource] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQuyu] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDiZhi] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseHuXing] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseMianJi1] [real] NOT NULL ,
	[HouseMianJi2] [real] NOT NULL ,
	[HouseZuJin1] [real] NULL ,
	[HouseZuJin2] [real] NULL ,
	[HouseZuJinType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseZhiFu] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseLouCeng] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseLeiXing] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiChu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseZhuangXiu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseWeiSheng] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseDianQi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseJiaJu] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseXinXi] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseShiZheng] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZuLinStartDate] [datetime] NULL ,
	[ZuLinEndDate] [datetime] NULL ,
	[ContactName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactPhone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ContactEmail] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ContactQQ] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[YouXiaoQi] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[HouseQiTa] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UpdateTime] [datetime] NULL ,
	[ViewAll] [bit] NOT NULL ,
	[Hits] [int] NULL ,
	[Hot] [bit] NOT NULL ,
	[OnTop] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Passed] [bit] NOT NULL ,
	[Deleted] [bit] NOT NULL ,
	[CommendClassDays] [int] NULL ,
	[UploadPhotos] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_InfoS] (
	[InfoID] [int] IDENTITY (1, 1) NOT NULL ,
	[ItemID] [int] NULL ,
	[SpecialID] [int] NULL ,
	[ModuleType] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_InvoiceItem] (
	[InvoiceID] [int] IDENTITY (1, 1) NOT NULL ,
	[ClientID] [int] NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderFormID] [int] NULL ,
	[InvoiceType] [int] NULL ,
	[InvoiceNum] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[InvoiceTitle] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[InvoiceContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[InvoiceDate] [datetime] NULL ,
	[TotalMoney] [money] NULL ,
	[Drawer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Inputer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[InputTime] [datetime] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Item] (
	[ItemID] [int] IDENTITY (1, 1) NOT NULL ,
	[ItemName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChannelID] [int] NULL ,
	[ClassID] [int] NULL ,
	[SpecialID] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[WebName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[WebUrl] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[LoginType] [int] NULL ,
	[LoginUrl] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[LoginPostUrl] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[LoginUser] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LoginPass] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LoginFalse] [nvarchar] (150) COLLATE Chinese_PRC_CI_AS NULL ,
	[ItemDoem] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ListStr] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[LsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[LoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ListPaingType] [int] NULL ,
	[LPsString] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[LPoString] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ListPaingStr1] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ListPaingStr2] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ListPaingID1] [int] NULL ,
	[ListPaingID2] [int] NULL ,
	[ListPaingStr3] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[HsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[HoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[HttpUrlType] [int] NULL ,
	[HttpUrlStr] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ThumbnailType] [int] NULL ,
	[ThsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ThoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[TsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ToString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[CsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[CoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[AuthorType] [int] NULL ,
	[AuthorStr] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[AsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[AoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[CopyFromType] [int] NULL ,
	[FsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[FoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[CopyFromStr] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[KeyType] [int] NULL ,
	[KsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[KoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[KeyStr] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[KeyScatterNum] [int] NULL ,
	[NewsPaingType] [int] NULL ,
	[NpsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[NpoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[NewsPaingStr1] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[NewsPaingStr2] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Flag] [bit] NOT NULL ,
	[PaginationType] [int] NULL ,
	[MaxCharPerPage] [int] NULL ,
	[InfoPoint] [int] NULL ,
	[OnTop] [bit] NOT NULL ,
	[Hot] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Hits] [int] NOT NULL ,
	[Stars] [int] NULL ,
	[UpdateTime] [datetime] NOT NULL ,
	[SkinID] [int] NULL ,
	[TemplateID] [int] NULL ,
	[Script_IFRAME] [bit] NOT NULL ,
	[Script_OBJECT] [bit] NOT NULL ,
	[Script_SCRIPT] [bit] NOT NULL ,
	[Script_Div] [bit] NOT NULL ,
	[Script_CLASS] [bit] NOT NULL ,
	[Script_Span] [bit] NOT NULL ,
	[Script_IMG] [bit] NOT NULL ,
	[Script_FONT] [bit] NOT NULL ,
	[Script_A] [bit] NOT NULL ,
	[Script_HTML] [bit] NOT NULL ,
	[SaveFiles] [bit] NOT NULL ,
	[AddThumb] [bit] NOT NULL ,
	[AddWatermark] [bit] NOT NULL ,
	[CollecOrder] [int] NULL ,
	[Status] [int] NULL ,
	[CreateImmediate] [bit] NOT NULL ,
	[IncludePicYn] [bit] NOT NULL ,
	[DefaultPicYn] [bit] NOT NULL ,
	[NewsCollecDate] [datetime] NULL ,
	[CollectionNum] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CollectionType] [int] NULL ,
	[UpDateType] [int] NULL ,
	[DateType] [int] NULL ,
	[DsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[DoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ShowCommentLink] [bit] NOT NULL ,
	[Script_Table] [bit] NOT NULL ,
	[Script_Tr] [bit] NOT NULL ,
	[Script_Td] [bit] NOT NULL ,
	[PsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[PoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[PhsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[PhoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[IntroType] [int] NULL ,
	[IsString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[IoString] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[IntroStr] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[IntroNum] [int] NULL ,
	[IsField] [int] NULL ,
	[Field] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[InfoPurview] [int] NULL ,
	[arrGroupID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChargeType] [int] NULL ,
	[PitchTime] [int] NULL ,
	[ReadTimes] [int] NULL ,
	[DividePercent] [int] NULL ,
	[SaveFlashUrlToFile] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_JobCategory] (
	[JobCategoryID] [int] NOT NULL ,
	[JobCategoryName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_JsFile] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [int] NULL ,
	[JsName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[JsReadme] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[JsType] [int] NULL ,
	[ContentType] [int] NULL ,
	[JsFileName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Config] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_KeyLink] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [smallint] NULL ,
	[Source] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ReplaceText] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[isUse] [tinyint] NULL ,
	[LinkType] [tinyint] NULL ,
	[OpenType] [tinyint] NULL ,
	[ReplaceType] [smallint] NULL ,
	[Priority] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Label] (
	[LabelID] [int] IDENTITY (1, 1) NOT NULL ,
	[LabelName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LabelClass] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LabelType] [smallint] NULL ,
	[PageNum] [int] NULL ,
	[reFlashTime] [smallint] NULL ,
	[fieldlist] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[LabelIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Priority] [int] NULL ,
	[LabelContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[AreaCollectionID] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Log] (
	[LogID] [int] IDENTITY (1, 1) NOT NULL ,
	[LogType] [int] NULL ,
	[ChannelID] [int] NULL ,
	[LogTime] [datetime] NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserIP] [nvarchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[LogContent] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ScriptName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[PostString] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_MailChannel] (
	[ChannelID] [int]  NOT NULL ,
	[UserID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[SendNum] [int] NOT NULL DEFAULT (10) ,
	[IsUse] [bit] NULL
) ON [PRIMARY]
GO


CREATE TABLE [dbo].[PE_Message] (
	[id] [int] IDENTITY (1, 1) NOT NULL ,
	[sender] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[incept] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[title] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[flag] [int] NULL ,
	[sendtime] [datetime] NULL ,
	[delR] [int] NOT NULL ,
	[delS] [int] NOT NULL ,
	[isSend] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_NewKeys] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [smallint] NULL ,
	[KeyText] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Hits] [int] NULL ,
	[LastUseTime] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_OrderForm] (
	[OrderFormID] [int] NOT NULL ,
	[OrderFormNum] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[AgentName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ClientID] [int] NULL ,
	[MoneyTotal] [money] NULL ,
	[MoneyGoods] [money] NULL ,
	[NeedInvoice] [bit] NOT NULL ,
	[InvoiceContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Invoiced] [bit] NOT NULL ,
	[Remark] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[MoneyReceipt] [money] NULL ,
	[BeginDate] [datetime] NULL ,
	[InputTime] [datetime] NULL ,
	[ContacterName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZipCode] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Mobile] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Phone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PaymentType] [int] NULL ,
	[DeliverType] [int] NULL ,
	[Status] [int] NULL ,
	[DeliverStatus] [int] NULL ,
	[EnableDownload] [bit] NOT NULL ,
	[PresentMoney] [money] NULL ,
	[PresentPoint] [int] NULL ,
	[PresentExp] [int] NULL ,
	[Discount_Payment] [float] NULL ,
	[Charge_Deliver] [money] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_OrderFormItem] (
	[ItemID] [int] NOT NULL ,
	[OrderFormID] [int] NULL ,
	[ProductID] [int] NULL ,
	[SaleType] [int] NULL ,
	[Price_Original] [money] NULL ,
	[Price] [money] NULL ,
	[TruePrice] [money] NULL ,
	[Amount] [int] NULL ,
	[SubTotal] [money] NULL ,
	[BeginDate] [datetime] NULL ,
	[ServiceTerm] [int] NULL ,
	[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[PresentMoney] [money] NULL ,
	[PresentPoint] [int] NULL ,
	[PresentExp] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Page] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ClassName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PageName] [nvarchar] (160) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[PageIntro] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[PageUrl] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[PageFileName] [nvarchar] (40) COLLATE Chinese_PRC_CI_AS NULL ,
	[PageType] [smallint] NULL ,
	[PageContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrGroupID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_PageClass] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[ClassName] [nvarchar] (160) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ClassIntro] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ClassType] [smallint] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Payment] (
	[PaymentID] [int] NOT NULL ,
	[UserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderFormID] [int] NULL ,
	[PaymentNum] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[eBankID] [int] NULL ,
	[MoneyPay] [money] NULL ,
	[MoneyTrue] [money] NULL ,
	[PayTime] [datetime] NULL ,
	[Status] [int] NULL ,
	[eBankInfo] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_PaymentType] (
	[TypeID] [int] NOT NULL ,
	[TypeName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Intro] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Discount] [float] NULL ,
	[IsDefault] [bit] NOT NULL ,
	[OrderID] [int] NULL ,
	[IsDisabled] [bit] NOT NULL 
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[PE_PayPlatform] (
   [PlatformID] integer Default (0) not null ,
   [PlatformName] nvarchar(50) null ,
   [ShowName] nvarchar(50) null ,
   [Description] ntext null ,
   [AccountsID] nvarchar(50) null ,
   [MD5Key] nvarchar(255) null ,
   [Rate] float Default (0) null ,
   [PlusPoundage] bit not null ,
   [OrderID] integer Default (0) null ,
   [IsDisabled] bit not null ,
   [IsDefault] bit not null 
)  ON [PRIMARY]

CREATE TABLE [dbo].[PE_Photo] (
	[PhotoID] [int] NOT NULL ,
	[ChannelID] [int] NOT NULL ,
	[ClassID] [int] NOT NULL ,
	[PhotoName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Author] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[CopyFrom] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Inputer] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Hits] [int] NULL ,
	[DayHits] [int] NULL ,
	[WeekHits] [int] NULL ,
	[MonthHits] [int] NULL ,
	[CommentCount] [int] NULL ,
	[UpdateTime] [datetime] NULL ,
	[CreateTime] [datetime] NULL ,
	[PhotoThumb] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[PhotoUrl] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[PhotoSize] [int] NULL ,
	[OnTop] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Status] [int] NOT NULL ,
	[PhotoIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[InfoPoint] [int] NULL ,
	[Deleted] [bit] NOT NULL ,
	[Stars] [int] NULL ,
	[LastHitTime] [datetime] NULL ,
	[TemplateID] [int] NULL ,
	[SkinID] [int] NULL ,
	[VoteID] [int] NULL ,
	[PresentExp] [float] NULL ,
	[InfoPurview] [int] NULL ,
	[arrGroupID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChargeType] [int] NULL ,
	[PitchTime] [int] NULL ,
	[ReadTimes] [int] NULL ,
	[DividePercent] [int] NULL ,
	[BlogID] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Position] (
	[PositionID] [int] NOT NULL ,
	[JobCategoryID] [int] NULL ,
	[SubCompanyID] [int] NULL ,
	[WorkPlaceID] [int] NULL ,
	[ReleaseDate] [datetime] NULL ,
	[PositionName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PositionNum] [int] NULL ,
	[ValidDate] [int] NULL ,
	[PositionKeyword] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PositionDescription] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[DutyRequest] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[PositionStatus] [int] NULL ,
	[SubCompanyName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Urgent] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_PositionSupplyInfo] (
	[PositionSupplyInfoID] [int] NOT NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PositionID] [int] NULL ,
	[SubCompanyID] [int] NULL ,
	[WorkPlaceID] [int] NULL ,
	[CheckStatus] [int] NULL ,
	[CheckDate] [datetime] NULL ,
	[SupplyDate] [datetime] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_PresentProject] (
	[ProjectID] [int] IDENTITY (1, 1) NOT NULL ,
	[ProjectName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BeginDate] [datetime] NULL ,
	[EndDate] [datetime] NULL ,
	[MinMoney] [money] NULL ,
	[MaxMoney] [money] NULL ,
	[PresentContent] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Price] [money] NULL ,
	[PresentID] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Cash] [money] NULL ,
	[PresentExp] [int] NULL ,
	[PresentPoint] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Producer] (
	[ProducerID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [int] NULL ,
	[ProducerName] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProducerShortName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProducerPhoto] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[BirthDay] [datetime] NULL ,
	[Address] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Postcode] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[Phone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Homepage] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProducerIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[LastUseTime] [datetime] NULL ,
	[Passed] [bit] NOT NULL ,
	[onTop] [bit] NOT NULL ,
	[IsElite] [bit] NOT NULL ,
	[Hits] [int] NULL ,
	[ProducerType] [smallint] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Product] (
	[ProductID] [int] NOT NULL ,
	[ChannelID] [int] NULL ,
	[ProductNum] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[BarCode] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ClassID] [int] NULL ,
	[ProductKind] [int] NULL ,
	[ProductName] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProductModel] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProductStandard] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProducerName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[TrademarkName] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProductIntro] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProductExplain] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ProductThumb] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[UploadFiles] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ProductType] [int] NULL ,
	[Price] [money] NULL ,
	[Price_Original] [money] NULL ,
	[Price_Market] [money] NULL ,
	[Price_Member] [money] NULL ,
	[Price_Agent] [money] NULL ,
	[EnableWholesale] [bit] NOT NULL ,
	[Price_Wholesale1] [money] NULL ,
	[Number_Wholesale1] [int] NULL ,
	[Price_Wholesale2] [money] NULL ,
	[Number_Wholesale2] [int] NULL ,
	[Price_Wholesale3] [money] NULL ,
	[Number_Wholesale3] [int] NULL ,
	[Unit] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[OnTop] [bit] NOT NULL ,
	[IsHot] [bit] NOT NULL ,
	[IsElite] [bit] NOT NULL ,
	[Stars] [int] NULL ,
	[Stocks] [float] NULL ,
	[OrderNum] [real] NULL ,
	[AlarmNum] [int] NULL ,
	[EnableSale] [bit] NOT NULL ,
	[Discount] [float] NULL ,
	[BeginDate] [datetime] NULL ,
	[EndDate] [datetime] NULL ,
	[LimitNum] [float] NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[CommentCount] [int] NULL ,
	[UpdateTime] [datetime] NULL ,
	[CreateTime] [datetime] NULL ,
	[DownloadUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ServiceTerm] [int] NULL ,
	[Hits] [int] NULL ,
	[BuyTimes] [int] NULL ,
	[Deleted] [bit] NOT NULL ,
	[Inputer] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[TemplateID] [int] NULL ,
	[SkinID] [int] NULL ,
	[VoteID] [int] NULL ,
	[SalePromotionType] [int] NULL ,
	[MinNumber] [int] NULL ,
	[PresentNumber] [int] NULL ,
	[PresentID] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PresentMoney] [money] NULL ,
	[PresentPoint] [int] NULL ,
	[PresentExp] [int] NULL ,
	[Weight] [float] NULL ,
	[EnableSingleSell] [bit] NOT NULL ,
	[DependentProducts] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Province] (
	[ProvinceID] [int] IDENTITY (1, 1) NOT NULL ,
	[Province] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Country] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_RechargeLog] (
	[LogID] [int] IDENTITY (1, 1) NOT NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ValidNum] [int] NULL ,
	[ValidUnit] [int] NULL ,
	[Income_Payout] [int] NULL ,
	[LogTime] [datetime] NULL ,
	[Remark] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[IP] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Inputer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Resume] (
	[ResumeID] [int] NOT NULL ,
	[IntervieweeName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Nationality] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[PoliticalFeature] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Age] [int] NULL ,
	[Height] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Weight] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Sex] [int] NULL ,
	[Photo] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Marital] [int] NULL ,
	[Health] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[BirthPlace] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CurrentAddress] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[QQ] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Telephone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MobilePhone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[E_mail] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[GraduateSchool] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Education] [int] NULL ,
	[Profession] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[AvailableDate] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[WorkExperience] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ProfessionalAbility] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ForeignLanguageKind] [int] NULL ,
	[ForeignLanguageLeval] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[MotherLanguageLeval] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[OtherLanguageLeval] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_ServiceItem] (
	[ItemID] [int] IDENTITY (1, 1) NOT NULL ,
	[ClientID] [int] NULL ,
	[ContacterID] [int] NULL ,
	[OrderFormID] [int] NULL ,
	[ServiceTime] [datetime] NULL ,
	[ServiceType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ServiceMode] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ServiceTitle] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ServiceContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ServiceResult] [int] NULL ,
	[TakeTime] [int] NULL ,
	[Processor] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Inputer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Feedback] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[ConfirmTime] [datetime] NULL ,
	[ConfirmCaller] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ConfirmScore] [int] NULL ,
	[ConfirmFeedback] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Remark] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_ShoppingCarts] (
	[CartItemID] [int] IDENTITY (1, 1) NOT NULL ,
	[CartID] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ProductID] [int] NULL ,
	[Quantity] [int] NULL ,
	[PresentID] [int] NULL ,
	[UpdateTime] [datetime] NULL ,
	[UserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Skin] (
	[SkinID] [int] IDENTITY (1, 1) NOT NULL ,
	[SkinName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[IsDefault] [bit] NOT NULL ,
	[Skin_CSS] [ntext] COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[IsDefaultInProject] [bit] NOT NULL ,
	[ProjectName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Soft] (
	[SoftID] [int] NOT NULL ,
	[ChannelID] [int] NOT NULL ,
	[ClassID] [int] NOT NULL ,
	[SoftName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[SoftVersion] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[Author] [nvarchar] (30) COLLATE Chinese_PRC_CI_AS NULL ,
	[CopyFrom] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[DemoUrl] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[Inputer] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Editor] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Keyword] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Hits] [int] NULL ,
	[DayHits] [int] NULL ,
	[WeekHits] [int] NULL ,
	[MonthHits] [int] NULL ,
	[CommentCount] [int] NULL ,
	[UpdateTime] [datetime] NULL ,
	[CreateTime] [datetime] NULL ,
	[OperatingSystem] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[SoftType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SoftLanguage] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[CopyrightType] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[SoftSize] [int] NULL ,
	[RegUrl] [nvarchar] (200) COLLATE Chinese_PRC_CI_AS NULL ,
	[OnTop] [bit] NOT NULL ,
	[Elite] [bit] NOT NULL ,
	[Status] [int] NOT NULL ,
	[SoftIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[SoftPicUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[DownloadUrl] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[InfoPoint] [int] NULL ,
	[Deleted] [bit] NOT NULL ,
	[Stars] [int] NULL ,
	[DecompressPassword] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LastHitTime] [datetime] NULL ,
	[TemplateID] [int] NULL ,
	[SkinID] [int] NULL ,
	[ErrorTimes] [int] NULL ,
	[VoteID] [int] NULL ,
	[PresentExp] [float] NULL ,
	[BrowseTimes] [int] NULL ,
	[InfoPurview] [int] NULL ,
	[arrGroupID] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ChargeType] [int] NULL ,
	[PitchTime] [int] NULL ,
	[ReadTimes] [int] NULL ,
	[DividePercent] [int] NULL ,
	[BlogID] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Space] (
	[ID] [int] NOT NULL ,
	[UserID] [int] NULL ,
	[ClassID] [int] NULL ,
	[Name] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[BirthDay] [datetime] NULL ,
	[Photo] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Intro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Tel] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Fax] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Company] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Department] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[ZipCode] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[HomePage] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[QQ] [int] NULL ,
	[Type] [smallint] NULL ,
	[LastUseTime] [datetime] NULL ,
	[onTop] [bit] NOT NULL ,
	[Passed] [bit] NOT NULL ,
	[IsElite] [bit] NOT NULL ,
	[Hits] [int] NULL ,
	[OrderID] [int] NULL ,
	[LinkUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[listnum] [smallint] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SpaceBook] (
	[ID] [int] NOT NULL ,
	[UserID] [int] NOT NULL ,
	[BlogID] [int] NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Datetime] [datetime] NOT NULL ,
	[Hits] [int] NULL ,
	[PlNum] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SpaceComment] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[BlogID] [int] NULL ,
	[ItemID] [int] NULL ,
	[Type] [smallint] NULL ,
	[Uname] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Datetime] [datetime] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SpaceDiary] (
	[ID] [int] NOT NULL ,
	[UserID] [int] NOT NULL ,
	[BlogID] [int] NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Datetime] [datetime] NOT NULL ,
	[Hits] [int] NULL ,
	[PlNum] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SpaceKind] (
	[KindID] [int] NOT NULL ,
	[KindName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[ReadMe] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SpaceLink] (
	[ID] [int] NOT NULL ,
	[UserID] [int] NOT NULL ,
	[BlogID] [int] NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Datetime] [datetime] NOT NULL ,
	[Hits] [int] NULL ,
	[PlNum] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SpaceMusic] (
	[ID] [int] NOT NULL ,
	[UserID] [int] NOT NULL ,
	[BlogID] [int] NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Datetime] [datetime] NOT NULL ,
	[Hits] [int] NULL ,
	[PlNum] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SpacePhoto] (
	[ID] [int] NOT NULL ,
	[UserID] [int] NOT NULL ,
	[BlogID] [int] NULL ,
	[Title] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Datetime] [datetime] NOT NULL ,
	[Hits] [int] NULL ,
	[PlNum] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SpaceVisitor] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[BlogID] [int] NULL ,
	[UserID] [int] NOT NULL ,
	[UserName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Datetime] [datetime] NOT NULL ,
	[num] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Special] (
	[SpecialID] [int] NOT NULL ,
	[ChannelID] [int] NOT NULL ,
	[SpecialName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[OpenType] [int] NOT NULL ,
	[SpecialPicUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderID] [int] NOT NULL ,
	[Tips] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[ReadMe] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[SkinID] [int] NOT NULL ,
	[TemplateID] [int] NOT NULL ,
	[SpecialDir] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[MaxPerPage] [int] NULL ,
	[IsElite] [bit] NOT NULL ,
	[Custom_Content] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SubCompany] (
	[SubCompanyID] [int] NOT NULL ,
	[SubCompanyName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Contacter] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Telephone] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Address] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[E_mail] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Supply] (
	[SupplyId] [int] NOT NULL ,
	[ChannelId] [int] NOT NULL ,
	[ClassId] [int] NOT NULL ,
	[SpecialId] [int] NULL ,
	[SupplyName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[SupplyType] [int] NULL ,
	[SupplyTitle] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[SupplyIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[SupplyPeriod] [int] NULL ,
	[TradeType] [int] NULL ,
	[PriceIntro] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[SupplyPicUrl] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[TemplateId] [int] NULL ,
	[SkinId] [int] NULL ,
	[Status] [int] NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[Hits] [int] NULL ,
	[UpdateTime] [datetime] NULL ,
	[Deleted] [bit] NOT NULL ,
	[CommandType] [int] NULL ,
	[CommandChannelDays] [int] NULL ,
	[CommandClassDays] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Supply_Company] (
	[ClassID] [int] NOT NULL ,
	[CompanyID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Survey] (
	[SurveyID] [int] IDENTITY (1, 1) NOT NULL ,
	[SurveyName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Description] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[FileName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[IPRepeat] [int] NULL ,
	[CreateDate] [datetime] NULL ,
	[EndTime] [datetime] NULL ,
	[IsOpen] [int] NULL ,
	[NeedLogin] [int] NULL ,
	[PresentPoint] [int] NULL ,
	[LockIPType] [int] NULL ,
	[SetIPLock] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[LockUrl] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[SetPassword] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[TemplateID] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SurveyAnswer] (
	[AnswerID] [int] IDENTITY (1, 1) NOT NULL ,
	[QuestionID] [int] NULL ,
	[AnswerContent] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[VoteAmount] [int] NULL ,
	[OrderID] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SurveyInput] (
	[QuestionID] [int] NOT NULL ,
	[InputContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[SurveyID] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_SurveyQuestion] (
	[QuestionID] [int] IDENTITY (1, 1) NOT NULL ,
	[SurveyID] [int] NULL ,
	[QuestionContent] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[QuestionType] [tinyint] NULL ,
	[InputType] [tinyint] NULL ,
	[NotEmpty] [int] NULL ,
	[DataRight] [int] NULL ,
	[OrderID] [int] NULL ,
	[ContentLength] [int] NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Template] (
	[TemplateID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [int] NOT NULL ,
	[TemplateName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[TemplateType] [int] NOT NULL ,
	[TemplateContent] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[IsDefault] [bit] NOT NULL ,
	[ProjectName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsDefaultInProject] [bit] NOT NULL ,
	[Deleted] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_TemplateProject] (
	[TemplateProjectID] [int] NOT NULL ,
	[TemplateProjectName] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[Intro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[IsDefault] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Trademark] (
	[TrademarkID] [int] IDENTITY (1, 1) NOT NULL ,
	[ChannelID] [int] NULL ,
	[ProducerID] [int] NULL ,
	[TrademarkName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[TrademarkPhoto] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[TrademarkIntro] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[TrademarkType] [tinyint] NULL ,
	[Passed] [bit] NOT NULL ,
	[onTop] [bit] NOT NULL ,
	[IsElite] [bit] NOT NULL ,
	[Hits] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_TransferItem] (
	[ItemID] [int] IDENTITY (1, 1) NOT NULL ,
	[OrderFormID] [int] NULL ,
	[OwnerUserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[TargetUserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Poundage] [money] NULL ,
	[PayerUserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[Remark] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[DateAndTime] [datetime] NULL ,
	[Inputer] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_UsedDetail] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[EquipmentID] [int] NULL ,
	[UserName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserType] [int] NULL ,
	[UserYear] [int] NULL ,
	[UserClass] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[LessonInfo] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[LessonNumber] [int] NULL ,
	[LessonYear] [int] NULL ,
	[LessonMonth] [int] NULL ,
	[LessonDay] [int] NULL ,
	[RegisterTime] [datetime] NULL ,
	[RegisterIP] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Used] [int] NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_User] (
	[UserID] [int] NOT NULL ,
	[GroupID] [int] NULL ,
	[ClientID] [int] NULL ,
	[ContacterID] [int] NULL ,
	[CompanyID] [int] NULL ,
	[UserType] [int] NULL ,
	[UserName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserPassword] [nvarchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[LastPassword] [nvarchar] (16) COLLATE Chinese_PRC_CI_AS NULL ,
	[Question] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[Email] [nvarchar] (100) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserFace] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[FaceWidth] [smallint] NULL ,
	[FaceHeight] [smallint] NULL ,
	[Sign] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[RegTime] [datetime] NULL ,
	[JoinTime] [datetime] NULL ,
	[LastLoginTime] [datetime] NULL ,
	[LastPresentTime] [datetime] NULL ,
	[LastLoginIP] [nvarchar] (15) COLLATE Chinese_PRC_CI_AS NULL ,
	[LoginTimes] [int] NULL ,
	[Balance] [money] NULL ,
	[UserPoint] [int] NULL ,
	[UserExp] [int] NULL ,
	[ConsumePoint] [int] NULL ,
	[PostItems] [int] NULL ,
	[PassedItems] [int] NULL ,
	[DelItems] [int] NULL ,
	[UnsignedItems] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[UnreadMsg] [smallint] NULL ,
	[BeginTime] [datetime] NULL ,
	[ValidNum] [smallint] NULL ,
	[ValidUnit] [tinyint] NULL ,
	[IsLocked] [bit] NOT NULL ,
	[SpecialPermission] [bit] NOT NULL ,
	[arrClass_Browse] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_View] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_Input] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Privacy] [tinyint] NULL ,
	[UserFriendGroup] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[UserSetting] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[CheckNum] [int] NULL ,
	[Blog] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_UserGroup] (
	[GroupID] [int] NOT NULL ,
	[GroupName] [nvarchar] (20) COLLATE Chinese_PRC_CI_AS NOT NULL ,
	[GroupIntro] [nvarchar] (255) COLLATE Chinese_PRC_CI_AS NULL ,
	[GroupType] [tinyint] NULL ,
	[arrClass_Browse] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_View] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[arrClass_Input] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[GroupSetting] [ntext] COLLATE Chinese_PRC_CI_AS NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_Vote] (
	[ID] [int] IDENTITY (1, 1) NOT NULL ,
	[Title] [ntext] COLLATE Chinese_PRC_CI_AS NULL ,
	[Select1] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer1] [int] NULL ,
	[Select2] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer2] [int] NULL ,
	[Select3] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer3] [int] NULL ,
	[Select4] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer4] [int] NULL ,
	[Select5] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer5] [int] NULL ,
	[Select6] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer6] [int] NULL ,
	[Select7] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer7] [int] NULL ,
	[Select8] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer8] [int] NULL ,
	[Select9] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer9] [int] NULL ,
	[Select10] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer10] [int] NULL ,
	[Select11] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer11] [int] NULL ,
	[Select12] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer12] [int] NULL ,
	[Select13] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer13] [int] NULL ,
	[Select14] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer14] [int] NULL ,
	[Select15] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer15] [int] NULL ,
	[Select16] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer16] [int] NULL ,
	[Select17] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer17] [int] NULL ,
	[Select18] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer18] [int] NULL ,	
	[Select19] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer19] [int] NULL ,
	[Select20] [nvarchar] (180) COLLATE Chinese_PRC_CI_AS NULL ,
	[Answer20] [int] NULL ,	
	[VoteNum] [int] NULL ,		
	[VoteTime] [datetime] NULL ,
	[EndTime] [datetime] NULL ,
	[VoteType] [nvarchar] (10) COLLATE Chinese_PRC_CI_AS NULL ,
	[IsSelected] [bit] NOT NULL ,
	[ChannelID] [int] NULL ,
	[IsItem] [bit] NOT NULL 
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

CREATE TABLE [dbo].[PE_WorkPlace] (
	[WorkPlaceID] [int] NOT NULL ,
	[WorkPlaceName] [nvarchar] (50) COLLATE Chinese_PRC_CI_AS NULL ,
	[OrderID] [int] NULL 
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_AdZone] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_AdZone] PRIMARY KEY  CLUSTERED 
	(
		[ZoneID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Admin] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Admin] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Advertisement] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Advertisement] PRIMARY KEY  CLUSTERED 
	(
		[ADID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Announce] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Announce] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_AreaCollection] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_AreaCollection] PRIMARY KEY  CLUSTERED 
	(
		[AreaID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Article] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Article] PRIMARY KEY  CLUSTERED 
	(
		[ArticleID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Author] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Author] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Bank] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Bank] PRIMARY KEY  CLUSTERED 
	(
		[BankID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_BankrollItem] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_BankrollItem] PRIMARY KEY  CLUSTERED 
	(
		[ItemID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Card] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Card] PRIMARY KEY  CLUSTERED 
	(
		[CardID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Channel] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Channel] PRIMARY KEY  CLUSTERED 
	(
		[ChannelID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_City] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_City] PRIMARY KEY  CLUSTERED 
	(
		[AreaID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Class] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Class] PRIMARY KEY  CLUSTERED 
	(
		[ClassID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Classroom] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Classroom] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Client] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Client] PRIMARY KEY  CLUSTERED 
	(
		[ClientID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Comment] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Comment] PRIMARY KEY  CLUSTERED 
	(
		[CommentID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Company] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Company] PRIMARY KEY  CLUSTERED 
	(
		[CompanyID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_ComplainItem] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_ComplainItem] PRIMARY KEY  CLUSTERED 
	(
		[ItemID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_ConsumeLog] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_ConsumeLog] PRIMARY KEY  CLUSTERED 
	(
		[LogID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Contacter] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Contacter] PRIMARY KEY  CLUSTERED 
	(
		[ContacterID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_CopyFrom] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_CopyFrom] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Country] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Country] PRIMARY KEY  CLUSTERED 
	(
		[CountryID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_DeliverCharge] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_DeliverCharge] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_DeliverItem] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_DeliverItem] PRIMARY KEY  CLUSTERED 
	(
		[DeliverID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_DeliverType] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_DeliverType] PRIMARY KEY  CLUSTERED 
	(
		[TypeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Dictionary] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Dictionary] PRIMARY KEY  CLUSTERED 
	(
		[FieldID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_DownError] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_DownError] PRIMARY KEY  CLUSTERED 
	(
		[ErrorID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_DownServer] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_DownServer] PRIMARY KEY  CLUSTERED 
	(
		[ServerID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Equipment] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Equipment] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Favorite] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Favorite] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Field] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Field] PRIMARY KEY  CLUSTERED 
	(
		[FieldID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Filters] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Filters] PRIMARY KEY  CLUSTERED 
	(
		[FilterID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Friend] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Friend] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_FriendSite] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_FriendSite] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_FsKind] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_FsKind] PRIMARY KEY  CLUSTERED 
	(
		[KindID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_GuestBook] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_GuestBook] PRIMARY KEY  CLUSTERED 
	(
		[GuestID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_GuestKind] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_GuestKind] PRIMARY KEY  CLUSTERED 
	(
		[KindID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_HistrolyNews] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_HistrolyNews] PRIMARY KEY  CLUSTERED 
	(
		[HistrolyNewsID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_HouseArea] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_HouseArea] PRIMARY KEY  CLUSTERED 
	(
		[AreaID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_HouseCS] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_HouseCS] PRIMARY KEY  CLUSTERED 
	(
		[HouseID] DESC 
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_HouseCZ] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_HouseCZ] PRIMARY KEY  CLUSTERED 
	(
		[HouseID] DESC 
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_HouseConfig] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_HouseConfig] PRIMARY KEY  CLUSTERED 
	(
		[ClassID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_HouseHZ] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_HouseHZ] PRIMARY KEY  CLUSTERED 
	(
		[HouseID] DESC 
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_HouseQG] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_HouseQG] PRIMARY KEY  CLUSTERED 
	(
		[HouseID] DESC 
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_HouseQZ] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_HouseQZ] PRIMARY KEY  CLUSTERED 
	(
		[HouseID] DESC 
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_InfoS] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_InfoS] PRIMARY KEY  CLUSTERED 
	(
		[InfoID] DESC 
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_InvoiceItem] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_InvoiceItem] PRIMARY KEY  CLUSTERED 
	(
		[InvoiceID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Item] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Item] PRIMARY KEY  CLUSTERED 
	(
		[ItemID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_JobCategory] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_JobCategory] PRIMARY KEY  CLUSTERED 
	(
		[JobCategoryID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_JsFile] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_JsFile] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_KeyLink] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_KeyLink] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Label] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Label] PRIMARY KEY  CLUSTERED 
	(
		[LabelID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Log] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Log] PRIMARY KEY  CLUSTERED 
	(
		[LogID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_MailChannel] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_MailChannel] PRIMARY KEY  CLUSTERED 
	(
		[ChannelID]
	)  ON [PRIMARY] 
GO


ALTER TABLE [dbo].[PE_Message] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Message] PRIMARY KEY  CLUSTERED 
	(
		[id]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_NewKeys] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_NewKeys] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_OrderForm] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_OrderForm] PRIMARY KEY  CLUSTERED 
	(
		[OrderFormID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_OrderFormItem] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_OrderFormItem] PRIMARY KEY  CLUSTERED 
	(
		[ItemID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Page] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Page] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_PageClass] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_PageClass] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Payment] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Payment] PRIMARY KEY  CLUSTERED 
	(
		[PaymentID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_PaymentType] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_PaymentType] PRIMARY KEY  CLUSTERED 
	(
		[TypeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Photo] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Photo] PRIMARY KEY  CLUSTERED 
	(
		[PhotoID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Position] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Position] PRIMARY KEY  CLUSTERED 
	(
		[PositionID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_PositionSupplyInfo] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_PositionSupplyInfo] PRIMARY KEY  CLUSTERED 
	(
		[PositionSupplyInfoID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_PresentProject] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_PresentProject] PRIMARY KEY  CLUSTERED 
	(
		[ProjectID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Producer] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Producer] PRIMARY KEY  CLUSTERED 
	(
		[ProducerID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Product] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Product] PRIMARY KEY  CLUSTERED 
	(
		[ProductID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Province] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Province] PRIMARY KEY  CLUSTERED 
	(
		[ProvinceID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_RechargeLog] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_RechargeLog] PRIMARY KEY  CLUSTERED 
	(
		[LogID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Resume] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Resume] PRIMARY KEY  CLUSTERED 
	(
		[ResumeID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_ServiceItem] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_ServiceItem] PRIMARY KEY  CLUSTERED 
	(
		[ItemID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_ShoppingCarts] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_ShoppingCarts] PRIMARY KEY  CLUSTERED 
	(
		[CartItemID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Skin] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Skin] PRIMARY KEY  CLUSTERED 
	(
		[SkinID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Soft] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Soft] PRIMARY KEY  CLUSTERED 
	(
		[SoftID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Space] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Space] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SpaceBook] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SpaceBook] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SpaceComment] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SpaceComment] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SpaceDiary] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SpaceDiary] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SpaceKind] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SpaceKind] PRIMARY KEY  CLUSTERED 
	(
		[KindID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SpaceLink] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SpaceLink] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SpaceMusic] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SpaceMusic] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SpacePhoto] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SpacePhoto] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SpaceVisitor] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SpaceVisitor] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Special] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Special] PRIMARY KEY  CLUSTERED 
	(
		[SpecialID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SubCompany] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SubCompany] PRIMARY KEY  CLUSTERED 
	(
		[SubCompanyID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Supply] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Supply] PRIMARY KEY  CLUSTERED 
	(
		[SupplyId]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Supply_Company] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Supply_Company] PRIMARY KEY  CLUSTERED 
	(
		[ClassID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Survey] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Survey] PRIMARY KEY  CLUSTERED 
	(
		[SurveyID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SurveyAnswer] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SurveyAnswer] PRIMARY KEY  CLUSTERED 
	(
		[AnswerID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SurveyInput] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SurveyInput] PRIMARY KEY  CLUSTERED 
	(
		[QuestionID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_SurveyQuestion] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_SurveyQuestion] PRIMARY KEY  CLUSTERED 
	(
		[QuestionID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Template] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Template] PRIMARY KEY  CLUSTERED 
	(
		[TemplateID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_TemplateProject] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_TemplateProject] PRIMARY KEY  CLUSTERED 
	(
		[TemplateProjectID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Trademark] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Trademark] PRIMARY KEY  CLUSTERED 
	(
		[TrademarkID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_TransferItem] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_TransferItem] PRIMARY KEY  CLUSTERED 
	(
		[ItemID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_UsedDetail] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_UsedDetail] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_User] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_User] PRIMARY KEY  CLUSTERED 
	(
		[UserID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_UserGroup] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_UserGroup] PRIMARY KEY  CLUSTERED 
	(
		[GroupID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_Vote] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_Vote] PRIMARY KEY  CLUSTERED 
	(
		[ID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_WorkPlace] WITH NOCHECK ADD 
	CONSTRAINT [PK_PE_WorkPlace] PRIMARY KEY  CLUSTERED 
	(
		[WorkPlaceID]
	)  ON [PRIMARY] 
GO

ALTER TABLE [dbo].[PE_AdZone] ADD 
	CONSTRAINT [DF__PE_AdZone__ZoneI__0BC6C43E] DEFAULT (0) FOR [ZoneID],
	CONSTRAINT [DF__PE_AdZone__Chann__0CBAE877] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_AdZone__ZoneT__0DAF0CB0] DEFAULT (0) FOR [ZoneType],
	CONSTRAINT [DF__PE_AdZone__Defau__0EA330E9] DEFAULT (1) FOR [DefaultSetting],
	CONSTRAINT [DF__PE_AdZone__ZoneW__0F975522] DEFAULT (0) FOR [ZoneWidth],
	CONSTRAINT [DF__PE_AdZone__ZoneH__108B795B] DEFAULT (0) FOR [ZoneHeight],
	CONSTRAINT [DF__PE_AdZone__Activ__117F9D94] DEFAULT (0) FOR [Active],
	CONSTRAINT [DF__PE_AdZone__ShowT__1273C1CD] DEFAULT (0) FOR [ShowType]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_AdZone]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ZoneType] ON [dbo].[PE_AdZone]([ZoneType]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Admin] ADD 
	CONSTRAINT [DF__PE_Admin__LoginT__76CBA758] DEFAULT (0) FOR [LoginTimes],
	CONSTRAINT [DF__PE_Admin__Enable__77BFCB91] DEFAULT (0) FOR [EnableMultiLogin],
	CONSTRAINT [DF__PE_Admin__AdminP__78B3EFCA] DEFAULT (0) FOR [AdminPurview_Article],
	CONSTRAINT [DF__PE_Admin__AdminP__79A81403] DEFAULT (0) FOR [AdminPurview_Soft],
	CONSTRAINT [DF__PE_Admin__AdminP__7A9C383C] DEFAULT (0) FOR [AdminPurview_Photo],
	CONSTRAINT [DF__PE_Admin__AdminP__7B905C75] DEFAULT (0) FOR [AdminPurview_GuestBook],
	CONSTRAINT [DF__PE_Admin__AdminP__7C8480AE] DEFAULT (0) FOR [AdminPurview_House],
	CONSTRAINT [DF__PE_Admin__AdminP__7D78A4E7] DEFAULT (0) FOR [AdminPurview_Shop],
	CONSTRAINT [DF__PE_Admin__Count___7E6CC920] DEFAULT (0) FOR [Count_Add],
	CONSTRAINT [DF__PE_Admin__Count___7F60ED59] DEFAULT (0) FOR [Count_Check],
	CONSTRAINT [DF__PE_Admin__Count___00551192] DEFAULT (0) FOR [Count_Reject]
GO

 CREATE  INDEX [Password] ON [dbo].[PE_Admin]([Password]) ON [PRIMARY]
GO

 CREATE  INDEX [UserName] ON [dbo].[PE_Admin]([UserName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Advertisement] ADD 
	CONSTRAINT [DF__PE_Advert__UserI__023D5A04] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_Advert__ADTyp__03317E3D] DEFAULT (0) FOR [ADType],
	CONSTRAINT [DF__PE_Advert__Flash__0425A276] DEFAULT (0) FOR [FlashWmode],
	CONSTRAINT [DF__PE_Advert__LinkT__0519C6AF] DEFAULT (0) FOR [LinkTarget],
	CONSTRAINT [DF__PE_Advert__Count__060DEAE8] DEFAULT (0) FOR [CountView],
	CONSTRAINT [DF__PE_Advert__Views__07020F21] DEFAULT (0) FOR [Views],
	CONSTRAINT [DF__PE_Advert__Count__07F6335A] DEFAULT (0) FOR [CountClick],
	CONSTRAINT [DF__PE_Advert__Click__08EA5793] DEFAULT (0) FOR [Clicks],
	CONSTRAINT [DF__PE_Advert__Passe__09DE7BCC] DEFAULT (0) FOR [Passed]
GO

 CREATE  INDEX [ADType] ON [dbo].[PE_Advertisement]([ADType]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Announce] ADD 
	CONSTRAINT [DF__PE_Announ__IsSel__145C0A3F] DEFAULT (0) FOR [IsSelected],
	CONSTRAINT [DF__PE_Announ__OutTi__15502E78] DEFAULT (0) FOR [OutTime]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Announce]([ChannelID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_AreaCollection] ADD 
	CONSTRAINT [DF__PE_AreaCol__Code__173876EA] DEFAULT (0) FOR [Code],
	CONSTRAINT [DF__PE_AreaCo__AreaP__182C9B23] DEFAULT (0) FOR [AreaPassed],
	CONSTRAINT [DF__PE_AreaCol__Type__1920BF5C] DEFAULT (0) FOR [Type]
GO

 CREATE  INDEX [Code] ON [dbo].[PE_AreaCollection]([Code]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Article] ADD 
	CONSTRAINT [DF__PE_Articl__Comme__1B0907CE] DEFAULT (0) FOR [CommentCount],
	CONSTRAINT [DF__PE_Articl__OnTop__1BFD2C07] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_Articl__Elite__1CF15040] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_Articl__Statu__1DE57479] DEFAULT (0) FOR [Status],
	CONSTRAINT [DF__PE_Articl__Inclu__1ED998B2] DEFAULT (0) FOR [IncludePic],
	CONSTRAINT [DF__PE_Articl__Delet__1FCDBCEB] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_Articl__ShowC__20C1E124] DEFAULT (0) FOR [ShowCommentLink],
	CONSTRAINT [DF__PE_Articl__Recei__21B6055D] DEFAULT (0) FOR [Receive],
	CONSTRAINT [DF__PE_Articl__AutoR__22AA2996] DEFAULT (0) FOR [AutoReceiveTime],
	CONSTRAINT [DF__PE_Articl__Recei__239E4DCF] DEFAULT (0) FOR [ReceiveType],
	CONSTRAINT [DF__PE_Articl__Prese__24927208] DEFAULT (0) FOR [PresentExp],
	CONSTRAINT [DF__PE_Articl__Copym__25869641] DEFAULT (0) FOR [Copymoney],
	CONSTRAINT [DF__PE_Articl__IsPay__267ABA7A] DEFAULT (0) FOR [IsPayed],
	CONSTRAINT [DF__PE_Articl__VoteI__276EDEB3] DEFAULT (0) FOR [VoteID],
	CONSTRAINT [DF__PE_Articl__InfoP__286302EC] DEFAULT (0) FOR [InfoPurview],
	CONSTRAINT [DF__PE_Articl__Charg__29572725] DEFAULT (0) FOR [ChargeType],
	CONSTRAINT [DF__PE_Articl__Pitch__2A4B4B5E] DEFAULT (0) FOR [PitchTime],
	CONSTRAINT [DF__PE_Articl__ReadT__2B3F6F97] DEFAULT (0) FOR [ReadTimes],
	CONSTRAINT [DF__PE_Articl__Divid__2C3393D0] DEFAULT (0) FOR [DividePercent],
	CONSTRAINT [DF__PE_Articl__BlogI__2D27B809] DEFAULT (0) FOR [BlogID]
GO

 CREATE  INDEX [Author] ON [dbo].[PE_Article]([Author]) ON [PRIMARY]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Article]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_Article]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Inputer] ON [dbo].[PE_Article]([Inputer]) ON [PRIMARY]
GO

 CREATE  INDEX [Keyword] ON [dbo].[PE_Article]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinID] ON [dbo].[PE_Article]([SkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [Status] ON [dbo].[PE_Article]([Status]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Article]([TemplateID]) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_Article]([UpdateTime]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Author] ADD 
	CONSTRAINT [DF__PE_Author__Chann__2F10007B] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Author__Sex__300424B4] DEFAULT (0) FOR [Sex],
	CONSTRAINT [DF__PE_Author__QQ__30F848ED] DEFAULT (0) FOR [QQ],
	CONSTRAINT [DF__PE_Author__Autho__31EC6D26] DEFAULT (0) FOR [AuthorType],
	CONSTRAINT [DF__PE_Author__Passe__32E0915F] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_Author__IsEli__33D4B598] DEFAULT (0) FOR [IsElite],
	CONSTRAINT [DF__PE_Author__onTop__34C8D9D1] DEFAULT (0) FOR [onTop],
	CONSTRAINT [DF__PE_Author__Hits__35BCFE0A] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_Author__Templ__36B12243] DEFAULT (0) FOR [TemplateID]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Author]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Author]([TemplateID]) ON [PRIMARY]
GO

 CREATE  INDEX [ZipCode] ON [dbo].[PE_Author]([ZipCode]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Bank] ADD 
	CONSTRAINT [DF__PE_Bank__BankID__38996AB5] DEFAULT (0) FOR [BankID],
	CONSTRAINT [DF__PE_Bank__IsDefau__398D8EEE] DEFAULT (0) FOR [IsDefault],
	CONSTRAINT [DF__PE_Bank__OrderID__3A81B327] DEFAULT (0) FOR [OrderID],
	CONSTRAINT [DF__PE_Bank__IsDisab__3B75D760] DEFAULT (0) FOR [IsDisabled]
GO

 CREATE  INDEX [CardNum] ON [dbo].[PE_Bank]([CardNum]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_Bank]([OrderID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_BankrollItem] ADD 
	CONSTRAINT [DF__PE_Bankro__Clien__3D5E1FD2] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_Bankro__Money__3E52440B] DEFAULT (0) FOR [Money],
	CONSTRAINT [DF__PE_Bankro__Money__3F466844] DEFAULT (0) FOR [MoneyType],
	CONSTRAINT [DF__PE_Bankro__Curre__403A8C7D] DEFAULT (0) FOR [CurrencyType],
	CONSTRAINT [DF__PE_Bankro__eBank__412EB0B6] DEFAULT (0) FOR [eBankID],
	CONSTRAINT [DF__PE_Bankro__Incom__4222D4EF] DEFAULT (0) FOR [Income_PayOut],
	CONSTRAINT [DF__PE_Bankro__Order__4316F928] DEFAULT (0) FOR [OrderFormID],
	CONSTRAINT [DF__PE_Bankro__Payme__440B1D61] DEFAULT (0) FOR [PaymentID]
GO

 CREATE  INDEX [ClientID] ON [dbo].[PE_BankrollItem]([ClientID]) ON [PRIMARY]
GO

 CREATE  INDEX [eBankID] ON [dbo].[PE_BankrollItem]([eBankID]) ON [PRIMARY]
GO

 CREATE  INDEX [ItemID] ON [dbo].[PE_BankrollItem]([ItemID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderFormID] ON [dbo].[PE_BankrollItem]([OrderFormID]) ON [PRIMARY]
GO

 CREATE  INDEX [PaymentID] ON [dbo].[PE_BankrollItem]([PaymentID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserName] ON [dbo].[PE_BankrollItem]([UserName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Card] ADD 
	CONSTRAINT [DF__PE_Card__CardTyp__45F365D3] DEFAULT (0) FOR [CardType],
	CONSTRAINT [DF__PE_Card__Product__46E78A0C] DEFAULT (0) FOR [ProductID],
	CONSTRAINT [DF__PE_Card__Money__47DBAE45] DEFAULT (0) FOR [Money],
	CONSTRAINT [DF__PE_Card__ValidNu__48CFD27E] DEFAULT (0) FOR [ValidNum],
	CONSTRAINT [DF__PE_Card__ValidUn__49C3F6B7] DEFAULT (0) FOR [ValidUnit],
	CONSTRAINT [DF__PE_Card__OrderFo__4AB81AF0] DEFAULT (0) FOR [OrderFormItemID]
GO

 CREATE  INDEX [CardID] ON [dbo].[PE_Card]([CardID]) ON [PRIMARY]
GO

 CREATE  INDEX [CardNum] ON [dbo].[PE_Card]([CardNum]) ON [PRIMARY]
GO

 CREATE  INDEX [CardPassword] ON [dbo].[PE_Card]([Password]) ON [PRIMARY]
GO

 CREATE  INDEX [CardType] ON [dbo].[PE_Card]([CardType]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderFormItemID] ON [dbo].[PE_Card]([OrderFormItemID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductID] ON [dbo].[PE_Card]([ProductID]) ON [PRIMARY]
GO

 CREATE  INDEX [ValidNum] ON [dbo].[PE_Card]([ValidNum]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Channel] ADD 
	CONSTRAINT [DF__PE_Channe__Chann__4CA06362] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Channe__Disab__4D94879B] DEFAULT (0) FOR [Disabled],
	CONSTRAINT [DF__PE_Channe__ShowN__4E88ABD4] DEFAULT (1) FOR [ShowName],
	CONSTRAINT [DF__PE_Channe__ShowN__4F7CD00D] DEFAULT (1) FOR [ShowNameOnPath],
	CONSTRAINT [DF__PE_Channe__ShowC__5070F446] DEFAULT (0) FOR [ShowClassTreeGuide],
	CONSTRAINT [DF__PE_Channe__ShowS__5165187F] DEFAULT (0) FOR [ShowSuspensionPoints],
	CONSTRAINT [DF__PE_Channe__Check__52593CB8] DEFAULT (0) FOR [CheckLevel],
	CONSTRAINT [DF__PE_Channe__Enabl__534D60F1] DEFAULT (1) FOR [EnableUploadFile],
	CONSTRAINT [DF__PE_Channe__UseCr__5441852A] DEFAULT (0) FOR [UseCreateHTML],
	CONSTRAINT [DF__PE_Channe__Struc__5535A963] DEFAULT (0) FOR [StructureType],
	CONSTRAINT [DF__PE_Channe__ListF__5629CD9C] DEFAULT (0) FOR [ListFileType],
	CONSTRAINT [DF__PE_Channe__FileN__571DF1D5] DEFAULT (0) FOR [FileNameType],
	CONSTRAINT [DF__PE_Channe__AutoC__5812160E] DEFAULT (0) FOR [AutoCreateType],
	CONSTRAINT [DF__PE_Channe__FileE__59063A47] DEFAULT (0) FOR [FileExt_Index],
	CONSTRAINT [DF__PE_Channe__FileE__59FA5E80] DEFAULT (0) FOR [FileExt_List],
	CONSTRAINT [DF__PE_Channe__FileE__5AEE82B9] DEFAULT (0) FOR [FileExt_Item],
	CONSTRAINT [DF__PE_Channe__Updat__5BE2A6F2] DEFAULT (0) FOR [UpdatePages],
	CONSTRAINT [DF__PE_Channe__Chann__5CD6CB2B] DEFAULT (0) FOR [ChannelPurview],
	CONSTRAINT [DF__PE_Channe__JS_Sp__5DCAEF64] DEFAULT (0) FOR [JS_SpecialNum],
	CONSTRAINT [DF__PE_Channe__Autho__5EBF139D] DEFAULT (0) FOR [AuthorInfoLen],
	CONSTRAINT [DF__PE_Channe__MaxPe__5FB337D6] DEFAULT (0) FOR [MaxPerPage_Index],
	CONSTRAINT [DF__PE_Channe__MaxPe__60A75C0F] DEFAULT (0) FOR [MaxPerPage_SearchResult],
	CONSTRAINT [DF__PE_Channe__MaxPe__619B8048] DEFAULT (0) FOR [MaxPerPage_New],
	CONSTRAINT [DF__PE_Channe__MaxPe__628FA481] DEFAULT (0) FOR [MaxPerPage_Hot],
	CONSTRAINT [DF__PE_Channe__MaxPe__6383C8BA] DEFAULT (0) FOR [MaxPerPage_Elite],
	CONSTRAINT [DF__PE_Channe__MaxPe__6477ECF3] DEFAULT (0) FOR [MaxPerPage_SpecialList],
	CONSTRAINT [DF__PE_Channe__Money__656C112C] DEFAULT (0) FOR [MoneyPerKw]
GO

 CREATE  INDEX [arrGroupID] ON [dbo].[PE_Channel]([arrGroupID]) ON [PRIMARY]
GO

 CREATE  INDEX [DefaultSkinID] ON [dbo].[PE_Channel]([DefaultSkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [Disabled] ON [dbo].[PE_Channel]([Disabled]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_Channel]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [AreaCode] ON [dbo].[PE_City]([AreaCode]) ON [PRIMARY]
GO

 CREATE  INDEX [PostCode] ON [dbo].[PE_City]([PostCode]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Class] ADD 
	CONSTRAINT [DF__PE_Class__ShowOn__68487DD7] DEFAULT (0) FOR [ShowOnTop],
	CONSTRAINT [DF__PE_Class__ShowOn__693CA210] DEFAULT (0) FOR [ShowOnIndex],
	CONSTRAINT [DF__PE_Class__IsElit__6A30C649] DEFAULT (0) FOR [IsElite],
	CONSTRAINT [DF__PE_Class__Enable__6B24EA82] DEFAULT (0) FOR [EnableAdd],
	CONSTRAINT [DF__PE_Class__Enable__6C190EBB] DEFAULT (0) FOR [EnableProtect],
	CONSTRAINT [DF__PE_Class__ClassP__6D0D32F4] DEFAULT (0) FOR [ClassPurview],
	CONSTRAINT [DF__PE_Class__Enable__6E01572D] DEFAULT (0) FOR [EnableComment],
	CONSTRAINT [DF__PE_Class__CheckC__6EF57B66] DEFAULT (0) FOR [CheckComment],
	CONSTRAINT [DF__PE_Class__Presen__6FE99F9F] DEFAULT (0) FOR [PresentExp],
	CONSTRAINT [DF__PE_Class__Defaul__70DDC3D8] DEFAULT (0) FOR [DefaultItemPoint],
	CONSTRAINT [DF__PE_Class__Defaul__71D1E811] DEFAULT (0) FOR [DefaultItemChargeType],
	CONSTRAINT [DF__PE_Class__Defaul__72C60C4A] DEFAULT (0) FOR [DefaultItemPitchTime],
	CONSTRAINT [DF__PE_Class__Defaul__73BA3083] DEFAULT (0) FOR [DefaultItemReadTimes],
	CONSTRAINT [DF__PE_Class__Defaul__74AE54BC] DEFAULT (0) FOR [DefaultItemDividePercent]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Class]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassType] ON [dbo].[PE_Class]([ClassType]) ON [PRIMARY]
GO

 CREATE  INDEX [NextID] ON [dbo].[PE_Class]([NextID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_Class]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [ParentID] ON [dbo].[PE_Class]([ParentID]) ON [PRIMARY]
GO

 CREATE  INDEX [PrevID] ON [dbo].[PE_Class]([PrevID]) ON [PRIMARY]
GO

 CREATE  INDEX [RootID] ON [dbo].[PE_Class]([RootID]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinID] ON [dbo].[PE_Class]([SkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Class]([TemplateID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Classroom] ADD 
	CONSTRAINT [DF__PE_Classr__Fathe__76969D2E] DEFAULT (0) FOR [FatherID]
GO

 CREATE  INDEX [fatherID] ON [dbo].[PE_Classroom]([FatherID]) ON [PRIMARY]
GO

 CREATE  INDEX [id] ON [dbo].[PE_Classroom]([ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Client] ADD 
	CONSTRAINT [DF__PE_Client__Clien__787EE5A0] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_Client__Paren__797309D9] DEFAULT (0) FOR [ParentID],
	CONSTRAINT [DF__PE_Client__Clien__7A672E12] DEFAULT (0) FOR [ClientType],
	CONSTRAINT [DF__PE_Client__Area__7B5B524B] DEFAULT (0) FOR [Area],
	CONSTRAINT [DF__PE_Client__Clien__7C4F7684] DEFAULT (0) FOR [ClientField],
	CONSTRAINT [DF__PE_Client__Value__7D439ABD] DEFAULT (0) FOR [ValueLevel],
	CONSTRAINT [DF__PE_Client__Credi__7E37BEF6] DEFAULT (0) FOR [CreditLevel],
	CONSTRAINT [DF__PE_Client__Impor__7F2BE32F] DEFAULT (0) FOR [Importance],
	CONSTRAINT [DF__PE_Client__Conne__00200768] DEFAULT (0) FOR [ConnectionLevel],
	CONSTRAINT [DF__PE_Client__Group__01142BA1] DEFAULT (0) FOR [GroupID],
	CONSTRAINT [DF__PE_Client__Sourc__02084FDA] DEFAULT (0) FOR [SourceType],
	CONSTRAINT [DF__PE_Client__Phase__02FC7413] DEFAULT (0) FOR [PhaseType],
	CONSTRAINT [DF__PE_Client__Visit__03F0984C] DEFAULT (0) FOR [VisitTimes],
	CONSTRAINT [DF__PE_Client__Servi__04E4BC85] DEFAULT (0) FOR [ServiceTimes],
	CONSTRAINT [DF__PE_Client__Compl__05D8E0BE] DEFAULT (0) FOR [ComplainTimes],
	CONSTRAINT [DF__PE_Client__Balan__06CD04F7] DEFAULT (0) FOR [Balance]
GO

 CREATE  INDEX [ClientID] ON [dbo].[PE_Client]([ClientID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClientNum] ON [dbo].[PE_Client]([ClientNum]) ON [PRIMARY]
GO

 CREATE  INDEX [GroupID] ON [dbo].[PE_Client]([GroupID]) ON [PRIMARY]
GO

 CREATE  INDEX [ParentID] ON [dbo].[PE_Client]([ParentID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Comment] ADD 
	CONSTRAINT [DF__PE_Commen__Passe__08B54D69] DEFAULT (0) FOR [Passed]
GO

 CREATE  INDEX [CommentID] ON [dbo].[PE_Comment]([CommentID]) ON [PRIMARY]
GO

 CREATE  INDEX [InfoID] ON [dbo].[PE_Comment]([InfoID]) ON [PRIMARY]
GO

 CREATE  INDEX [ModuleType] ON [dbo].[PE_Comment]([ModuleType]) ON [PRIMARY]
GO

 CREATE  INDEX [Passed] ON [dbo].[PE_Comment]([Passed]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Company] ADD 
	CONSTRAINT [DF__PE_Compan__Compa__0A9D95DB] DEFAULT (0) FOR [CompanyID],
	CONSTRAINT [DF__PE_Compan__Clien__0B91BA14] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_Compan__Statu__0C85DE4D] DEFAULT (0) FOR [StatusInField],
	CONSTRAINT [DF__PE_Compan__Compa__0D7A0286] DEFAULT (0) FOR [CompanySize],
	CONSTRAINT [DF__PE_Compan__Manag__0E6E26BF] DEFAULT (0) FOR [ManagementForms]
GO

 CREATE  INDEX [ClientID] ON [dbo].[PE_Company]([ClientID]) ON [PRIMARY]
GO

 CREATE  INDEX [CompanyID] ON [dbo].[PE_Company]([CompanyID]) ON [PRIMARY]
GO

 CREATE  INDEX [TaxNum] ON [dbo].[PE_Company]([TaxNum]) ON [PRIMARY]
GO

 CREATE  INDEX [ZipCode] ON [dbo].[PE_Company]([ZipCode]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_ComplainItem] ADD 
	CONSTRAINT [DF__PE_Compla__Clien__10566F31] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_Compla__Conta__114A936A] DEFAULT (0) FOR [ContacterID],
	CONSTRAINT [DF__PE_Compla__Compl__123EB7A3] DEFAULT (0) FOR [ComplainType],
	CONSTRAINT [DF__PE_Compla__Compl__1332DBDC] DEFAULT (0) FOR [ComplainMode],
	CONSTRAINT [DF__PE_Compla__Magni__14270015] DEFAULT (0) FOR [MagnitudeOfExigence],
	CONSTRAINT [DF__PE_Compla__Confi__151B244E] DEFAULT (0) FOR [ConfirmScore],
	CONSTRAINT [DF__PE_Compla__Statu__160F4887] DEFAULT (0) FOR [Status]
GO

 CREATE  INDEX [ContacterID] ON [dbo].[PE_ComplainItem]([ContacterID]) ON [PRIMARY]
GO

 CREATE  INDEX [ItemID] ON [dbo].[PE_ComplainItem]([ItemID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_ComplainItem]([ClientID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Config] ADD 
	CONSTRAINT [DF__PE_Config__ShowS__17F790F9] DEFAULT (0) FOR [ShowSiteChannel],
	CONSTRAINT [DF__PE_Config__ShowA__18EBB532] DEFAULT (0) FOR [ShowAdminLogin],
	CONSTRAINT [DF__PE_Config__Enabl__19DFD96B] DEFAULT (0) FOR [EnableSaveRemote],
	CONSTRAINT [DF__PE_Config__Enabl__1AD3FDA4] DEFAULT (0) FOR [EnableLinkReg],
	CONSTRAINT [DF__PE_Config__Enabl__1BC821DD] DEFAULT (0) FOR [EnableCountFriendSiteHits],
	CONSTRAINT [DF__PE_Config__Enabl__1CBC4616] DEFAULT (0) FOR [EnableSoftKey],
	CONSTRAINT [DF__PE_Config__Annou__1DB06A4F] DEFAULT (0) FOR [AnnounceCookieTime],
	CONSTRAINT [DF__PE_Config__FileE__1EA48E88] DEFAULT (0) FOR [FileExt_SiteIndex],
	CONSTRAINT [DF__PE_Config__FileE__1F98B2C1] DEFAULT (0) FOR [FileExt_SiteSpecial],
	CONSTRAINT [DF__PE_Config__SiteU__208CD6FA] DEFAULT (0) FOR [SiteUrlType],
	CONSTRAINT [DF__PE_Config__LockI__2180FB33] DEFAULT (0) FOR [LockIPType],
	CONSTRAINT [DF__PE_Config__Enabl__22751F6C] DEFAULT (0) FOR [EnableUserReg],
	CONSTRAINT [DF__PE_Config__Email__236943A5] DEFAULT (0) FOR [EmailCheckReg],
	CONSTRAINT [DF__PE_Config__Admin__245D67DE] DEFAULT (0) FOR [AdminCheckReg],
	CONSTRAINT [DF__PE_Config__Enabl__25518C17] DEFAULT (0) FOR [EnableMultiRegPerEmail],
	CONSTRAINT [DF__PE_Config__UserN__2645B050] DEFAULT (0) FOR [UserNameLimit],
	CONSTRAINT [DF__PE_Config__UserN__2739D489] DEFAULT (0) FOR [UserNameMax],
	CONSTRAINT [DF__PE_Config__Prese__282DF8C2] DEFAULT (0) FOR [PresentExp],
	CONSTRAINT [DF__PE_Config__Prese__29221CFB] DEFAULT (0) FOR [PresentMoney],
	CONSTRAINT [DF__PE_Config__Prese__2A164134] DEFAULT (0) FOR [PresentPoint],
	CONSTRAINT [DF__PE_Config__Prese__2B0A656D] DEFAULT (0) FOR [PresentValidNum],
	CONSTRAINT [DF__PE_Config__Prese__2BFE89A6] DEFAULT (0) FOR [PresentValidUnit],
	CONSTRAINT [DF__PE_Config__Money__2CF2ADDF] DEFAULT (0) FOR [MoneyExchangePoint],
	CONSTRAINT [DF__PE_Config__Money__2DE6D218] DEFAULT (0) FOR [MoneyExchangeValidDay],
	CONSTRAINT [DF__PE_Config__UserE__2EDAF651] DEFAULT (0) FOR [UserExpExchangePoint],
	CONSTRAINT [DF__PE_Config__UserE__2FCF1A8A] DEFAULT (0) FOR [UserExpExchangeValidDay],
	CONSTRAINT [DF__PE_Config__Prese__30C33EC3] DEFAULT (0) FOR [PresentExpPerLogin],
	CONSTRAINT [DF__PE_Config__Prese__31B762FC] DEFAULT (0) FOR [PresentExpPerElite],
	CONSTRAINT [DF__PE_Config__MailO__32AB8735] DEFAULT (0) FOR [MailObject],
	CONSTRAINT [DF__PE_Config__Photo__339FAB6E] DEFAULT (0) FOR [PhotoObject],
	CONSTRAINT [DF__PE_Config__Thumb__3493CFA7] DEFAULT (0) FOR [Thumb_DefaultWidth],
	CONSTRAINT [DF__PE_Config__Thumb__3587F3E0] DEFAULT (0) FOR [Thumb_DefaultHeight],
	CONSTRAINT [DF__PE_Config__Thumb__367C1819] DEFAULT (0) FOR [Thumb_Arithmetic],
	CONSTRAINT [DF__PE_Config__Water__37703C52] DEFAULT (0) FOR [Watermark_Type],
	CONSTRAINT [DF__PE_Config__Water__3864608B] DEFAULT (0) FOR [Watermark_Text_FontSize],
	CONSTRAINT [DF__PE_Config__Water__395884C4] DEFAULT (0) FOR [Watermark_Text_Bold],
	CONSTRAINT [DF__PE_Config__Water__3A4CA8FD] DEFAULT (0) FOR [Watermark_Images_Transparence],
	CONSTRAINT [DF__PE_Config__Water__3B40CD36] DEFAULT (0) FOR [Watermark_Position_X],
	CONSTRAINT [DF__PE_Config__Water__3C34F16F] DEFAULT (0) FOR [Watermark_Position_Y],
	CONSTRAINT [DF__PE_Config__Water__3D2915A8] DEFAULT (0) FOR [Watermark_Position],
	CONSTRAINT [DF__PE_Config__Searc__3E1D39E1] DEFAULT (0) FOR [SearchInterval],
	CONSTRAINT [DF__PE_Config__Searc__3F115E1A] DEFAULT (0) FOR [SearchResultNum],
	CONSTRAINT [DF__PE_Config__MaxPe__40058253] DEFAULT (0) FOR [MaxPerPage_SearchResult],
	CONSTRAINT [DF__PE_Config__Searc__40F9A68C] DEFAULT (0) FOR [SearchContent],
	CONSTRAINT [DF__PE_Config__Enabl__41EDCAC5] DEFAULT (0) FOR [EnableGuestBuy],
	CONSTRAINT [DF__PE_Config__Inclu__42E1EEFE] DEFAULT (0) FOR [IncludeTax],
	CONSTRAINT [DF__PE_Config__TaxRa__43D61337] DEFAULT (0) FOR [TaxRate],
	CONSTRAINT [DF__PE_Config__PayOn__44CA3770] DEFAULT (0) FOR [PayOnlineProvider],
	CONSTRAINT [DF__PE_Config__PayOn__45BE5BA9] DEFAULT (0) FOR [PayOnlineRate],
	CONSTRAINT [DF__PE_Config__PayOn__46B27FE2] DEFAULT (0) FOR [PayOnlinePlusPoundage],
	CONSTRAINT [DF__PE_Config__Guest__47A6A41B] DEFAULT (0) FOR [GuestBook_EnableVisitor],
	CONSTRAINT [DF__PE_Config__Guest__489AC854] DEFAULT (0) FOR [GuestBookCheck],
	CONSTRAINT [DF__PE_Config__Guest__498EEC8D] DEFAULT (0) FOR [GuestBook_EnableManageRubbish],
	CONSTRAINT [DF__PE_Config__Guest__4A8310C6] DEFAULT (0) FOR [GuestBook_ShowIP],
	CONSTRAINT [DF__PE_Config__Guest__4B7734FF] DEFAULT (0) FOR [GuestBook_IsAssignSort],
	CONSTRAINT [DF__PE_Config__Enabl__4C6B5938] DEFAULT (0) FOR [EnableRss],
	CONSTRAINT [DF__PE_Config__RssCo__4D5F7D71] DEFAULT (0) FOR [RssCodeType],
	CONSTRAINT [DF__PE_Config__Enabl__4E53A1AA] DEFAULT (0) FOR [EnableWap],
	CONSTRAINT [DF__PE_Config__Enabl__4F47C5E3] DEFAULT (0) FOR [EnableWapPl],
	CONSTRAINT [DF__PE_Config__ShowW__503BEA1C] DEFAULT (0) FOR [ShowWapAppendix],
	CONSTRAINT [DF__PE_Config__ShowW__51300E55] DEFAULT (0) FOR [ShowWapShop],
	CONSTRAINT [DF__PE_Config__ShowW__5224328E] DEFAULT (0) FOR [ShowWapManage],
	CONSTRAINT [DF__PE_Config__Datab__531856C7] DEFAULT (0) FOR [DatabaseVersion],
	CONSTRAINT [DF__PE_Config__Timin__540C7B00] DEFAULT (0) FOR [Timing_SetDate],
	CONSTRAINT [DF__PE_Config__Timin__55009F39] DEFAULT (0) FOR [Timing_SetDay],
	CONSTRAINT [DF__PE_Config__Timin__55F4C372] DEFAULT (0) FOR [Timing_SetWeekday],
	CONSTRAINT [DF__PE_Config__SendM__07F6335A] DEFAULT (0) FOR [SendMessageToAdminWhenOrder],
	CONSTRAINT [DF__PE_Config__SendM__08EA5793] DEFAULT (0) FOR [SendMessageToMemberWhenPaySuccess]
GO

ALTER TABLE [dbo].[PE_ConsumeLog] ADD 
	CONSTRAINT [DF__PE_Consum__InfoI__57DD0BE4] DEFAULT (0) FOR [InfoID],
	CONSTRAINT [DF__PE_Consum__Point__58D1301D] DEFAULT (0) FOR [Point],
	CONSTRAINT [DF__PE_Consum__LogTi__59C55456] DEFAULT (getdate()) FOR [LogTime],
	CONSTRAINT [DF__PE_Consum__Times__5AB9788F] DEFAULT (0) FOR [Times],
	CONSTRAINT [DF__PE_Consum__Incom__5BAD9CC8] DEFAULT (0) FOR [Income_PayOut]
GO

 CREATE  INDEX [Income_PayOut] ON [dbo].[PE_ConsumeLog]([Income_PayOut]) ON [PRIMARY]
GO

 CREATE  INDEX [InfoID] ON [dbo].[PE_ConsumeLog]([InfoID]) ON [PRIMARY]
GO

 CREATE  INDEX [LogTime] ON [dbo].[PE_ConsumeLog]([LogTime]) ON [PRIMARY]
GO

 CREATE  INDEX [ModuleType] ON [dbo].[PE_ConsumeLog]([ModuleType]) ON [PRIMARY]
GO

 CREATE  INDEX [UserName] ON [dbo].[PE_ConsumeLog]([UserName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Contacter] ADD 
	CONSTRAINT [DF__PE_Contac__Conta__5D95E53A] DEFAULT (0) FOR [ContacterID],
	CONSTRAINT [DF__PE_Contac__Clien__5E8A0973] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_Contac__Paren__5F7E2DAC] DEFAULT (0) FOR [ParentID],
	CONSTRAINT [DF__PE_Contac__Educa__607251E5] DEFAULT (0) FOR [Education]
GO

 CREATE  INDEX [ClientID] ON [dbo].[PE_Contacter]([ClientID]) ON [PRIMARY]
GO

 CREATE  INDEX [ContacterID] ON [dbo].[PE_Contacter]([ContacterID]) ON [PRIMARY]
GO

 CREATE  INDEX [IDCard] ON [dbo].[PE_Contacter]([IDCard]) ON [PRIMARY]
GO

 CREATE  INDEX [ParentID] ON [dbo].[PE_Contacter]([ParentID]) ON [PRIMARY]
GO

 CREATE  INDEX [ZipCode] ON [dbo].[PE_Contacter]([ZipCode]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_CopyFrom] ADD 
	CONSTRAINT [DF__PE_CopyFr__Chann__625A9A57] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_CopyFrom__QQ__634EBE90] DEFAULT (0) FOR [QQ],
	CONSTRAINT [DF__PE_CopyFr__Sourc__6442E2C9] DEFAULT (0) FOR [SourceType],
	CONSTRAINT [DF__PE_CopyFr__Passe__65370702] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_CopyFr__onTop__662B2B3B] DEFAULT (0) FOR [onTop],
	CONSTRAINT [DF__PE_CopyFr__IsEli__671F4F74] DEFAULT (0) FOR [IsElite],
	CONSTRAINT [DF__PE_CopyFro__Hits__681373AD] DEFAULT (0) FOR [Hits]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_CopyFrom]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ZipCode] ON [dbo].[PE_CopyFrom]([ZipCode]) ON [PRIMARY]
GO

 CREATE  INDEX [CountryID] ON [dbo].[PE_Country]([CountryID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_DeliverCharge] ADD 
	CONSTRAINT [DF__PE_Delive__Deliv__6AEFE058] DEFAULT (0) FOR [DeliverTypeID],
	CONSTRAINT [DF__PE_Delive__AreaT__6BE40491] DEFAULT (0) FOR [AreaType],
	CONSTRAINT [DF__PE_Delive__Charg__6CD828CA] DEFAULT (0) FOR [Charge_Min],
	CONSTRAINT [DF__PE_Delive__Weigh__6DCC4D03] DEFAULT (0) FOR [Weight_Min],
	CONSTRAINT [DF__PE_Delive__Charg__6EC0713C] DEFAULT (0) FOR [ChargePerUnit],
	CONSTRAINT [DF__PE_Delive__Weigh__6FB49575] DEFAULT (0) FOR [WeightPerUnit],
	CONSTRAINT [DF__PE_Delive__Charg__70A8B9AE] DEFAULT (0) FOR [Charge_Max]
GO

 CREATE  INDEX [AreaType] ON [dbo].[PE_DeliverCharge]([AreaType]) ON [PRIMARY]
GO

 CREATE  INDEX [DeliverTypeID] ON [dbo].[PE_DeliverCharge]([DeliverTypeID]) ON [PRIMARY]
GO

 CREATE  INDEX [ID] ON [dbo].[PE_DeliverCharge]([ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_DeliverItem] ADD 
	CONSTRAINT [DF__PE_Delive__Order__72910220] DEFAULT (0) FOR [OrderFormID],
	CONSTRAINT [DF__PE_Delive__Deliv__73852659] DEFAULT (0) FOR [DeliverDirection],
	CONSTRAINT [DF__PE_Delive__Recei__74794A92] DEFAULT (0) FOR [Received]
GO

 CREATE  INDEX [DeliverID] ON [dbo].[PE_DeliverItem]([DeliverID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderFormID] ON [dbo].[PE_DeliverItem]([OrderFormID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_DeliverType] ADD 
	CONSTRAINT [DF__PE_Delive__TypeI__76619304] DEFAULT (0) FOR [TypeID],
	CONSTRAINT [DF__PE_Delive__Charg__7755B73D] DEFAULT (0) FOR [ChargeType],
	CONSTRAINT [DF__PE_Delive__IsDef__7849DB76] DEFAULT (0) FOR [IsDefault],
	CONSTRAINT [DF__PE_Delive__IsDis__793DFFAF] DEFAULT (0) FOR [IsDisabled],
	CONSTRAINT [DF__PE_Delive__Order__7A3223E8] DEFAULT (0) FOR [OrderID],
	CONSTRAINT [DF__PE_Delive__Relea__7B264821] DEFAULT (0) FOR [ReleaseType],
	CONSTRAINT [DF__PE_Delive__MinMo__7C1A6C5A] DEFAULT (0) FOR [MinMoney1],
	CONSTRAINT [DF__PE_Delive__Relea__7D0E9093] DEFAULT (0) FOR [ReleaseCharge],
	CONSTRAINT [DF__PE_Delive__MinMo__7E02B4CC] DEFAULT (0) FOR [MinMoney2],
	CONSTRAINT [DF__PE_Delive__MaxCh__7EF6D905] DEFAULT (0) FOR [MaxCharge],
	CONSTRAINT [DF__PE_Delive__MinMo__7FEAFD3E] DEFAULT (0) FOR [MinMoney3],
	CONSTRAINT [DF__PE_Delive__Charg__00DF2177] DEFAULT (0) FOR [Charge_Min],
	CONSTRAINT [DF__PE_Delive__Charg__01D345B0] DEFAULT (0) FOR [Charge_Max],
	CONSTRAINT [DF__PE_Delive__Charg__02C769E9] DEFAULT (0) FOR [Charge_Percent]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_DeliverType]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [TypeID] ON [dbo].[PE_DeliverType]([TypeID]) ON [PRIMARY]
GO

 CREATE  INDEX [FieldID] ON [dbo].[PE_Dictionary]([FieldID]) ON [PRIMARY]
GO

 CREATE  INDEX [FieldName] ON [dbo].[PE_Dictionary]([FieldName]) ON [PRIMARY]
GO

 CREATE  INDEX [TableName] ON [dbo].[PE_Dictionary]([TableName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_DownError] ADD 
	CONSTRAINT [DF__PE_DownEr__Error__05A3D694] DEFAULT (0) FOR [ErrorID],
	CONSTRAINT [DF__PE_DownEr__Chann__0697FACD] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_DownEr__InfoI__078C1F06] DEFAULT (0) FOR [InfoID],
	CONSTRAINT [DF__PE_DownEr__UrlID__0880433F] DEFAULT (0) FOR [UrlID],
	CONSTRAINT [DF__PE_DownEr__Error__09746778] DEFAULT (0) FOR [ErrorTimes]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_DownError]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [InfoID] ON [dbo].[PE_DownError]([InfoID]) ON [PRIMARY]
GO

 CREATE  INDEX [UrlID] ON [dbo].[PE_DownError]([UrlID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_DownServer] ADD 
	CONSTRAINT [DF__PE_DownSe__Chann__0B5CAFEA] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_DownSe__Order__0C50D423] DEFAULT (0) FOR [OrderID],
	CONSTRAINT [DF__PE_DownSe__ShowT__0D44F85C] DEFAULT (0) FOR [ShowType],
	CONSTRAINT [DF__PE_DownSe__InfoP__0E391C95] DEFAULT (0) FOR [InfoPurview],
	CONSTRAINT [DF__PE_DownSe__Charg__0F2D40CE] DEFAULT (0) FOR [ChargeType],
	CONSTRAINT [DF__PE_DownSe__Pitch__10216507] DEFAULT (0) FOR [PitchTime],
	CONSTRAINT [DF__PE_DownSe__ReadT__11158940] DEFAULT (0) FOR [ReadTimes],
	CONSTRAINT [DF__PE_DownSe__Divid__1209AD79] DEFAULT (0) FOR [DividePercent]
GO

 CREATE  INDEX [arrGroupID] ON [dbo].[PE_DownServer]([arrGroupID]) ON [PRIMARY]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_DownServer]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_DownServer]([OrderID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Equipment] ADD 
	CONSTRAINT [DF__PE_Equipm__Class__13F1F5EB] DEFAULT (0) FOR [ClassroomID],
	CONSTRAINT [DF__PE_Equipm__Equip__14E61A24] DEFAULT ('无') FOR [EquipmentIntroduce],
	CONSTRAINT [DF__PE_Equipm__Equip__15DA3E5D] DEFAULT (0) FOR [EquipmentSituation],
	CONSTRAINT [DF__PE_Equipm__Expla__16CE6296] DEFAULT ('无') FOR [Explain]
GO

 CREATE  INDEX [ClassroomID] ON [dbo].[PE_Equipment]([ClassroomID]) ON [PRIMARY]
GO

 CREATE  INDEX [id] ON [dbo].[PE_Equipment]([ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Favorite] ADD 
	CONSTRAINT [DF__PE_Favori__UserI__18B6AB08] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_Favori__Chann__19AACF41] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Favori__InfoI__1A9EF37A] DEFAULT (0) FOR [InfoID]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Favorite]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [InfoID] ON [dbo].[PE_Favorite]([InfoID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_Favorite]([UserID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Field] ADD 
	CONSTRAINT [DF__PE_Field__Channe__1C873BEC] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Field__FieldT__1D7B6025] DEFAULT (0) FOR [FieldType],
	CONSTRAINT [DF__PE_Field__Enable__1E6F845E] DEFAULT (1) FOR [EnableNull],
	CONSTRAINT [DF__PE_Field__ShowOn__1F63A897] DEFAULT (0) FOR [ShowOnForm],
	CONSTRAINT [DF__PE_Field__FieldL__2057CCD0] DEFAULT (0) FOR [FieldLevel]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Field]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [FieldID] ON [dbo].[PE_Field]([FieldID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Filters] ADD 
	CONSTRAINT [DF__PE_Filter__ItemI__22401542] DEFAULT (0) FOR [ItemID],
	CONSTRAINT [DF__PE_Filter__Filte__2334397B] DEFAULT (2) FOR [FilterObject],
	CONSTRAINT [DF__PE_Filter__Filte__24285DB4] DEFAULT (1) FOR [FilterType],
	CONSTRAINT [DF__PE_Filters__Flag__251C81ED] DEFAULT (0) FOR [Flag]
GO

 CREATE  INDEX [FilterID] ON [dbo].[PE_Filters]([FilterID]) ON [PRIMARY]
GO

 CREATE  INDEX [ItemID] ON [dbo].[PE_Filters]([ItemID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Friend] ADD 
	CONSTRAINT [DF__PE_Friend__Group__2704CA5F] DEFAULT (0) FOR [GroupID]
GO

 CREATE  INDEX [GroupID] ON [dbo].[PE_Friend]([GroupID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_Friend]([AddTime]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_FriendSite] ADD 
	CONSTRAINT [DF__PE_Friend__KindI__28ED12D1] DEFAULT (0) FOR [KindID],
	CONSTRAINT [DF__PE_Friend__Speci__29E1370A] DEFAULT (0) FOR [SpecialID],
	CONSTRAINT [DF__PE_Friend__Elite__2AD55B43] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_Friend__Passe__2BC97F7C] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_Friend__Order__2CBDA3B5] DEFAULT (0) FOR [OrderID]
GO

 CREATE  INDEX [Hits] ON [dbo].[PE_FriendSite]([Hits]) ON [PRIMARY]
GO

 CREATE  INDEX [IsGood] ON [dbo].[PE_FriendSite]([Elite]) ON [PRIMARY]
GO

 CREATE  INDEX [IsOK] ON [dbo].[PE_FriendSite]([Passed]) ON [PRIMARY]
GO

 CREATE  INDEX [KindID] ON [dbo].[PE_FriendSite]([KindID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_FriendSite]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [SpecialID] ON [dbo].[PE_FriendSite]([SpecialID]) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_FriendSite]([UpdateTime]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_FsKind] ADD 
	CONSTRAINT [DF__PE_FsKind__KindT__2EA5EC27] DEFAULT (0) FOR [KindType]
GO

ALTER TABLE [dbo].[PE_GuestBook] ADD 
	CONSTRAINT [DF__PE_GuestB__Guest__308E3499] DEFAULT (0) FOR [GuestID],
	CONSTRAINT [DF__PE_GuestB__KindI__318258D2] DEFAULT (0) FOR [KindID],
	CONSTRAINT [DF__PE_GuestB__Topic__32767D0B] DEFAULT (0) FOR [TopicID],
	CONSTRAINT [DF__PE_GuestBo__Hits__336AA144] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_GuestB__Reply__345EC57D] DEFAULT (0) FOR [ReplyNum],
	CONSTRAINT [DF__PE_GuestB__Quint__3552E9B6] DEFAULT (0) FOR [Quintessence],
	CONSTRAINT [DF__PE_GuestB__Guest__36470DEF] DEFAULT (0) FOR [GuestIsPassed],
	CONSTRAINT [DF__PE_GuestB__Guest__373B3228] DEFAULT (0) FOR [GuestIsPrivate],
	CONSTRAINT [DF__PE_GuestB__OnTop__382F5661] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_GuestB__Reply__39237A9A] DEFAULT (0) FOR [ReplyIsPrivate],
	CONSTRAINT [DF__PE_GuestB__Guest__3A179ED3] DEFAULT (0) FOR [GuestContentLength]
GO

 CREATE  INDEX [GuestIsPassed] ON [dbo].[PE_GuestBook]([GuestIsPassed]) ON [PRIMARY]
GO

 CREATE  INDEX [GuestMaxId] ON [dbo].[PE_GuestBook]([GuestMaxID]) ON [PRIMARY]
GO

 CREATE  INDEX [GuestType] ON [dbo].[PE_GuestBook]([GuestType]) ON [PRIMARY]
GO

 CREATE  INDEX [KindID] ON [dbo].[PE_GuestBook]([KindID]) ON [PRIMARY]
GO

 CREATE  INDEX [OnTop] ON [dbo].[PE_GuestBook]([OnTop]) ON [PRIMARY]
GO

 CREATE  INDEX [Quintessence] ON [dbo].[PE_GuestBook]([Quintessence]) ON [PRIMARY]
GO

 CREATE  INDEX [ReplyNum] ON [dbo].[PE_GuestBook]([ReplyNum]) ON [PRIMARY]
GO

 CREATE  INDEX [TopicID] ON [dbo].[PE_GuestBook]([TopicID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_GuestKind] ADD 
	CONSTRAINT [DF__PE_GuestK__Order__3BFFE745] DEFAULT (0) FOR [OrderID]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_GuestKind]([OrderID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_HistrolyNews] ADD 
	CONSTRAINT [DF__PE_Histro__ItemI__3DE82FB7] DEFAULT (0) FOR [ItemID],
	CONSTRAINT [DF__PE_Histro__Chann__3EDC53F0] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Histro__Class__3FD07829] DEFAULT (0) FOR [ClassID],
	CONSTRAINT [DF__PE_Histro__Artic__40C49C62] DEFAULT (0) FOR [ArticleID],
	CONSTRAINT [DF__PE_Histro__Resul__41B8C09B] DEFAULT (0) FOR [Result]
GO

 CREATE  UNIQUE  INDEX [ID] ON [dbo].[PE_HistrolyNews]([HistrolyNewsID]) ON [PRIMARY]
GO

 CREATE  INDEX [ArticleID] ON [dbo].[PE_HistrolyNews]([ArticleID]) ON [PRIMARY]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_HistrolyNews]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_HistrolyNews]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [ItemID1] ON [dbo].[PE_HistrolyNews]([ItemID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_HouseArea] ADD 
	CONSTRAINT [DF__PE_HouseA__AreaI__43A1090D] DEFAULT (0) FOR [AreaID]
GO

 CREATE  INDEX [AreaID] ON [dbo].[PE_HouseArea]([AreaID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_HouseCS] ADD 
	CONSTRAINT [DF__PE_HouseC__House__4959E263] DEFAULT (0) FOR [HouseID],
	CONSTRAINT [DF__PE_HouseC__Class__4A4E069C] DEFAULT (1) FOR [ClassID],
	CONSTRAINT [DF__PE_HouseC__Chann__4B422AD5] DEFAULT (998) FOR [ChannelID],
	CONSTRAINT [DF__PE_HouseC__House__4C364F0E] DEFAULT (0) FOR [HouseMianJi],
	CONSTRAINT [DF__PE_HouseC__Total__4D2A7347] DEFAULT (0) FOR [TotalPrice],
	CONSTRAINT [DF__PE_HouseC__Other__4E1E9780] DEFAULT (0) FOR [OtherPrice],
	CONSTRAINT [DF__PE_HouseC__Updat__4F12BBB9] DEFAULT (getdate()) FOR [UpdateTime],
	CONSTRAINT [DF__PE_HouseCS__Hits__5006DFF2] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_HouseC__ViewA__50FB042B] DEFAULT (0) FOR [ViewAll],
	CONSTRAINT [DF__PE_HouseCS__Hot__51EF2864] DEFAULT (0) FOR [Hot],
	CONSTRAINT [DF__PE_HouseC__OnTop__52E34C9D] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_HouseC__Elite__53D770D6] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_HouseC__Passe__54CB950F] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_HouseC__Delet__55BFB948] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_HouseC__Comme__56B3DD81] DEFAULT (0) FOR [CommendClassDays]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_HouseCS]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_HouseCS]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Elite] ON [dbo].[PE_HouseCS]([Elite] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [fw_mianji] ON [dbo].[PE_HouseCS]([HouseMianJi]) ON [PRIMARY]
GO

 CREATE  INDEX [Hits] ON [dbo].[PE_HouseCS]([Hits] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [Key] ON [dbo].[PE_HouseCS]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [OnTop] ON [dbo].[PE_HouseCS]([OnTop] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [Passed] ON [dbo].[PE_HouseCS]([Passed] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_HouseCS]([UpdateTime] DESC ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_HouseCZ] ADD 
	CONSTRAINT [DF__PE_HouseC__House__589C25F3] DEFAULT (0) FOR [HouseID],
	CONSTRAINT [DF__PE_HouseC__Class__59904A2C] DEFAULT (2) FOR [ClassID],
	CONSTRAINT [DF__PE_HouseC__Chann__5A846E65] DEFAULT (998) FOR [ChannelID],
	CONSTRAINT [DF__PE_HouseC__House__5B78929E] DEFAULT (0) FOR [HouseMianJi],
	CONSTRAINT [DF__PE_HouseC__House__5C6CB6D7] DEFAULT ('未知') FOR [HouseZhuangXiu],
	CONSTRAINT [DF__PE_HouseC__House__5D60DB10] DEFAULT (0) FOR [HouseZuJin],
	CONSTRAINT [DF__PE_HouseC__Updat__5E54FF49] DEFAULT (getdate()) FOR [UpdateTime],
	CONSTRAINT [DF__PE_HouseCZ__Hits__5F492382] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_HouseC__ViewA__603D47BB] DEFAULT (0) FOR [ViewAll],
	CONSTRAINT [DF__PE_HouseCZ__Hot__61316BF4] DEFAULT (0) FOR [Hot],
	CONSTRAINT [DF__PE_HouseC__OnTop__6225902D] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_HouseC__Elite__6319B466] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_HouseC__Passe__640DD89F] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_HouseC__Delet__6501FCD8] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_HouseC__Comme__65F62111] DEFAULT (0) FOR [CommendClassDays]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_HouseCZ]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_HouseCZ]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Elite] ON [dbo].[PE_HouseCZ]([Elite] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [fw_mianji] ON [dbo].[PE_HouseCZ]([HouseMianJi]) ON [PRIMARY]
GO

 CREATE  INDEX [Hits] ON [dbo].[PE_HouseCZ]([Hits] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [Key] ON [dbo].[PE_HouseCZ]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [OnTop] ON [dbo].[PE_HouseCZ]([OnTop] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [Passed] ON [dbo].[PE_HouseCZ]([Passed] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_HouseCZ]([UpdateTime] DESC ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_HouseConfig] ADD 
	CONSTRAINT [DF__PE_HouseC__Relea__4589517F] DEFAULT (0) FOR [ReleaseDeductPoint],
	CONSTRAINT [DF__PE_HouseC__Comme__467D75B8] DEFAULT (0) FOR [CommendClassPoint],
	CONSTRAINT [DF__PE_HouseC__Upgra__477199F1] DEFAULT (0) FOR [UpgradePoint]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_HouseConfig]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinID] ON [dbo].[PE_HouseConfig]([SkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_HouseConfig]([TemplateID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_HouseHZ] ADD 
	CONSTRAINT [DF__PE_HouseH__House__67DE6983] DEFAULT (0) FOR [HouseID],
	CONSTRAINT [DF__PE_HouseH__Class__68D28DBC] DEFAULT (5) FOR [ClassID],
	CONSTRAINT [DF__PE_HouseH__Chann__69C6B1F5] DEFAULT (998) FOR [ChannelID],
	CONSTRAINT [DF__PE_HouseH__House__6ABAD62E] DEFAULT (0) FOR [HouseMianJi],
	CONSTRAINT [DF__PE_HouseH__House__6BAEFA67] DEFAULT (0) FOR [HouseMianJi1],
	CONSTRAINT [DF__PE_HouseH__House__6CA31EA0] DEFAULT (0) FOR [HouseMianJi2],
	CONSTRAINT [DF__PE_HouseH__House__6D9742D9] DEFAULT (0) FOR [HouseZuJin],
	CONSTRAINT [DF__PE_HouseH__Updat__6E8B6712] DEFAULT (getdate()) FOR [UpdateTime],
	CONSTRAINT [DF__PE_HouseH__ViewA__6F7F8B4B] DEFAULT (0) FOR [ViewAll],
	CONSTRAINT [DF__PE_HouseHZ__Hits__7073AF84] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_HouseHZ__Hot__7167D3BD] DEFAULT (0) FOR [Hot],
	CONSTRAINT [DF__PE_HouseH__OnTop__725BF7F6] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_HouseH__Elite__73501C2F] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_HouseH__Passe__74444068] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_HouseH__Delet__753864A1] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_HouseH__Comme__762C88DA] DEFAULT (0) FOR [CommendClassDays]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_HouseHZ]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_HouseHZ]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Elite] ON [dbo].[PE_HouseHZ]([Elite] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [fw_mianji] ON [dbo].[PE_HouseHZ]([HouseMianJi]) ON [PRIMARY]
GO

 CREATE  INDEX [Hits] ON [dbo].[PE_HouseHZ]([Hits] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [HouseMianJi] ON [dbo].[PE_HouseHZ]([HouseMianJi1]) ON [PRIMARY]
GO

 CREATE  INDEX [HouseMianJi1] ON [dbo].[PE_HouseHZ]([HouseMianJi2]) ON [PRIMARY]
GO

 CREATE  INDEX [Key] ON [dbo].[PE_HouseHZ]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [OnTop] ON [dbo].[PE_HouseHZ]([OnTop] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [Passed] ON [dbo].[PE_HouseHZ]([Passed] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_HouseHZ]([UpdateTime] DESC ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_HouseQG] ADD 
	CONSTRAINT [DF__PE_HouseQ__House__7814D14C] DEFAULT (0) FOR [HouseID],
	CONSTRAINT [DF__PE_HouseQ__Class__7908F585] DEFAULT (3) FOR [ClassID],
	CONSTRAINT [DF__PE_HouseQ__Chann__79FD19BE] DEFAULT (998) FOR [ChannelID],
	CONSTRAINT [DF__PE_HouseQ__House__7AF13DF7] DEFAULT (0) FOR [HouseMianJi1],
	CONSTRAINT [DF__PE_HouseQ__House__7BE56230] DEFAULT (0) FOR [HouseMianJi2],
	CONSTRAINT [DF__PE_HouseQ__House__7CD98669] DEFAULT (0) FOR [HousePrice1],
	CONSTRAINT [DF__PE_HouseQ__House__7DCDAAA2] DEFAULT (0) FOR [HousePrice2],
	CONSTRAINT [DF__PE_HouseQ__Updat__7EC1CEDB] DEFAULT (getdate()) FOR [UpdateTime],
	CONSTRAINT [DF__PE_HouseQ__ViewA__7FB5F314] DEFAULT (0) FOR [ViewAll],
	CONSTRAINT [DF__PE_HouseQG__Hits__00AA174D] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_HouseQG__Hot__019E3B86] DEFAULT (0) FOR [Hot],
	CONSTRAINT [DF__PE_HouseQ__OnTop__02925FBF] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_HouseQ__Elite__038683F8] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_HouseQ__Passe__047AA831] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_HouseQ__Delet__056ECC6A] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_HouseQ__Comme__0662F0A3] DEFAULT (0) FOR [CommendClassDays]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_HouseQG]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_HouseQG]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Elite] ON [dbo].[PE_HouseQG]([Elite] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [fw_mianji] ON [dbo].[PE_HouseQG]([HouseMianJi1]) ON [PRIMARY]
GO

 CREATE  INDEX [Hits] ON [dbo].[PE_HouseQG]([Hits] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [HouseMianJi1] ON [dbo].[PE_HouseQG]([HouseMianJi2]) ON [PRIMARY]
GO

 CREATE  INDEX [Key] ON [dbo].[PE_HouseQG]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [OnTop] ON [dbo].[PE_HouseQG]([OnTop] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [Passed] ON [dbo].[PE_HouseQG]([Passed] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_HouseQG]([UpdateTime] DESC ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_HouseQZ] ADD 
	CONSTRAINT [DF__PE_HouseQ__House__084B3915] DEFAULT (0) FOR [HouseID],
	CONSTRAINT [DF__PE_HouseQ__Class__093F5D4E] DEFAULT (4) FOR [ClassID],
	CONSTRAINT [DF__PE_HouseQ__Chann__0A338187] DEFAULT (998) FOR [ChannelID],
	CONSTRAINT [DF__PE_HouseQ__House__0B27A5C0] DEFAULT (0) FOR [HouseMianJi1],
	CONSTRAINT [DF__PE_HouseQ__House__0C1BC9F9] DEFAULT (0) FOR [HouseMianJi2],
	CONSTRAINT [DF__PE_HouseQ__House__0D0FEE32] DEFAULT (0) FOR [HouseZuJin1],
	CONSTRAINT [DF__PE_HouseQ__House__0E04126B] DEFAULT (0) FOR [HouseZuJin2],
	CONSTRAINT [DF__PE_HouseQ__Updat__0EF836A4] DEFAULT (getdate()) FOR [UpdateTime],
	CONSTRAINT [DF__PE_HouseQ__ViewA__0FEC5ADD] DEFAULT (0) FOR [ViewAll],
	CONSTRAINT [DF__PE_HouseQZ__Hits__10E07F16] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_HouseQZ__Hot__11D4A34F] DEFAULT (0) FOR [Hot],
	CONSTRAINT [DF__PE_HouseQ__OnTop__12C8C788] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_HouseQ__Elite__13BCEBC1] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_HouseQ__Passe__14B10FFA] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_HouseQ__Delet__15A53433] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_HouseQ__Comme__1699586C] DEFAULT (0) FOR [CommendClassDays]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_HouseQZ]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_HouseQZ]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Elite] ON [dbo].[PE_HouseQZ]([Elite] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [fw_mianji] ON [dbo].[PE_HouseQZ]([HouseMianJi1]) ON [PRIMARY]
GO

 CREATE  INDEX [Hits] ON [dbo].[PE_HouseQZ]([Hits] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [HouseMianJi] ON [dbo].[PE_HouseQZ]([HouseMianJi2]) ON [PRIMARY]
GO

 CREATE  INDEX [Key] ON [dbo].[PE_HouseQZ]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [OnTop] ON [dbo].[PE_HouseQZ]([OnTop] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [Passed] ON [dbo].[PE_HouseQZ]([Passed] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_HouseQZ]([UpdateTime] DESC ) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_InfoS] ADD 
	CONSTRAINT [DF__PE_InfoS__ItemID__1881A0DE] DEFAULT (0) FOR [ItemID],
	CONSTRAINT [DF__PE_InfoS__Specia__1975C517] DEFAULT (0) FOR [SpecialID]
GO

 CREATE  INDEX [InfoID] ON [dbo].[PE_InfoS]([InfoID] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [ItemID] ON [dbo].[PE_InfoS]([ItemID] DESC ) ON [PRIMARY]
GO

 CREATE  INDEX [SpecialID] ON [dbo].[PE_InfoS]([SpecialID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_InvoiceItem] ADD 
	CONSTRAINT [DF__PE_Invoic__Clien__1B5E0D89] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_Invoic__Order__1C5231C2] DEFAULT (0) FOR [OrderFormID],
	CONSTRAINT [DF__PE_Invoic__Invoi__1D4655FB] DEFAULT (0) FOR [InvoiceType],
	CONSTRAINT [DF__PE_Invoic__Total__1E3A7A34] DEFAULT (0) FOR [TotalMoney]
GO

 CREATE  INDEX [ClientID] ON [dbo].[PE_InvoiceItem]([ClientID]) ON [PRIMARY]
GO

 CREATE  INDEX [InvoiceNum] ON [dbo].[PE_InvoiceItem]([InvoiceNum]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderFormID] ON [dbo].[PE_InvoiceItem]([OrderFormID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserName] ON [dbo].[PE_InvoiceItem]([UserName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Item] ADD 
	CONSTRAINT [DF__PE_Item__Channel__2022C2A6] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Item__ClassID__2116E6DF] DEFAULT (0) FOR [ClassID],
	CONSTRAINT [DF__PE_Item__LoginTy__220B0B18] DEFAULT (0) FOR [LoginType],
	CONSTRAINT [DF__PE_Item__ListPai__22FF2F51] DEFAULT (0) FOR [ListPaingType],
	CONSTRAINT [DF__PE_Item__ListPai__23F3538A] DEFAULT (0) FOR [ListPaingID1],
	CONSTRAINT [DF__PE_Item__ListPai__24E777C3] DEFAULT (0) FOR [ListPaingID2],
	CONSTRAINT [DF__PE_Item__HttpUrl__25DB9BFC] DEFAULT (0) FOR [HttpUrlType],
	CONSTRAINT [DF__PE_Item__Thumbna__26CFC035] DEFAULT (0) FOR [ThumbnailType],
	CONSTRAINT [DF__PE_Item__AuthorT__27C3E46E] DEFAULT (0) FOR [AuthorType],
	CONSTRAINT [DF__PE_Item__CopyFro__28B808A7] DEFAULT (0) FOR [CopyFromType],
	CONSTRAINT [DF__PE_Item__KeyType__29AC2CE0] DEFAULT (0) FOR [KeyType],
	CONSTRAINT [DF__PE_Item__KeyScat__2AA05119] DEFAULT (2) FOR [KeyScatterNum],
	CONSTRAINT [DF__PE_Item__NewsPai__2B947552] DEFAULT (0) FOR [NewsPaingType],
	CONSTRAINT [DF__PE_Item__Flag__2C88998B] DEFAULT (0) FOR [Flag],
	CONSTRAINT [DF__PE_Item__Paginat__2D7CBDC4] DEFAULT (0) FOR [PaginationType],
	CONSTRAINT [DF__PE_Item__MaxChar__2E70E1FD] DEFAULT (0) FOR [MaxCharPerPage],
	CONSTRAINT [DF__PE_Item__InfoPoi__2F650636] DEFAULT (0) FOR [InfoPoint],
	CONSTRAINT [DF__PE_Item__OnTop__30592A6F] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_Item__Hot__314D4EA8] DEFAULT (0) FOR [Hot],
	CONSTRAINT [DF__PE_Item__Elite__324172E1] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_Item__Hits__3335971A] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_Item__Stars__3429BB53] DEFAULT (0) FOR [Stars],
	CONSTRAINT [DF__PE_Item__UpdateT__351DDF8C] DEFAULT (getdate()) FOR [UpdateTime],
	CONSTRAINT [DF__PE_Item__SkinID__361203C5] DEFAULT (0) FOR [SkinID],
	CONSTRAINT [DF__PE_Item__Templat__370627FE] DEFAULT (0) FOR [TemplateID],
	CONSTRAINT [DF__PE_Item__Script___37FA4C37] DEFAULT (0) FOR [Script_IFRAME],
	CONSTRAINT [DF__PE_Item__Script___38EE7070] DEFAULT (0) FOR [Script_OBJECT],
	CONSTRAINT [DF__PE_Item__Script___39E294A9] DEFAULT (0) FOR [Script_SCRIPT],
	CONSTRAINT [DF__PE_Item__Script___3AD6B8E2] DEFAULT (0) FOR [Script_Div],
	CONSTRAINT [DF__PE_Item__Script___3BCADD1B] DEFAULT (0) FOR [Script_CLASS],
	CONSTRAINT [DF__PE_Item__Script___3CBF0154] DEFAULT (0) FOR [Script_Span],
	CONSTRAINT [DF__PE_Item__Script___3DB3258D] DEFAULT (0) FOR [Script_IMG],
	CONSTRAINT [DF__PE_Item__Script___3EA749C6] DEFAULT (0) FOR [Script_FONT],
	CONSTRAINT [DF__PE_Item__Script___3F9B6DFF] DEFAULT (0) FOR [Script_A],
	CONSTRAINT [DF__PE_Item__Script___408F9238] DEFAULT (0) FOR [Script_HTML],
	CONSTRAINT [DF__PE_Item__SaveFil__4183B671] DEFAULT (0) FOR [SaveFiles],
	CONSTRAINT [DF__PE_Item__AddThum__4277DAAA] DEFAULT (0) FOR [AddThumb],
	CONSTRAINT [DF__PE_Item__AddWate__436BFEE3] DEFAULT (0) FOR [AddWatermark],
	CONSTRAINT [DF__PE_Item__CollecO__4460231C] DEFAULT (0) FOR [CollecOrder],
	CONSTRAINT [DF__PE_Item__Status__45544755] DEFAULT (0) FOR [Status],
	CONSTRAINT [DF__PE_Item__CreateI__46486B8E] DEFAULT (0) FOR [CreateImmediate],
	CONSTRAINT [DF__PE_Item__Include__473C8FC7] DEFAULT (0) FOR [IncludePicYn],
	CONSTRAINT [DF__PE_Item__Default__4830B400] DEFAULT (0) FOR [DefaultPicYn],
	CONSTRAINT [DF__PE_Item__Collect__4924D839] DEFAULT (0) FOR [CollectionType],
	CONSTRAINT [DF__PE_Item__ShowCom__4A18FC72] DEFAULT (0) FOR [ShowCommentLink],
	CONSTRAINT [DF__PE_Item__Script___4B0D20AB] DEFAULT (0) FOR [Script_Table],
	CONSTRAINT [DF__PE_Item__Script___4C0144E4] DEFAULT (0) FOR [Script_Tr],
	CONSTRAINT [DF__PE_Item__Script___4CF5691D] DEFAULT (0) FOR [Script_Td],
	CONSTRAINT [DF__PE_Item__IntroTy__4DE98D56] DEFAULT (0) FOR [IntroType],
	CONSTRAINT [DF__PE_Item__IntroNu__4EDDB18F] DEFAULT (0) FOR [IntroNum],
	CONSTRAINT [DF__PE_Item__IsField__4FD1D5C8] DEFAULT (0) FOR [IsField],
	CONSTRAINT [DF__PE_Item__InfoPur__50C5FA01] DEFAULT (0) FOR [InfoPurview],
	CONSTRAINT [DF__PE_Item__ChargeT__51BA1E3A] DEFAULT (0) FOR [ChargeType],
	CONSTRAINT [DF__PE_Item__PitchTi__52AE4273] DEFAULT (0) FOR [PitchTime],
	CONSTRAINT [DF__PE_Item__ReadTim__53A266AC] DEFAULT (0) FOR [ReadTimes],
	CONSTRAINT [DF__PE_Item__DivideP__54968AE5] DEFAULT (0) FOR [DividePercent],
	CONSTRAINT [DF__PE_Item__SaveFla__558AAF1E] DEFAULT (0) FOR [SaveFlashUrlToFile]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Item]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_Item]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [ID] ON [dbo].[PE_Item]([ItemID]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinID] ON [dbo].[PE_Item]([SkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [SpecialID] ON [dbo].[PE_Item]([SpecialID]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Item]([TemplateID]) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_Item]([UpdateTime]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_JobCategory] ADD 
	CONSTRAINT [DF__PE_JobCat__JobCa__5772F790] DEFAULT (0) FOR [JobCategoryID],
	CONSTRAINT [DF__PE_JobCat__Order__58671BC9] DEFAULT (0) FOR [OrderID]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_JobCategory]([OrderID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_JsFile] ADD 
	CONSTRAINT [DF__PE_JsFile__Conte__5A4F643B] DEFAULT (0) FOR [ContentType]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_JsFile]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ID] ON [dbo].[PE_JsFile]([ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_KeyLink] ADD 
	CONSTRAINT [DF__PE_KeyLin__isUse__5C37ACAD] DEFAULT (1) FOR [isUse],
	CONSTRAINT [DF__PE_KeyLin__LinkT__5D2BD0E6] DEFAULT (0) FOR [LinkType],
	CONSTRAINT [DF__PE_KeyLin__OpenT__5E1FF51F] DEFAULT (0) FOR [OpenType],
	CONSTRAINT [DF__PE_KeyLin__Repla__5F141958] DEFAULT (0) FOR [ReplaceType],
	CONSTRAINT [DF__PE_KeyLin__Prior__60083D91] DEFAULT (1) FOR [Priority]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_KeyLink]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ReplaceNum] ON [dbo].[PE_KeyLink]([ReplaceType]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Label] ADD 
	CONSTRAINT [DF__PE_Label__LabelT__61F08603] DEFAULT (0) FOR [LabelType],
	CONSTRAINT [DF__PE_Label__PageNu__62E4AA3C] DEFAULT (0) FOR [PageNum],
	CONSTRAINT [DF__PE_Label__reFlas__63D8CE75] DEFAULT (0) FOR [reFlashTime],
	CONSTRAINT [DF__PE_Label__Priori__64CCF2AE] DEFAULT (0) FOR [Priority],
	CONSTRAINT [DF__PE_Label__AreaCo__65C116E7] DEFAULT (0) FOR [AreaCollectionID]
GO

 CREATE  INDEX [AreaCollectionID] ON [dbo].[PE_Label]([AreaCollectionID]) ON [PRIMARY]
GO

 CREATE  INDEX [LabelID] ON [dbo].[PE_Label]([LabelID]) ON [PRIMARY]
GO

 CREATE  INDEX [PageNum] ON [dbo].[PE_Label]([PageNum]) ON [PRIMARY]
GO

 CREATE  INDEX [PageNum1] ON [dbo].[PE_Label]([reFlashTime]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Log] ADD 
	CONSTRAINT [DF__PE_Log__LogType__67A95F59] DEFAULT (0) FOR [LogType],
	CONSTRAINT [DF__PE_Log__ChannelI__689D8392] DEFAULT (0) FOR [ChannelID]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Log]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [LogID] ON [dbo].[PE_Log]([LogID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Message] ADD 
	CONSTRAINT [DF__PE_Message__flag__6A85CC04] DEFAULT (0) FOR [flag],
	CONSTRAINT [DF__PE_Messag__sendt__6B79F03D] DEFAULT (getdate()) FOR [sendtime],
	CONSTRAINT [DF__PE_Message__delR__6C6E1476] DEFAULT (0) FOR [delR],
	CONSTRAINT [DF__PE_Message__delS__6D6238AF] DEFAULT (0) FOR [delS],
	CONSTRAINT [DF__PE_Messag__isSen__6E565CE8] DEFAULT (0) FOR [isSend]
GO

 CREATE  INDEX [id] ON [dbo].[PE_Message]([id]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_NewKeys] ADD 
	CONSTRAINT [DF__PE_NewKey__Chann__703EA55A] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_NewKeys__Hits__7132C993] DEFAULT (0) FOR [Hits]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_NewKeys]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [KeyText] ON [dbo].[PE_NewKeys]([KeyText]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_OrderForm] ADD 
	CONSTRAINT [DF__PE_OrderF__Order__740F363E] DEFAULT (0) FOR [OrderFormID],
	CONSTRAINT [DF__PE_OrderF__Clien__75035A77] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_OrderF__Money__75F77EB0] DEFAULT (0) FOR [MoneyTotal],
	CONSTRAINT [DF__PE_OrderF__Money__76EBA2E9] DEFAULT (0) FOR [MoneyGoods],
	CONSTRAINT [DF__PE_OrderF__NeedI__77DFC722] DEFAULT (0) FOR [NeedInvoice],
	CONSTRAINT [DF__PE_OrderF__Invoi__78D3EB5B] DEFAULT (0) FOR [Invoiced],
	CONSTRAINT [DF__PE_OrderF__Money__79C80F94] DEFAULT (0) FOR [MoneyReceipt],
	CONSTRAINT [DF__PE_OrderF__Begin__7ABC33CD] DEFAULT (getdate()) FOR [BeginDate],
	CONSTRAINT [DF__PE_OrderF__Payme__7BB05806] DEFAULT (0) FOR [PaymentType],
	CONSTRAINT [DF__PE_OrderF__Deliv__7CA47C3F] DEFAULT (0) FOR [DeliverType],
	CONSTRAINT [DF__PE_OrderF__Statu__7D98A078] DEFAULT (0) FOR [Status],
	CONSTRAINT [DF__PE_OrderF__Deliv__7E8CC4B1] DEFAULT (0) FOR [DeliverStatus],
	CONSTRAINT [DF__PE_OrderF__Enabl__7F80E8EA] DEFAULT (0) FOR [EnableDownload],
	CONSTRAINT [DF__PE_OrderF__Prese__00750D23] DEFAULT (0) FOR [PresentMoney],
	CONSTRAINT [DF__PE_OrderF__Prese__0169315C] DEFAULT (0) FOR [PresentPoint],
	CONSTRAINT [DF__PE_OrderF__Prese__025D5595] DEFAULT (0) FOR [PresentExp],
	CONSTRAINT [DF__PE_OrderF__Disco__035179CE] DEFAULT (0) FOR [Discount_Payment],
	CONSTRAINT [DF__PE_OrderF__Charg__04459E07] DEFAULT (0) FOR [Charge_Deliver]
GO

 CREATE  INDEX [ClientID] ON [dbo].[PE_OrderForm]([ClientID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderFormNum] ON [dbo].[PE_OrderForm]([OrderFormNum]) ON [PRIMARY]
GO

 CREATE  INDEX [Postcode] ON [dbo].[PE_OrderForm]([ZipCode]) ON [PRIMARY]
GO

 CREATE  INDEX [UserName] ON [dbo].[PE_OrderForm]([UserName]) ON [PRIMARY]
GO

 CREATE  INDEX [UserName1] ON [dbo].[PE_OrderForm]([AgentName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_OrderFormItem] ADD 
	CONSTRAINT [DF__PE_OrderF__ItemI__062DE679] DEFAULT (0) FOR [ItemID],
	CONSTRAINT [DF__PE_OrderF__Order__07220AB2] DEFAULT (0) FOR [OrderFormID],
	CONSTRAINT [DF__PE_OrderF__Produ__08162EEB] DEFAULT (0) FOR [ProductID],
	CONSTRAINT [DF__PE_OrderF__SaleT__090A5324] DEFAULT (0) FOR [SaleType],
	CONSTRAINT [DF__PE_OrderF__Price__09FE775D] DEFAULT (0) FOR [Price_Original],
	CONSTRAINT [DF__PE_OrderF__Price__0AF29B96] DEFAULT (0) FOR [Price],
	CONSTRAINT [DF__PE_OrderF__TrueP__0BE6BFCF] DEFAULT (0) FOR [TruePrice],
	CONSTRAINT [DF__PE_OrderF__Amoun__0CDAE408] DEFAULT (0) FOR [Amount],
	CONSTRAINT [DF__PE_OrderF__SubTo__0DCF0841] DEFAULT (0) FOR [SubTotal],
	CONSTRAINT [DF__PE_OrderF__Servi__0EC32C7A] DEFAULT (0) FOR [ServiceTerm],
	CONSTRAINT [DF__PE_OrderF__Prese__0FB750B3] DEFAULT (0) FOR [PresentMoney],
	CONSTRAINT [DF__PE_OrderF__Prese__10AB74EC] DEFAULT (0) FOR [PresentPoint],
	CONSTRAINT [DF__PE_OrderF__Prese__119F9925] DEFAULT (0) FOR [PresentExp]
GO

 CREATE  INDEX [OrderFormID] ON [dbo].[PE_OrderFormItem]([OrderFormID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductID] ON [dbo].[PE_OrderFormItem]([ProductID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Page] ADD 
	CONSTRAINT [DF__PE_Page__PageTyp__1387E197] DEFAULT (0) FOR [PageType]
GO

 CREATE  INDEX [arrGroupID] ON [dbo].[PE_Page]([arrGroupID]) ON [PRIMARY]
GO

 CREATE  INDEX [GroupID] ON [dbo].[PE_Page]([ClassName]) ON [PRIMARY]
GO

 CREATE  INDEX [ID] ON [dbo].[PE_Page]([ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_PageClass] ADD 
	CONSTRAINT [DF__PE_PageCl__Class__15702A09] DEFAULT (0) FOR [ClassType]
GO

 CREATE  INDEX [ID] ON [dbo].[PE_PageClass]([ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Payment] ADD 
	CONSTRAINT [DF__PE_Paymen__Payme__1758727B] DEFAULT (0) FOR [PaymentID],
	CONSTRAINT [DF__PE_Paymen__Order__184C96B4] DEFAULT (0) FOR [OrderFormID],
	CONSTRAINT [DF__PE_Paymen__eBank__1940BAED] DEFAULT (0) FOR [eBankID],
	CONSTRAINT [DF__PE_Paymen__Money__1A34DF26] DEFAULT (0) FOR [MoneyPay],
	CONSTRAINT [DF__PE_Paymen__Money__1B29035F] DEFAULT (0) FOR [MoneyTrue],
	CONSTRAINT [DF__PE_Paymen__Statu__1C1D2798] DEFAULT (0) FOR [Status]
GO

 CREATE  INDEX [eBankID] ON [dbo].[PE_Payment]([eBankID]) ON [PRIMARY]
GO

 CREATE  INDEX [MoneyPay] ON [dbo].[PE_Payment]([MoneyPay]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderFormID] ON [dbo].[PE_Payment]([OrderFormID]) ON [PRIMARY]
GO

 CREATE  INDEX [PaymentNum] ON [dbo].[PE_Payment]([PaymentNum]) ON [PRIMARY]
GO

 CREATE  INDEX [UserName] ON [dbo].[PE_Payment]([UserName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_PaymentType] ADD 
	CONSTRAINT [DF__PE_Paymen__TypeI__1E05700A] DEFAULT (0) FOR [TypeID],
	CONSTRAINT [DF__PE_Paymen__Disco__1EF99443] DEFAULT (0) FOR [Discount],
	CONSTRAINT [DF__PE_Paymen__IsDef__1FEDB87C] DEFAULT (0) FOR [IsDefault],
	CONSTRAINT [DF__PE_Paymen__Order__20E1DCB5] DEFAULT (0) FOR [OrderID],
	CONSTRAINT [DF__PE_Paymen__IsDis__21D600EE] DEFAULT (0) FOR [IsDisabled]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_PaymentType]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [TypeID] ON [dbo].[PE_PaymentType]([TypeID]) ON [PRIMARY]
GO
Alter TABLE [dbo].[PE_PayPlatform] WITH NOCHECK ADD CONSTRAINT [PK_PE_PayPlatform] Primary Key Clustered ([PlatformID] )
GO
CREATE INDEX [IsDisabled] on [dbo].[PE_PayPlatform]([IsDisabled] ) ON [PRIMARY]
GO
CREATE INDEX [OrderID] on [dbo].[PE_PayPlatform]([OrderID] ) ON [PRIMARY]

ALTER TABLE [dbo].[PE_Photo] ADD 
	CONSTRAINT [DF__PE_Photo__Commen__23BE4960] DEFAULT (0) FOR [CommentCount],
	CONSTRAINT [DF__PE_Photo__OnTop__24B26D99] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_Photo__Elite__25A691D2] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_Photo__Status__269AB60B] DEFAULT (0) FOR [Status],
	CONSTRAINT [DF__PE_Photo__Delete__278EDA44] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_Photo__VoteID__2882FE7D] DEFAULT (0) FOR [VoteID],
	CONSTRAINT [DF__PE_Photo__Presen__297722B6] DEFAULT (0) FOR [PresentExp],
	CONSTRAINT [DF__PE_Photo__InfoPu__2A6B46EF] DEFAULT (0) FOR [InfoPurview],
	CONSTRAINT [DF__PE_Photo__Charge__2B5F6B28] DEFAULT (0) FOR [ChargeType],
	CONSTRAINT [DF__PE_Photo__PitchT__2C538F61] DEFAULT (0) FOR [PitchTime],
	CONSTRAINT [DF__PE_Photo__ReadTi__2D47B39A] DEFAULT (0) FOR [ReadTimes],
	CONSTRAINT [DF__PE_Photo__Divide__2E3BD7D3] DEFAULT (0) FOR [DividePercent],
	CONSTRAINT [DF__PE_Photo__BlogID__2F2FFC0C] DEFAULT (0) FOR [BlogID]
GO

 CREATE  INDEX [Author] ON [dbo].[PE_Photo]([Author]) ON [PRIMARY]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Photo]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_Photo]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Inputer] ON [dbo].[PE_Photo]([Inputer]) ON [PRIMARY]
GO

 CREATE  INDEX [Keyword] ON [dbo].[PE_Photo]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinID] ON [dbo].[PE_Photo]([SkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [Status] ON [dbo].[PE_Photo]([Status]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Photo]([TemplateID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Position] ADD 
	CONSTRAINT [DF__PE_Positi__Posit__3118447E] DEFAULT (0) FOR [PositionID],
	CONSTRAINT [DF__PE_Positi__JobCa__320C68B7] DEFAULT (0) FOR [JobCategoryID],
	CONSTRAINT [DF__PE_Positi__SubCo__33008CF0] DEFAULT (0) FOR [SubCompanyID],
	CONSTRAINT [DF__PE_Positi__WorkP__33F4B129] DEFAULT (0) FOR [WorkPlaceID],
	CONSTRAINT [DF__PE_Positi__Posit__34E8D562] DEFAULT (0) FOR [PositionNum],
	CONSTRAINT [DF__PE_Positi__Valid__35DCF99B] DEFAULT (0) FOR [ValidDate],
	CONSTRAINT [DF__PE_Positi__Posit__36D11DD4] DEFAULT (0) FOR [PositionStatus],
	CONSTRAINT [DF__PE_Positi__Urgen__37C5420D] DEFAULT (0) FOR [Urgent]
GO

 CREATE  INDEX [JobCategoryID] ON [dbo].[PE_Position]([JobCategoryID]) ON [PRIMARY]
GO

 CREATE  INDEX [PositionNum] ON [dbo].[PE_Position]([PositionNum]) ON [PRIMARY]
GO

 CREATE  INDEX [SubCompanyID] ON [dbo].[PE_Position]([SubCompanyID]) ON [PRIMARY]
GO

 CREATE  INDEX [WorkPlaceID] ON [dbo].[PE_Position]([WorkPlaceID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_PositionSupplyInfo] ADD 
	CONSTRAINT [DF__PE_Positi__Posit__39AD8A7F] DEFAULT (0) FOR [PositionSupplyInfoID],
	CONSTRAINT [DF__PE_Positi__Posit__3AA1AEB8] DEFAULT (0) FOR [PositionID],
	CONSTRAINT [DF__PE_Positi__SubCo__3B95D2F1] DEFAULT (0) FOR [SubCompanyID],
	CONSTRAINT [DF__PE_Positi__WorkP__3C89F72A] DEFAULT (0) FOR [WorkPlaceID],
	CONSTRAINT [DF__PE_Positi__Check__3D7E1B63] DEFAULT (0) FOR [CheckStatus]
GO

 CREATE  INDEX [IntervieweeID] ON [dbo].[PE_PositionSupplyInfo]([UserName]) ON [PRIMARY]
GO

 CREATE  INDEX [PositionID] ON [dbo].[PE_PositionSupplyInfo]([PositionID]) ON [PRIMARY]
GO

 CREATE  INDEX [ResumeID] ON [dbo].[PE_PositionSupplyInfo]([PositionSupplyInfoID]) ON [PRIMARY]
GO

 CREATE  INDEX [SubCompanyID] ON [dbo].[PE_PositionSupplyInfo]([SubCompanyID]) ON [PRIMARY]
GO

 CREATE  INDEX [WorkPlaceID] ON [dbo].[PE_PositionSupplyInfo]([WorkPlaceID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_PresentProject] ADD 
	CONSTRAINT [DF__PE_Presen__MinMo__3F6663D5] DEFAULT (0) FOR [MinMoney],
	CONSTRAINT [DF__PE_Presen__MaxMo__405A880E] DEFAULT (0) FOR [MaxMoney],
	CONSTRAINT [DF__PE_Presen__Price__414EAC47] DEFAULT (0) FOR [Price],
	CONSTRAINT [DF__PE_Present__Cash__4242D080] DEFAULT (0) FOR [Cash],
	CONSTRAINT [DF__PE_Presen__Prese__4336F4B9] DEFAULT (0) FOR [PresentExp],
	CONSTRAINT [DF__PE_Presen__Prese__442B18F2] DEFAULT (0) FOR [PresentPoint]
GO

 CREATE  INDEX [BeginDate] ON [dbo].[PE_PresentProject]([BeginDate]) ON [PRIMARY]
GO

 CREATE  INDEX [EndDate] ON [dbo].[PE_PresentProject]([EndDate]) ON [PRIMARY]
GO

 CREATE  INDEX [MaxMoney] ON [dbo].[PE_PresentProject]([MaxMoney]) ON [PRIMARY]
GO

 CREATE  INDEX [MinMoney] ON [dbo].[PE_PresentProject]([MinMoney]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Producer] ADD 
	CONSTRAINT [DF__PE_Produc__Chann__46136164] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Produc__Passe__4707859D] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_Produc__onTop__47FBA9D6] DEFAULT (0) FOR [onTop],
	CONSTRAINT [DF__PE_Produc__IsEli__48EFCE0F] DEFAULT (0) FOR [IsElite],
	CONSTRAINT [DF__PE_Produce__Hits__49E3F248] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_Produc__Produ__4AD81681] DEFAULT (0) FOR [ProducerType]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Producer]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [Postcode] ON [dbo].[PE_Producer]([Postcode]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Product] ADD 
	CONSTRAINT [DF__PE_Produc__Produ__4CC05EF3] DEFAULT (0) FOR [ProductID],
	CONSTRAINT [DF__PE_Produc__Chann__4DB4832C] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Produc__Class__4EA8A765] DEFAULT (0) FOR [ClassID],
	CONSTRAINT [DF__PE_Produc__Produ__4F9CCB9E] DEFAULT (0) FOR [ProductKind],
	CONSTRAINT [DF__PE_Produc__Produ__5090EFD7] DEFAULT (0) FOR [ProductType],
	CONSTRAINT [DF__PE_Produc__Price__51851410] DEFAULT (0) FOR [Price],
	CONSTRAINT [DF__PE_Produc__Price__52793849] DEFAULT (0) FOR [Price_Original],
	CONSTRAINT [DF__PE_Produc__Price__536D5C82] DEFAULT (0) FOR [Price_Market],
	CONSTRAINT [DF__PE_Produc__Price__546180BB] DEFAULT (0) FOR [Price_Member],
	CONSTRAINT [DF__PE_Produc__Price__5555A4F4] DEFAULT (0) FOR [Price_Agent],
	CONSTRAINT [DF__PE_Produc__Enabl__5649C92D] DEFAULT (0) FOR [EnableWholesale],
	CONSTRAINT [DF__PE_Produc__Price__573DED66] DEFAULT (0) FOR [Price_Wholesale1],
	CONSTRAINT [DF__PE_Produc__Numbe__5832119F] DEFAULT (0) FOR [Number_Wholesale1],
	CONSTRAINT [DF__PE_Produc__Price__592635D8] DEFAULT (0) FOR [Price_Wholesale2],
	CONSTRAINT [DF__PE_Produc__Numbe__5A1A5A11] DEFAULT (0) FOR [Number_Wholesale2],
	CONSTRAINT [DF__PE_Produc__Price__5B0E7E4A] DEFAULT (0) FOR [Price_Wholesale3],
	CONSTRAINT [DF__PE_Produc__Numbe__5C02A283] DEFAULT (0) FOR [Number_Wholesale3],
	CONSTRAINT [DF__PE_Produc__OnTop__5CF6C6BC] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_Produc__IsHot__5DEAEAF5] DEFAULT (0) FOR [IsHot],
	CONSTRAINT [DF__PE_Produc__IsEli__5EDF0F2E] DEFAULT (0) FOR [IsElite],
	CONSTRAINT [DF__PE_Produc__Stars__5FD33367] DEFAULT (0) FOR [Stars],
	CONSTRAINT [DF__PE_Produc__Stock__60C757A0] DEFAULT (0) FOR [Stocks],
	CONSTRAINT [DF__PE_Produc__Order__61BB7BD9] DEFAULT (0) FOR [OrderNum],
	CONSTRAINT [DF__PE_Produc__Alarm__62AFA012] DEFAULT (0) FOR [AlarmNum],
	CONSTRAINT [DF__PE_Produc__Enabl__63A3C44B] DEFAULT (0) FOR [EnableSale],
	CONSTRAINT [DF__PE_Produc__Disco__6497E884] DEFAULT (0) FOR [Discount],
	CONSTRAINT [DF__PE_Produc__Limit__658C0CBD] DEFAULT (0) FOR [LimitNum],
	CONSTRAINT [DF__PE_Produc__Comme__668030F6] DEFAULT (0) FOR [CommentCount],
	CONSTRAINT [DF__PE_Produc__Servi__6774552F] DEFAULT (0) FOR [ServiceTerm],
	CONSTRAINT [DF__PE_Product__Hits__68687968] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_Produc__BuyTi__695C9DA1] DEFAULT (0) FOR [BuyTimes],
	CONSTRAINT [DF__PE_Produc__Delet__6A50C1DA] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_Produc__Templ__6B44E613] DEFAULT (0) FOR [TemplateID],
	CONSTRAINT [DF__PE_Produc__SkinI__6C390A4C] DEFAULT (0) FOR [SkinID],
	CONSTRAINT [DF__PE_Produc__VoteI__6D2D2E85] DEFAULT (0) FOR [VoteID],
	CONSTRAINT [DF__PE_Produc__SaleP__6E2152BE] DEFAULT (0) FOR [SalePromotionType],
	CONSTRAINT [DF__PE_Produc__MinNu__6F1576F7] DEFAULT (0) FOR [MinNumber],
	CONSTRAINT [DF__PE_Produc__Prese__70099B30] DEFAULT (0) FOR [PresentNumber],
	CONSTRAINT [DF__PE_Produc__Prese__70FDBF69] DEFAULT (0) FOR [PresentMoney],
	CONSTRAINT [DF__PE_Produc__Prese__71F1E3A2] DEFAULT (0) FOR [PresentPoint],
	CONSTRAINT [DF__PE_Produc__Prese__72E607DB] DEFAULT (0) FOR [PresentExp],
	CONSTRAINT [DF__PE_Produc__Weigh__73DA2C14] DEFAULT (0) FOR [Weight],
	CONSTRAINT [DF__PE_Produc__Enabl__74CE504D] DEFAULT (1) FOR [EnableSingleSell]
GO

 CREATE  INDEX [AlarmNum] ON [dbo].[PE_Product]([AlarmNum]) ON [PRIMARY]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Product]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_Product]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Keyword] ON [dbo].[PE_Product]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [LimitNum] ON [dbo].[PE_Product]([LimitNum]) ON [PRIMARY]
GO

 CREATE  INDEX [Number_Wholesale1] ON [dbo].[PE_Product]([Number_Wholesale2]) ON [PRIMARY]
GO

 CREATE  INDEX [Number_Wholesale11] ON [dbo].[PE_Product]([Number_Wholesale3]) ON [PRIMARY]
GO

 CREATE  INDEX [Numer_Wholesale] ON [dbo].[PE_Product]([Number_Wholesale1]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderNum] ON [dbo].[PE_Product]([OrderNum]) ON [PRIMARY]
GO

 CREATE  INDEX [PresentID] ON [dbo].[PE_Product]([PresentID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProducerID] ON [dbo].[PE_Product]([ProducerName]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductID] ON [dbo].[PE_Product]([ProductID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductKind] ON [dbo].[PE_Product]([ProductKind]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductNum] ON [dbo].[PE_Product]([ProductNum]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinID] ON [dbo].[PE_Product]([SkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Product]([TemplateID]) ON [PRIMARY]
GO

 CREATE  INDEX [TrademarkID] ON [dbo].[PE_Product]([TrademarkName]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [ProvinceID] ON [dbo].[PE_Province]([ProvinceID]) ON [PRIMARY]
GO

 CREATE  INDEX [CountryID] ON [dbo].[PE_Province]([Country]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_RechargeLog] ADD 
	CONSTRAINT [DF__PE_Rechar__Valid__77AABCF8] DEFAULT (0) FOR [ValidNum],
	CONSTRAINT [DF__PE_Rechar__Valid__789EE131] DEFAULT (0) FOR [ValidUnit],
	CONSTRAINT [DF__PE_Rechar__Incom__7993056A] DEFAULT (0) FOR [Income_Payout]
GO

 CREATE  INDEX [LogID] ON [dbo].[PE_RechargeLog]([LogID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserName] ON [dbo].[PE_RechargeLog]([UserName]) ON [PRIMARY]
GO

 CREATE  INDEX [ValidNum] ON [dbo].[PE_RechargeLog]([ValidNum]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Resume] ADD 
	CONSTRAINT [DF__PE_Resume__Resum__7B7B4DDC] DEFAULT (0) FOR [ResumeID],
	CONSTRAINT [DF__PE_Resume__Age__7C6F7215] DEFAULT (0) FOR [Age],
	CONSTRAINT [DF__PE_Resume__Sex__7D63964E] DEFAULT (0) FOR [Sex],
	CONSTRAINT [DF__PE_Resume__Marit__7E57BA87] DEFAULT (0) FOR [Marital],
	CONSTRAINT [DF__PE_Resume__Educa__7F4BDEC0] DEFAULT (0) FOR [Education],
	CONSTRAINT [DF__PE_Resume__Forei__004002F9] DEFAULT (0) FOR [ForeignLanguageKind]
GO

 CREATE  UNIQUE  INDEX [IntervieweeID] ON [dbo].[PE_Resume]([ResumeID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_ServiceItem] ADD 
	CONSTRAINT [DF__PE_Servic__Clien__02284B6B] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_Servic__Conta__031C6FA4] DEFAULT (0) FOR [ContacterID],
	CONSTRAINT [DF__PE_Servic__Order__041093DD] DEFAULT (0) FOR [OrderFormID],
	CONSTRAINT [DF__PE_Servic__Servi__0504B816] DEFAULT (0) FOR [ServiceResult],
	CONSTRAINT [DF__PE_Servic__TakeT__05F8DC4F] DEFAULT (0) FOR [TakeTime],
	CONSTRAINT [DF__PE_Servic__Confi__06ED0088] DEFAULT (0) FOR [ConfirmScore]
GO

 CREATE  INDEX [ClientID] ON [dbo].[PE_ServiceItem]([ClientID]) ON [PRIMARY]
GO

 CREATE  INDEX [ContacterID] ON [dbo].[PE_ServiceItem]([ContacterID]) ON [PRIMARY]
GO

 CREATE  INDEX [ItemID] ON [dbo].[PE_ServiceItem]([ItemID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderFormID] ON [dbo].[PE_ServiceItem]([OrderFormID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_ShoppingCarts] ADD 
	CONSTRAINT [DF__PE_Shoppi__Produ__08D548FA] DEFAULT (0) FOR [ProductID],
	CONSTRAINT [DF__PE_Shoppi__Quant__09C96D33] DEFAULT (0) FOR [Quantity],
	CONSTRAINT [DF__PE_Shoppi__Prese__0ABD916C] DEFAULT (0) FOR [PresentID]
GO

 CREATE  INDEX [CartID] ON [dbo].[PE_ShoppingCarts]([CartID]) ON [PRIMARY]
GO

 CREATE  INDEX [PresentID] ON [dbo].[PE_ShoppingCarts]([PresentID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProductID] ON [dbo].[PE_ShoppingCarts]([ProductID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Skin] ADD 
	CONSTRAINT [DF__PE_Skin__IsDefau__0CA5D9DE] DEFAULT (0) FOR [IsDefaultInProject]
GO

 CREATE  INDEX [ProjectName] ON [dbo].[PE_Skin]([ProjectName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Soft] ADD 
	CONSTRAINT [DF__PE_Soft__Comment__0E8E2250] DEFAULT (0) FOR [CommentCount],
	CONSTRAINT [DF__PE_Soft__OnTop__0F824689] DEFAULT (0) FOR [OnTop],
	CONSTRAINT [DF__PE_Soft__Elite__10766AC2] DEFAULT (0) FOR [Elite],
	CONSTRAINT [DF__PE_Soft__Status__116A8EFB] DEFAULT (0) FOR [Status],
	CONSTRAINT [DF__PE_Soft__Deleted__125EB334] DEFAULT (0) FOR [Deleted],
	CONSTRAINT [DF__PE_Soft__ErrorTi__1352D76D] DEFAULT (0) FOR [ErrorTimes],
	CONSTRAINT [DF__PE_Soft__VoteID__1446FBA6] DEFAULT (0) FOR [VoteID],
	CONSTRAINT [DF__PE_Soft__Present__153B1FDF] DEFAULT (0) FOR [PresentExp],
	CONSTRAINT [DF__PE_Soft__BrowseT__162F4418] DEFAULT (0) FOR [BrowseTimes],
	CONSTRAINT [DF__PE_Soft__InfoPur__17236851] DEFAULT (0) FOR [InfoPurview],
	CONSTRAINT [DF__PE_Soft__ChargeT__18178C8A] DEFAULT (0) FOR [ChargeType],
	CONSTRAINT [DF__PE_Soft__PitchTi__190BB0C3] DEFAULT (0) FOR [PitchTime],
	CONSTRAINT [DF__PE_Soft__ReadTim__19FFD4FC] DEFAULT (0) FOR [ReadTimes],
	CONSTRAINT [DF__PE_Soft__DivideP__1AF3F935] DEFAULT (0) FOR [DividePercent],
	CONSTRAINT [DF__PE_Soft__BlogID__1BE81D6E] DEFAULT (0) FOR [BlogID]
GO

 CREATE  INDEX [Author] ON [dbo].[PE_Soft]([Author]) ON [PRIMARY]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Soft]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_Soft]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [Inputer] ON [dbo].[PE_Soft]([Inputer]) ON [PRIMARY]
GO

 CREATE  INDEX [Keyword] ON [dbo].[PE_Soft]([Keyword]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinID] ON [dbo].[PE_Soft]([SkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [Status] ON [dbo].[PE_Soft]([Status]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Soft]([TemplateID]) ON [PRIMARY]
GO

 CREATE  INDEX [UpdateTime] ON [dbo].[PE_Soft]([UpdateTime]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Space] ADD 
	CONSTRAINT [DF__PE_Space__UserID__1DD065E0] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_Space__ClassI__1EC48A19] DEFAULT (0) FOR [ClassID],
	CONSTRAINT [DF__PE_Space__QQ__1FB8AE52] DEFAULT (0) FOR [QQ],
	CONSTRAINT [DF__PE_Space__Type__20ACD28B] DEFAULT (0) FOR [Type],
	CONSTRAINT [DF__PE_Space__onTop__21A0F6C4] DEFAULT (0) FOR [onTop],
	CONSTRAINT [DF__PE_Space__Passed__22951AFD] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_Space__IsElit__23893F36] DEFAULT (0) FOR [IsElite],
	CONSTRAINT [DF__PE_Space__Hits__247D636F] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_Space__OrderI__257187A8] DEFAULT (0) FOR [OrderID],
	CONSTRAINT [DF__PE_Space__listnu__2665ABE1] DEFAULT (10) FOR [listnum]
GO

 CREATE  INDEX [ClassID] ON [dbo].[PE_Space]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [LinkUrl] ON [dbo].[PE_Space]([LinkUrl]) ON [PRIMARY]
GO

 CREATE  INDEX [listnum] ON [dbo].[PE_Space]([listnum]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_Space]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_Space]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [ZipCode] ON [dbo].[PE_Space]([ZipCode]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SpaceBook] ADD 
	CONSTRAINT [DF__PE_SpaceBook__ID__284DF453] DEFAULT (0) FOR [ID],
	CONSTRAINT [DF__PE_SpaceB__UserI__2942188C] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_SpaceB__BlogI__2A363CC5] DEFAULT (0) FOR [BlogID],
	CONSTRAINT [DF__PE_SpaceBo__Hits__2B2A60FE] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_SpaceB__PlNum__2C1E8537] DEFAULT (0) FOR [PlNum]
GO

 CREATE  INDEX [PlNum] ON [dbo].[PE_SpaceBook]([PlNum]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_SpaceBook]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID1] ON [dbo].[PE_SpaceBook]([BlogID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SpaceComment] ADD 
	CONSTRAINT [DF__PE_SpaceC__BlogI__2E06CDA9] DEFAULT (0) FOR [BlogID],
	CONSTRAINT [DF__PE_SpaceC__ItemI__2EFAF1E2] DEFAULT (0) FOR [ItemID],
	CONSTRAINT [DF__PE_SpaceCo__Type__2FEF161B] DEFAULT (0) FOR [Type]
GO

 CREATE  INDEX [ItemID] ON [dbo].[PE_SpaceComment]([BlogID]) ON [PRIMARY]
GO

 CREATE  INDEX [TypeID] ON [dbo].[PE_SpaceComment]([Type]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID1] ON [dbo].[PE_SpaceComment]([ItemID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SpaceDiary] ADD 
	CONSTRAINT [DF__PE_SpaceDiar__ID__31D75E8D] DEFAULT (0) FOR [ID],
	CONSTRAINT [DF__PE_SpaceD__UserI__32CB82C6] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_SpaceD__BlogI__33BFA6FF] DEFAULT (0) FOR [BlogID],
	CONSTRAINT [DF__PE_SpaceDi__Hits__34B3CB38] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_SpaceD__PlNum__35A7EF71] DEFAULT (0) FOR [PlNum]
GO

 CREATE  INDEX [PlNum] ON [dbo].[PE_SpaceDiary]([PlNum]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_SpaceDiary]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID1] ON [dbo].[PE_SpaceDiary]([BlogID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SpaceKind] ADD 
	CONSTRAINT [DF__PE_SpaceK__Order__379037E3] DEFAULT (0) FOR [OrderID]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_SpaceKind]([OrderID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SpaceLink] ADD 
	CONSTRAINT [DF__PE_SpaceLink__ID__39788055] DEFAULT (0) FOR [ID],
	CONSTRAINT [DF__PE_SpaceL__UserI__3A6CA48E] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_SpaceL__BlogI__3B60C8C7] DEFAULT (0) FOR [BlogID],
	CONSTRAINT [DF__PE_SpaceLi__Hits__3C54ED00] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_SpaceL__PlNum__3D491139] DEFAULT (0) FOR [PlNum]
GO

 CREATE  INDEX [PlNum] ON [dbo].[PE_SpaceLink]([PlNum]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_SpaceLink]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID1] ON [dbo].[PE_SpaceLink]([BlogID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SpaceMusic] ADD 
	CONSTRAINT [DF__PE_SpaceMusi__ID__3F3159AB] DEFAULT (0) FOR [ID],
	CONSTRAINT [DF__PE_SpaceM__UserI__40257DE4] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_SpaceM__BlogI__4119A21D] DEFAULT (0) FOR [BlogID],
	CONSTRAINT [DF__PE_SpaceMu__Hits__420DC656] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_SpaceM__PlNum__4301EA8F] DEFAULT (0) FOR [PlNum]
GO

 CREATE  INDEX [PlNum] ON [dbo].[PE_SpaceMusic]([PlNum]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_SpaceMusic]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID1] ON [dbo].[PE_SpaceMusic]([BlogID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SpacePhoto] ADD 
	CONSTRAINT [DF__PE_SpacePhot__ID__44EA3301] DEFAULT (0) FOR [ID],
	CONSTRAINT [DF__PE_SpaceP__UserI__45DE573A] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_SpaceP__BlogI__46D27B73] DEFAULT (0) FOR [BlogID],
	CONSTRAINT [DF__PE_SpacePh__Hits__47C69FAC] DEFAULT (0) FOR [Hits],
	CONSTRAINT [DF__PE_SpaceP__PlNum__48BAC3E5] DEFAULT (0) FOR [PlNum]
GO

 CREATE  INDEX [PlNum] ON [dbo].[PE_SpacePhoto]([PlNum]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_SpacePhoto]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID1] ON [dbo].[PE_SpacePhoto]([BlogID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SpaceVisitor] ADD 
	CONSTRAINT [DF__PE_SpaceV__BlogI__4AA30C57] DEFAULT (0) FOR [BlogID],
	CONSTRAINT [DF__PE_SpaceV__UserI__4B973090] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_SpaceVis__num__4C8B54C9] DEFAULT (0) FOR [num]
GO

 CREATE  INDEX [BlogID] ON [dbo].[PE_SpaceVisitor]([BlogID]) ON [PRIMARY]
GO

 CREATE  INDEX [num] ON [dbo].[PE_SpaceVisitor]([num]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID] ON [dbo].[PE_SpaceVisitor]([UserID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserID1] ON [dbo].[PE_SpaceVisitor]([UserName]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Special] ADD 
	CONSTRAINT [DF__PE_Specia__IsEli__4E739D3B] DEFAULT (0) FOR [IsElite]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Special]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_Special]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinID] ON [dbo].[PE_Special]([SkinID]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Special]([TemplateID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SubCompany] ADD 
	CONSTRAINT [DF__PE_SubCom__SubCo__505BE5AD] DEFAULT (0) FOR [SubCompanyID],
	CONSTRAINT [DF__PE_SubCom__Order__515009E6] DEFAULT (0) FOR [OrderID]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_SubCompany]([OrderID]) ON [PRIMARY]
GO

 CREATE  INDEX [ChannelId] ON [dbo].[PE_Supply]([ChannelId]) ON [PRIMARY]
GO

 CREATE  INDEX [ClassId] ON [dbo].[PE_Supply]([ClassId]) ON [PRIMARY]
GO

 CREATE  INDEX [SkinId] ON [dbo].[PE_Supply]([SkinId]) ON [PRIMARY]
GO

 CREATE  INDEX [SpecialId] ON [dbo].[PE_Supply]([SpecialId]) ON [PRIMARY]
GO

 CREATE  INDEX [SupplyId] ON [dbo].[PE_Supply]([SupplyId]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateId] ON [dbo].[PE_Supply]([TemplateId]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Supply_Company] ADD 
	CONSTRAINT [DF__PE_Supply__Class__542C7691] DEFAULT (0) FOR [ClassID],
	CONSTRAINT [DF__PE_Supply__Compa__55209ACA] DEFAULT (0) FOR [CompanyID]
GO

 CREATE  INDEX [ClassId] ON [dbo].[PE_Supply_Company]([ClassID]) ON [PRIMARY]
GO

 CREATE  INDEX [CompanyID] ON [dbo].[PE_Supply_Company]([CompanyID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Survey] ADD 
	CONSTRAINT [DF__PE_Survey__IPRep__5C8CB268] DEFAULT (0) FOR [IPRepeat],
	CONSTRAINT [DF__PE_Survey__Creat__5D80D6A1] DEFAULT (getdate()) FOR [CreateDate],
	CONSTRAINT [DF__PE_Survey__IsOpe__5E74FADA] DEFAULT (0) FOR [IsOpen],
	CONSTRAINT [DF__PE_Survey__NeedL__5F691F13] DEFAULT (0) FOR [NeedLogin],
	CONSTRAINT [DF__PE_Survey__Prese__605D434C] DEFAULT (0) FOR [PresentPoint],
	CONSTRAINT [DF__PE_Survey__LockI__61516785] DEFAULT (0) FOR [LockIPType],
	CONSTRAINT [DF__PE_Survey__Templ__62458BBE] DEFAULT (0) FOR [TemplateID]
GO

 CREATE  INDEX [i_id] ON [dbo].[PE_Survey]([SurveyID]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Survey]([TemplateID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SurveyAnswer] ADD 
	CONSTRAINT [DF__PE_Survey__Quest__642DD430] DEFAULT (0) FOR [QuestionID],
	CONSTRAINT [DF__PE_Survey__VoteA__6521F869] DEFAULT (0) FOR [VoteAmount],
	CONSTRAINT [DF__PE_Survey__Order__66161CA2] DEFAULT (0) FOR [OrderID]
GO

 CREATE  INDEX [item_id] ON [dbo].[PE_SurveyAnswer]([QuestionID]) ON [PRIMARY]
GO

 CREATE  INDEX [o_id] ON [dbo].[PE_SurveyAnswer]([AnswerID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_SurveyAnswer]([OrderID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SurveyInput] ADD 
	CONSTRAINT [DF__PE_Survey__Quest__67FE6514] DEFAULT (0) FOR [QuestionID],
	CONSTRAINT [DF__PE_Survey__Surve__68F2894D] DEFAULT (0) FOR [SurveyID]
GO

 CREATE  INDEX [QuestionID] ON [dbo].[PE_SurveyInput]([QuestionID]) ON [PRIMARY]
GO

 CREATE  INDEX [SurveyID] ON [dbo].[PE_SurveyInput]([SurveyID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_SurveyQuestion] ADD 
	CONSTRAINT [DF__PE_Survey__Surve__6ADAD1BF] DEFAULT (0) FOR [SurveyID],
	CONSTRAINT [DF__PE_Survey__Quest__6BCEF5F8] DEFAULT (1) FOR [QuestionType],
	CONSTRAINT [DF__PE_Survey__Input__6CC31A31] DEFAULT (0) FOR [InputType],
	CONSTRAINT [DF__PE_Survey__NotEm__6DB73E6A] DEFAULT (0) FOR [NotEmpty],
	CONSTRAINT [DF__PE_Survey__DataR__6EAB62A3] DEFAULT (0) FOR [DataRight],
	CONSTRAINT [DF__PE_Survey__Order__6F9F86DC] DEFAULT (0) FOR [OrderID],
	CONSTRAINT [DF__PE_Survey__Conte__7093AB15] DEFAULT (0) FOR [ContentLength]
GO

 CREATE  INDEX [i_id] ON [dbo].[PE_SurveyQuestion]([SurveyID]) ON [PRIMARY]
GO

 CREATE  INDEX [item_id] ON [dbo].[PE_SurveyQuestion]([QuestionID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_SurveyQuestion]([OrderID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Template] ADD 
	CONSTRAINT [DF__PE_Templa__IsDef__5708E33C] DEFAULT (0) FOR [IsDefaultInProject],
	CONSTRAINT [DF__PE_Templa__Delet__57FD0775] DEFAULT (0) FOR [Deleted]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Template]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [TemplateID] ON [dbo].[PE_Template]([TemplateID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_TemplateProject] ADD 
	CONSTRAINT [DF__PE_Templa__Templ__59E54FE7] DEFAULT (0) FOR [TemplateProjectID],
	CONSTRAINT [DF__PE_Templa__IsDef__5AD97420] DEFAULT (0) FOR [IsDefault]
GO

 CREATE  INDEX [TemplateProgectID] ON [dbo].[PE_TemplateProject]([TemplateProjectID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_Trademark] ADD 
	CONSTRAINT [DF__PE_Tradem__Chann__5CC1BC92] DEFAULT (0) FOR [ChannelID],
	CONSTRAINT [DF__PE_Tradem__Produ__5DB5E0CB] DEFAULT (0) FOR [ProducerID],
	CONSTRAINT [DF__PE_Tradem__Trade__5EAA0504] DEFAULT (0) FOR [TrademarkType],
	CONSTRAINT [DF__PE_Tradem__Passe__5F9E293D] DEFAULT (0) FOR [Passed],
	CONSTRAINT [DF__PE_Tradem__onTop__60924D76] DEFAULT (0) FOR [onTop],
	CONSTRAINT [DF__PE_Tradem__IsEli__618671AF] DEFAULT (0) FOR [IsElite],
	CONSTRAINT [DF__PE_Tradema__Hits__627A95E8] DEFAULT (0) FOR [Hits]
GO

 CREATE  UNIQUE  INDEX [PrimaryKey] ON [dbo].[PE_Trademark]([TrademarkID]) ON [PRIMARY]
GO

 CREATE  UNIQUE  INDEX [TrademarkID] ON [dbo].[PE_Trademark]([TrademarkID]) ON [PRIMARY]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Trademark]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ProducerID] ON [dbo].[PE_Trademark]([ProducerID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_TransferItem] ADD 
	CONSTRAINT [DF__PE_Transf__Order__6462DE5A] DEFAULT (0) FOR [OrderFormID],
	CONSTRAINT [DF__PE_Transf__Pound__65570293] DEFAULT (0) FOR [Poundage]
GO

 CREATE  INDEX [ItemID] ON [dbo].[PE_TransferItem]([ItemID]) ON [PRIMARY]
GO

 CREATE  INDEX [OrderFormID] ON [dbo].[PE_TransferItem]([OrderFormID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_UsedDetail] ADD 
	CONSTRAINT [DF__PE_UsedDe__Equip__673F4B05] DEFAULT (0) FOR [EquipmentID],
	CONSTRAINT [DF__PE_UsedDe__UserT__68336F3E] DEFAULT (0) FOR [UserType],
	CONSTRAINT [DF__PE_UsedDe__Lesso__69279377] DEFAULT (0) FOR [LessonYear],
	CONSTRAINT [DF__PE_UsedDe__Lesso__6A1BB7B0] DEFAULT (0) FOR [LessonMonth],
	CONSTRAINT [DF__PE_UsedDe__Lesso__6B0FDBE9] DEFAULT (0) FOR [LessonDay],
	CONSTRAINT [DF__PE_UsedDet__Used__6C040022] DEFAULT (0) FOR [Used]
GO

 CREATE  INDEX [FacilityNum] ON [dbo].[PE_UsedDetail]([EquipmentID]) ON [PRIMARY]
GO

 CREATE  INDEX [LessionNum] ON [dbo].[PE_UsedDetail]([LessonNumber]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_User] ADD 
	CONSTRAINT [DF__PE_User__UserID__6DEC4894] DEFAULT (0) FOR [UserID],
	CONSTRAINT [DF__PE_User__ClientI__6EE06CCD] DEFAULT (0) FOR [ClientID],
	CONSTRAINT [DF__PE_User__Contact__6FD49106] DEFAULT (0) FOR [ContacterID],
	CONSTRAINT [DF__PE_User__Company__70C8B53F] DEFAULT (0) FOR [CompanyID],
	CONSTRAINT [DF__PE_User__UserTyp__71BCD978] DEFAULT (0) FOR [UserType],
	CONSTRAINT [DF__PE_User__IsLocke__72B0FDB1] DEFAULT (0) FOR [IsLocked],
	CONSTRAINT [DF__PE_User__Special__73A521EA] DEFAULT (0) FOR [SpecialPermission],
	CONSTRAINT [DF__PE_User__CheckNu__74994623] DEFAULT (0) FOR [CheckNum],
	CONSTRAINT [DF__PE_User__Blog__758D6A5C] DEFAULT (0) FOR [Blog]
GO

 CREATE  INDEX [CheckNum] ON [dbo].[PE_User]([CheckNum]) ON [PRIMARY]
GO

 CREATE  INDEX [ClientID] ON [dbo].[PE_User]([ClientID]) ON [PRIMARY]
GO

 CREATE  INDEX [CompanyID] ON [dbo].[PE_User]([CompanyID]) ON [PRIMARY]
GO

 CREATE  INDEX [ContacterID] ON [dbo].[PE_User]([ContacterID]) ON [PRIMARY]
GO

 CREATE  INDEX [UserGroupID] ON [dbo].[PE_User]([GroupID]) ON [PRIMARY]
GO

 CREATE  INDEX [ValidNum] ON [dbo].[PE_User]([ValidNum]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_UserGroup] ADD 
	CONSTRAINT [DF__PE_UserGr__Group__7775B2CE] DEFAULT (0) FOR [GroupID],
	CONSTRAINT [DF__PE_UserGr__Group__7869D707] DEFAULT (',,,,,,,,,,,,,,,,,,,') FOR [GroupSetting]
GO

ALTER TABLE [dbo].[PE_Vote] ADD 
	CONSTRAINT [DF__PE_Vote__IsSelec__7A521F79] DEFAULT (0) FOR [IsSelected],
	CONSTRAINT [DF__PE_Vote__IsItem__7B4643B2] DEFAULT (0) FOR [IsItem]
GO

 CREATE  INDEX [ChannelID] ON [dbo].[PE_Vote]([ChannelID]) ON [PRIMARY]
GO

 CREATE  INDEX [ID] ON [dbo].[PE_Vote]([ID]) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PE_WorkPlace] ADD 
	CONSTRAINT [DF__PE_WorkPl__WorkP__7D2E8C24] DEFAULT (0) FOR [WorkPlaceID],
	CONSTRAINT [DF__PE_WorkPl__Order__7E22B05D] DEFAULT (0) FOR [OrderID]
GO

 CREATE  INDEX [OrderID] ON [dbo].[PE_WorkPlace]([OrderID]) ON [PRIMARY]
GO

SET NOCOUNT ON 

Insert Into PE_Admin (AdminName,UserName,Password,Purview,RoleName,LastLoginIP,LastLoginTime,LastLogoutTime,LoginTimes,RndPassword,EnableMultiLogin,AdminPurview_Article,AdminPurview_Soft,AdminPurview_Photo,AdminPurview_GuestBook,AdminPurview_Supply,AdminPurview_House,AdminPurview_Job,AdminPurview_Shop,AdminPurview_Others,arrClass_View,arrClass_Input,arrClass_Check,arrClass_Manage,arrClass_House,arrClass_GuestBook,Count_Add,Count_Check,Count_Reject) Values ('admin','admin','469e80d32c0559f8',1,'','127.0.0.1','2006-1-1 12:00:00','2006-1-1 12:00:00',0,'2KB4EqPddx2A3178',0,0,0,0,0,0,0,0,0,'','','','','','','',0,0,0)


Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (1,'文章中心','文章','篇','','','','',1,1,0,'','Article',1,0,1,1,0,0,3,1,'UploadFiles',1024,1000,7,10,'jpg|bmp|gif|png$ swf$ mid|mp3|wmv|asf|avi|mpg$ ram|rm|ra$ rar|exe|doc|zip',0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,3,0,'',10,8,20,10,20,20,20,20,100,'','','','','Charge, Vote, Recieve, Copyfee',0,'',0,0)
Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (2,'下载中心','软件','个','','','','',2,1,0,'','Soft',2,0,1,1,1,0,1,1,'UploadSoft',1024,50,7,10,'jpg|bmp|gif|png$ swf$ mid|mp3|wmv|asf|avi|mpg$ ram|rm|ra$ rar|exe|doc|zip',0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,3,0,'',10,8,20,10,20,20,20,20,0,'','','','','Charge, Vote, SoftParameter',0,'国产软件'+CHAR(13)+CHAR(10)+'国外软件'+CHAR(13)+CHAR(10)+'汉化补丁'+CHAR(13)+CHAR(10)+'程序源码'+CHAR(13)+CHAR(10)+'电影下载'+CHAR(13)+CHAR(10)+'Flash动画'+CHAR(13)+CHAR(10)+'其他$$$英文'+CHAR(13)+CHAR(10)+'简体中文'+CHAR(13)+CHAR(10)+'繁体中文'+CHAR(13)+CHAR(10)+'简繁中文'+CHAR(13)+CHAR(10)+'多国语言'+CHAR(13)+CHAR(10)+'其他语言$$$免费版'+CHAR(13)+CHAR(10)+'共享版'+CHAR(13)+CHAR(10)+'试用版'+CHAR(13)+CHAR(10)+'演示版'+CHAR(13)+CHAR(10)+'注册版'+CHAR(13)+CHAR(10)+'破解版'+CHAR(13)+CHAR(10)+'零售版'+CHAR(13)+CHAR(10)+'OEM版$$$Linux'+CHAR(13)+CHAR(10)+'DOS'+CHAR(13)+CHAR(10)+'9x'+CHAR(13)+CHAR(10)+'95'+CHAR(13)+CHAR(10)+'98'+CHAR(13)+CHAR(10)+'Me'+CHAR(13)+CHAR(10)+'NT'+CHAR(13)+CHAR(10)+'2000'+CHAR(13)+CHAR(10)+'XP'+CHAR(13)+CHAR(10)+'.NET',0,0)
Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (3,'图片中心','图片','张','','','','',3,1,0,'','Photo',3,0,1,1,1,0,1,1,'UploadPhotos',1024,50,7,10,'gif|jpg|bmp|png|swf',0,0,1,1,0,0,0,0,0,0,0,0,0,1,0,0,0,3,0,'',10,8,20,10,20,20,20,20,0,'','','','','Charge, Vote',0,'',0,0)
Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (4,'雁过留声','留言','条','','','','',4,1,0,'','GuestBook',4,0,1,1,0,0,1,0,'UploadPhotos',0,0,0,0,'',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,0,0,'','','','','',0,'',0,0)
Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (5,'动易论坛','论坛','','','','','',5,1,2,'http://bbs.powereasy.net','',0,0,1,1,1,0,0,1,'',1024,50,7,10,'rar|gif|jpg|bmp|png|swf',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',10,8,20,10,20,20,20,20,0,'','','','','',0,'',0,0)
Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (997,'企业招聘','职位','个','','','','',10,1,0,'','Job',8,1,1,1,0,1,1,1,'UploadPhotos',1024,50,7,10,'gif|jpg|jpeg|jpe|bmp|png$ swf$ mid|mp3|wmv|asf|avi|mpg$ ram|rm|ra$ rar|exe|doc|zip',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',10,8,20,10,20,20,20,20,0,'','','','','',0,'',0,0)
Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (998,'房产中心','房产','条','','','','',9,1,0,'','House',7,1,1,1,0,1,1,1,'UploadPhotos',1024,500,7,10,'gif|jpg|jpeg|jpe|bmp|png$ swf$ mid|mp3|wmv|asf|avi|mpg$ ram|rm|ra$ rar|exe|doc|zip',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',10,8,20,10,20,20,20,20,0,'','','非常抱歉的告诉您，您的{$ChannelShortName}《{$Title}》因为以下几个原因未被录用：'+CHAR(13)+CHAR(10)+'1、'+CHAR(13)+CHAR(10)+'2、'+CHAR(13)+CHAR(10)+'3、'+CHAR(13)+CHAR(10)+''+CHAR(13)+CHAR(10)+'期待着您的再次投稿！','','',0,'',0,0)
Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (999,'供求信息','供求信息','条','','','','',8,1,0,'','Supply',6,1,1,1,0,0,0,1,'UploadPhotos',1024,50,7,10,'gif|jpg',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',10,8,20,10,20,20,20,20,0,'','','','','',0,'',0,0)
Insert Into PE_Channel (ChannelID,ChannelName,ChannelShortName,ChannelItemUnit,ReadMe,Meta_Keywords,Meta_Description,ChannelPicUrl,OrderID,OpenType,ChannelType,LinkUrl,ChannelDir,ModuleType,Disabled,ShowName,ShowNameOnPath,ShowClassTreeGuide,ShowSuspensionPoints,CheckLevel,EnableUploadFile,UploadDir,MaxFileSize,HitsOfHot,DaysOfNew,MaxPerLine,UpFileType,DefaultSkinID,Template_Index,TopMenuType,ClassGuideType,UseCreateHTML,ItemCount,ItemChecked,CommentCount,SpecialCount,HitsCount,StructureType,ListFileType,FileNameType,AutoCreateType,FileExt_Index,FileExt_List,FileExt_Item,UpdatePages,ChannelPurview,arrGroupID,JS_SpecialNum,AuthorInfoLen,MaxPerPage_Index,MaxPerPage_SearchResult,MaxPerPage_New,MaxPerPage_Hot,MaxPerPage_Elite,MaxPerPage_SpecialList,MoneyPerKw,TimingCreateSetting,EmailOfReject,EmailOfPassed,Custom_Content,arrEnabledTabs,CommandChannelPoint,Fields_Options,EnableComment,CheckComment) Values (1000,'动易商城','商品','个','','','','',7,1,0,'','Shop',5,0,1,1,1,0,-1,1,'UploadPhotos',1024,50,7,10,'gif|jpg',0,0,1,1,0,0,0,0,0,0,0,0,0,0,0,0,0,3,0,'',10,8,20,10,20,20,20,20,0,'','','','','',0,'',0,0)


Insert Into PE_Config (SiteName,SiteTitle,SiteUrl,InstallDir,LogoUrl,BannerUrl,WebmasterName,WebmasterEmail,Copyright,Meta_Keywords,Meta_Description,SiteKey,ShowSiteChannel,ShowAdminLogin,EnableSaveRemote,EnableLinkReg,EnableCountFriendSiteHits,EnableSoftKey,objName_FSO,AdminDir,ADDir,AnnounceCookieTime,HitsOfHot,FileExt_SiteIndex,FileExt_SiteSpecial,SiteUrlType,Modules,LockIPType,LockIP,EnableUserReg,EmailCheckReg,AdminCheckReg,EnableMultiRegPerEmail,UserNameLimit,UserNameMax,UserName_RegDisabled,RegFields_MustFill,EnableCheckCodeOfLogin,EnableCheckCodeOfReg,EnableQAofReg,QAofReg,PresentExp,PresentMoney,PresentPoint,PresentValidNum,PresentValidUnit,MoneyExchangePoint,MoneyExchangeValidDay,UserExpExchangePoint,UserExpExchangeValidDay,PresentExpPerLogin,PresentExpPerElite,PointName,PointUnit,EmailOfRegCheck,MailObject,MailServer,MailServerUserName,MailServerPassWord,MailDomain,PhotoObject,Thumb_DefaultWidth,Thumb_DefaultHeight,Thumb_Arithmetic,Watermark_Type,Watermark_Text,Watermark_Text_FontName,Watermark_Text_FontSize,Watermark_Text_FontColor,Watermark_Text_Bold,Watermark_Images_FileName,Watermark_Images_Transparence,Watermark_Images_BackgroundColor,Watermark_Position_X,Watermark_Position_Y,Watermark_Position,SearchInterval,SearchResultNum,MaxPerPage_SearchResult,SearchContent,EnableGuestBuy,IncludeTax,TaxRate,PayOnlineProvider,PayOnlineShopID,PayOnlineKey,PayOnlineRate,PayOnlinePlusPoundage,Prefix_OrderFormNum,Prefix_PaymentNum,Country,Province,City,PostCode,MessageOfOrderConfirm,EmailOfOrderConfirm,MessageOfSendCard,EmailOfSendCard,MessageOfReceiptMoney,EmailOfReceiptMoney,MessageOfRefund,EmailOfRefund,MessageOfInvoice,EmailOfInvoice,MessageOfDeliver,EmailOfDeliver,GuestBook_EnableVisitor,GuestBookCheck,GuestBook_EnableManageRubbish,GuestBook_ManageRubbish,GuestBook_ShowIP,GuestBook_IsAssignSort,GuestBook_MaxPerPage,EnableRss,RssCodeType,EnableWap,WapLogo,EnableWapPl,ShowWapAppendix,ShowWapShop,ShowWapManage,DatabaseVersion,Timing_SetDate,Timing_SetDay,Timing_SetWeekday,Timing_Time,Timing_Date,Timing_CollectionItemID,Timing_AreaCollection,Timing_Breakpoint,IsCustom_Content,SMSUserName,SMSKey,Mobiles,SendMessageToAdminWhenOrder,SendMessageToMemberWhenPaySuccess,MessageOfOrder,MessageOfAddRemit,MessageOfAddIncome,MessageOfAddPayment,MessageOfExchangePoint,MessageOfAddPoint,MessageOfMinusPoint,MessageOfExchangeValid,MessageOfAddValid,MessageOfMinusValid,Thumb_BackgroundColor,PhotoQuality,SurveyKey,ShowUserModel,ShowAnonymous) Values ('动易网络','动易网络','http://www.powereasy.net','/','images/logo.gif','images/banner.jpg','','info@powereasy.net','','','','',1,1,1,1,0,0,'Scripting.FileSystemObject','Admin','AD',0,1000,4,4,0,'CRM, Advertisement, FriendSite, Announce, Vote, KeyLink, Rtext, Collection',0,'|||',1,0,0,0,4,20,'','',1,0,0,'问题一 $$$答案一 $$$问题二 $$$答案二 $$$问题三 $$$答案三',0,0,10,0,1,1,1,1,1,0,0,'点券','点','欢迎您注册成为本站会员！'+CHAR(13)+CHAR(10)+'验证码：{$CheckNum}'+CHAR(13)+CHAR(10)+'请点击下面的地址，输入上面的验证码进行邮件验证。验证通过后，您就可以正式成为我们的会员，享受有关服务了！'+CHAR(13)+CHAR(10)+'{$CheckUrl}',0,'pop3.21cn.com','aaa@21cn.com','bbb','21cn.com',0,130,90,1,0,'动易网络','宋体',0,'#000000',0,'',100,'',0,0,0,10,100,0,1,1,0,6,1,'3069','sldkfjkalsdjfasdf',1,1,'PE','OP','','','','','{$ContacterName}您好：您提交的订单已确认。请按订单中的金额汇款并联系我们。收到汇款后我们将立即安排发货。{$SiteName}（请勿回复此短信）','亲爱的 {$ContacterName} 您好：'+CHAR(13)+CHAR(10)+'您于 {$InputTime} 提交的 {$OrderFormNum} 号订单已经确认。请您按照订单中的金额汇款并联系我们。收到汇款后我们将立即安排发货。'+CHAR(13)+CHAR(10)+'订单信息如下：'+CHAR(13)+CHAR(10)+'{$OrderInfo}'+CHAR(13)+CHAR(10)+'','{$ContacterName}您好：您购买的充值卡信息如下：{$CardInfo}。{$SiteName}（请勿回复此短信）','亲爱的 {$ContacterName} 您好：'+CHAR(13)+CHAR(10)+'您于 {$InputTime} 提交的 {$OrderFormNum} 号订单交付充值卡。'+CHAR(13)+CHAR(10)+'充值卡信息如下：'+CHAR(13)+CHAR(10)+'{$CardInfo}'+CHAR(13)+CHAR(10)+'','{$ContacterName}您好：已经收到您的银行汇款，我们正在安排发货。{$SiteName}（请勿回复此短信）','亲爱的 {$ContacterName} 您好：'+CHAR(13)+CHAR(10)+'您于 {$InputTime} 提交的 {$OrderFormNum} 号订单已经银行汇款，我们正在安排发货。'+CHAR(13)+CHAR(10)+'订单信息如下：'+CHAR(13)+CHAR(10)+'{$OrderInfo}'+CHAR(13)+CHAR(10)+'','{$ContacterName}您好：我们已对您的订单进行了退款，您可在您会员资金明细中查看相关记录。{$SiteName}（请勿回复此短信）','亲爱的 {$ContacterName} 您好：'+CHAR(13)+CHAR(10)+'我们已对您于 {$InputTime} 提交的 {$OrderFormNum} 号订单进行了退款，您可以在您的会员资金明细中查看相关记录。'+CHAR(13)+CHAR(10)+'订单信息如下：'+CHAR(13)+CHAR(10)+'{$OrderInfo}','{$ContacterName}您好：您的订单已经开具发票。{$SiteName}（请勿回复此短信）','亲爱的 {$ContacterName} 您好：'+CHAR(13)+CHAR(10)+'您于 {$InputTime} 提交的 {$OrderFormNum} 号订单已经开具发票'+CHAR(13)+CHAR(10)+'订单信息如下：'+CHAR(13)+CHAR(10)+'{$OrderInfo}'+CHAR(13)+CHAR(10)+'','{$ContacterName}您好：您的订单已经发货，请留意包裹单并及时到邮局领取。若两周内没有收到请及时和我们联系。{$SiteName}（请勿回复此短信）','亲爱的 {$ContacterName} 您好：'+CHAR(13)+CHAR(10)+'您于 {$InputTime} 提交的 {$OrderFormNum} 号订单已经发货，请您注意及时查收。'+CHAR(13)+CHAR(10)+'订单信息如下：'+CHAR(13)+CHAR(10)+'{$OrderInfo}'+CHAR(13)+CHAR(10)+'',1,0,0,'',0,0,'20|||8|||6|||5',1,1,0,'0',0,0,0,0,0,0,0,0,'','1900-1-1','','','',1,'','','',0,0,'会员 {$UserName} 于 {$InputTime} 下了一个订单，订单金额为：{$MoneyTotal}元。','{$UserName}您好：您汇到{$BankName}的{$Money}元汇款已收到并已添加到你的帐户中。{$SiteName}（请勿回复此短信）','{$UserName} 您好：已经给您的帐户中添加了{$Money}元。您现在的资金余额为：{$Balance}。{$SiteName}（请勿回复此短信）','{$UserName} 您好：已从您的帐户中扣除了{$Money}元，用于{$Reason}。{$SiteName}（请勿回复此短信）','{$UserName} 您好：已从您的帐户中扣除了{$Money}元，用于兑换{$Point}点券。现可用点数为：{$UserPoint}。{$SiteName}（请勿回复此短信）','{$UserName} 您好：已经给您的帐户中添加了{$Point}点券。现可用点数为：{$UserPoint}。{$SiteName}（请勿回复此短信）','{$UserName} 您好：已从您的帐户中扣除了{$Point}点券，用于{$Reason}。现可用点数为：{$UserPoint}。{$SiteName}（请勿回复此短信）','{$UserName} 您好：已从您的帐户中扣除了{$Money}元，用于兑换有效期{$Valid}。现有效期剩余天数为:{$ValidDays}天。{$SiteName}（请勿回复此短信）','{$UserName} 您好：已经给您的帐户中添加了有效期{$Valid}。现有效期剩余天数为:{$ValidDays}天。{$SiteName}（请勿回复此短信）','{$UserName} 您好：已从您帐户中扣除有效期{$Valid}，用于{$Reason}。现有效剩余天数为:{$ValidDays}天。{$SiteName}（请勿回复此短信）','#CCCCCC',90,'',0,0) 


Insert Into PE_DeliverType (TypeID,TypeName,Intro,ChargeType,IsDefault,IsDisabled,OrderID,ReleaseType,MinMoney1,ReleaseCharge,MinMoney2,MaxCharge,MinMoney3,Charge_Min,Charge_Max,Charge_Percent) Values (1,'邮政平邮','免费',0,0,0,1,0,0,0,0,0,0,0,0,0)
Insert Into PE_DeliverType (TypeID,TypeName,Intro,ChargeType,IsDefault,IsDisabled,OrderID,ReleaseType,MinMoney1,ReleaseCharge,MinMoney2,MaxCharge,MinMoney3,Charge_Min,Charge_Max,Charge_Percent) Values (2,'邮政快递','免费',0,0,0,2,0,0,0,0,0,0,0,0,0)
Insert Into PE_DeliverType (TypeID,TypeName,Intro,ChargeType,IsDefault,IsDisabled,OrderID,ReleaseType,MinMoney1,ReleaseCharge,MinMoney2,MaxCharge,MinMoney3,Charge_Min,Charge_Max,Charge_Percent) Values (3,'EMS快递','免费',0,1,0,3,0,0,0,0,0,0,0,0,0)
Insert Into PE_DeliverType (TypeID,TypeName,Intro,ChargeType,IsDefault,IsDisabled,OrderID,ReleaseType,MinMoney1,ReleaseCharge,MinMoney2,MaxCharge,MinMoney3,Charge_Min,Charge_Max,Charge_Percent) Values (4,'送货上门','免费',0,0,0,4,0,0,0,0,0,0,0,0,0)
Insert Into PE_DeliverType (TypeID,TypeName,Intro,ChargeType,IsDefault,IsDisabled,OrderID,ReleaseType,MinMoney1,ReleaseCharge,MinMoney2,MaxCharge,MinMoney3,Charge_Min,Charge_Max,Charge_Percent) Values (5,'自取','免费',0,0,0,5,0,0,0,0,0,0,0,0,0)
Insert Into PE_DeliverType (TypeID,TypeName,Intro,ChargeType,IsDefault,IsDisabled,OrderID,ReleaseType,MinMoney1,ReleaseCharge,MinMoney2,MaxCharge,MinMoney3,Charge_Min,Charge_Max,Charge_Percent) Values (6,'网上下载','免费',0,0,0,6,0,0,0,0,0,0,0,0,0)


Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('客户区域','PE_Client','Area','华东区|1|0$$$华南区|1|0$$$华中区|1|0$$$华北区|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('所属行业','PE_Client','ClientField','工业|1|0$$$服务业|1|0$$$信息产业IT业|1|0$$$邮电|1|0$$$通信|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('价值评估','PE_Client','ValueLevel','低|1|0$$$中|1|0$$$高|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('信用等级','PE_Client','CreditLevel','低|1|0$$$中|1|0$$$高|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('重要程度','PE_Client','Importance','不重要|1|0$$$一般|1|0$$$重要|1|0$$$非常重要|1|0$$$极其重要|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('关系等级','PE_Client','ConnectionLevel','很差|1|0$$$较差|1|0$$$一般|1|0$$$较好|1|0$$$密切|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('客户组别','PE_Client','GroupID','潜在客户|1|0$$$普通客户|1|0$$$VIP客户|1|0$$$代理商|1|0$$$合作伙伴|1|0$$$失效客户|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('客户来源','PE_Client','SourceType','电话来访|1|0$$$客户介绍|1|0$$$独立开发|1|0$$$媒体宣传|1|0$$$促销活动|1|0$$$老客户|1|0$$$代理商|1|0$$$合作伙伴|1|0$$$公开招标|1|0$$$互联网|1|0$$$其他|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('阶段','PE_Client','PhaseType','售前跟踪|1|0$$$合同执行|1|0$$$售后服务|1|0$$$合同期满|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('行业地位','PE_Company','StatusInField','行业落后|1|0$$$行业中等|1|0$$$行业领先|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('公司规模','PE_Company','CompanySize','10人以内|1|0$$$10-20人|1|0$$$20-50人|1|0$$$50-100人|1|0$$$100-200人|1|0$$$200-1000人|1|0$$$1000人以上|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('经营状态','PE_Company','ManagementForms','接近倒闭|1|0$$$差|1|0$$$一般|1|0$$$好|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('月收入','PE_Contacter','Income','1000元以下|1|0$$$1000--3000元|1|0$$$3000--6000元|1|0$$$6000--10000元|1|0$$$10000元以上|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('服务类型','PE_ServiceItem','ServiceType','答疑|1|0$$$故障排除|1|0$$$培训|1|0$$$升级|1|0$$$其他|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('服务方式','PE_ServiceItem','ServiceMode','电话|1|0$$$传真|1|0$$$邮寄|1|0$$$上门|1|0$$$Email|1|0$$$QQ|1|0$$$MSN|1|0$$$论坛|1|0$$$其他|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('花费时间','PE_ServiceItem','TakeTime','1分钟|1|0$$$2分钟|1|0$$$5分钟|1|0$$$10分钟|1|0$$$30分钟|1|0$$$1小时|1|0$$$2小时|1|0$$$半个工作日|1|0$$$1个工作日|1|0$$$2个工作日|1|0$$$2个工作日以上|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('服务结果','PE_ServiceItem','Result','未完成|1|0$$$已完成|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('客户评价','PE_ServiceItem','ConfirmScore','很差|1|0$$$不满意|1|0$$$一般|1|0$$$满意|1|0$$$非常满意|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('学历','PE_Contacter','Education','小学|1|0$$$初中|1|0$$$高中|1|0$$$中专|1|0$$$大专|1|0$$$本科|1|0$$$硕士|1|0$$$博士|1|0$$$博士后|1|0$$$其他|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('服务类型','PE_ComplainItem','ComplainType','产品质量问题|1|0$$$维修周期过长|1|0$$$服务人员态度差|1|0$$$客服互相推诿|1|0$$$其他|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('服务方式','PE_ComplainItem','ComplainMode','电话|1|0$$$论坛|1|0$$$留言板|1|0$$$写信|1|0$$$Email|1|0$$$其他|1|0')
Insert Into PE_Dictionary (Title,TableName,FieldName,FieldValue) Values ('紧急程度','PE_ComplainItem','MagnitudeOfExigence','无关紧要|1|0$$$紧急|1|0$$$非常紧急|1|0')


Insert Into PE_HouseConfig (ClassID,ChannelID,ClassName,OpenType,ClassDir,SkinID,TemplateID,ShowOnTop,MaxPerPage,ReleaseDeductPoint,CommendClassPoint,DefaultItemTemplate,DefaultItemSkin,ItemOpenType,ItemCount,UpgradePoint,Meta_Keywords,Meta_Description) Values (1,998,'出售',0,'ChuShou',1,0,1,20,1,3,0,0,0,9,2,'','')
Insert Into PE_HouseConfig (ClassID,ChannelID,ClassName,OpenType,ClassDir,SkinID,TemplateID,ShowOnTop,MaxPerPage,ReleaseDeductPoint,CommendClassPoint,DefaultItemTemplate,DefaultItemSkin,ItemOpenType,ItemCount,UpgradePoint,Meta_Keywords,Meta_Description) Values (2,998,'出租',1,'ChuZhu',0,0,1,30,4,6,0,0,1,7,5,'','')
Insert Into PE_HouseConfig (ClassID,ChannelID,ClassName,OpenType,ClassDir,SkinID,TemplateID,ShowOnTop,MaxPerPage,ReleaseDeductPoint,CommendClassPoint,DefaultItemTemplate,DefaultItemSkin,ItemOpenType,ItemCount,UpgradePoint,Meta_Keywords,Meta_Description) Values (3,998,'求购',0,'QiuGou',0,0,1,40,7,9,0,0,1,7,8,'','')
Insert Into PE_HouseConfig (ClassID,ChannelID,ClassName,OpenType,ClassDir,SkinID,TemplateID,ShowOnTop,MaxPerPage,ReleaseDeductPoint,CommendClassPoint,DefaultItemTemplate,DefaultItemSkin,ItemOpenType,ItemCount,UpgradePoint,Meta_Keywords,Meta_Description) Values (4,998,'求租',0,'QiuZhu',0,0,1,10,10,12,0,0,1,5,11,'','')
Insert Into PE_HouseConfig (ClassID,ChannelID,ClassName,OpenType,ClassDir,SkinID,TemplateID,ShowOnTop,MaxPerPage,ReleaseDeductPoint,CommendClassPoint,DefaultItemTemplate,DefaultItemSkin,ItemOpenType,ItemCount,UpgradePoint,Meta_Keywords,Meta_Description) Values (5,998,'合租',1,'HeZhu',0,0,1,60,13,15,0,0,1,23,14,'','')


Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'热门文章-首页','用于在首页显示',0,0,'Article_Hot1.js','3|8|0|1|1|0|0|1|20|0|0|1|0|0|0|0|0|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'推荐文章-首页','用于在首页显示',0,0,'Article_Elite1.js','1|8|0|1|0|1|0|1|28|0|0|1|0|3|0|0|0|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'最新热门图片','一行4张',1,0,'Article_HotPic1.js','0|1|4|1|0|30|1|1|130|90|20|0|1|4')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'最新图片文章','一行四张',1,0,'Article_Pic1.js','0|1|4|0|0|30|1|1|130|90|20|0|1|4')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'推荐图片文章-首页','用于Index.asp中使用',1,0,'Article_ElitePic1.js','0|1|2|0|1|0|1|1|65|45|10|0|1|1|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'推荐文章-栏目页','用于在栏目页显示',0,0,'Article_Elite2.js','3|10|0|1|0|1|0|1|22|0|0|1|0|0|0|0|0|0|0|1|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'热门文章-栏目页','用于在栏目页显示',0,0,'Article_Hot2.js','3|10|0|1|1|0|0|1|22|0|0|1|0|0|0|0|0|0|0|1|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'推荐文章-内容页','用于在Article_Show.asp显示',0,0,'Article_Elite3.js','3|10|0|1|0|1|0|1|24|0|0|1|0|0|0|0|0|0|0|1')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'热门文章-内容页','用于在Article_Show.asp显示',0,0,'Article_Hot3.js','3|10|0|1|1|0|0|1|24|0|0|1|0|0|0|0|0|0|0|1')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'网站首页最新图片文章一','网站首页调用最新栏目图片文章一,1列1张',1,0,'Article_Pic01.js','1|1|1|0|0|0|3|1|130|90|18|0|0|1')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'网站首页最新文章','整个网站首页用最新文章，8行，20字',0,0,'Article_New0.js','1|9|0|1|0|0|0|3|30|0|1|0|0|3|1|0|0|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (2,'推荐图片下载','下载首页推荐图片下载，1行每行4张，10个汉字名',1,0,'Soft_ElitePic1.js','0|1|4|0|1|0|3|1|130|90|20|0|0|4')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (2,'左列－热门软件','用于首页左列热门软件，6行，10个汉字',0,0,'Soft_Hot2.js','1|6|0|1|1|0|0|5|18|0|0|0|0|0|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (2,'左列－推荐软件','用于首页左列推荐软件，6行，10个汉字',0,0,'Soft_Elite2.js','1|6|0|1|0|1|0|1|22|0|0|0|0|0|0|0|0|1')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (2,'网站首页最新软件更新','用于网站首页的最新软件更新',0,0,'Soft_New0.js','1|8|0|1|0|0|0|3|24|0|1|0|3|0|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (2,'网站首页最新图片软件更新','网站首页最新图片软件更新',1,0,'Soft_ElitePic0.js','0|1|4|0|1|0|3|1|80|60|14|0|0|2')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (3,'最新热门图片','用于图片显示页左列，6行,8个汉字+点击次数',0,0,'Photo_Hot2.js','1|6|0|1|1|0|0|5|16|0|0|0|0|0|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (3,'最新推荐图片','用于图片显示页左列，6行,11个汉字',0,0,'Photo_Elite2.js','1|6|0|1|0|1|0|3|22|0|0|0|0|0|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (3,'首页最新更新图片','用于图片首页最新更新图片，3行每行4张,10个汉字',1,0,'Photo_New1.js','0|1|12|0|0|0|3|1|130|90|20|0|0|4')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (3,'首页最新热门图片','用于图片首页显示，8行,11个汉字+点击次数',0,0,'Photo_Hot1.js','1|8|0|1|1|0|0|5|22|0|1|0|0|0|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (3,'首页最新推荐图片','用于图片首页显示，8行,10个汉字+更新时间',0,0,'Photo_Elite1.js','2|8|0|1|0|1|0|3|20|0|1|0|3|0|0|0|0|1')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (3,'网站首页最新图片','网站首页最新图片,1行4列',1,0,'Photo_New0.js','0|1|4|0|0|0|3|1|130|90|14|0|0|4')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'网站首页最新栏目一文章','用于网站首页显示最新栏目一文章',0,0,'Article_New01.js','1|6|1|1|0|0|0|3|30|0|1|1|0|3|0|0|1|0|0|0|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'网站首页最新栏目二文章','用于网站首页显示最新栏目二文章',0,0,'Article_New02.js','1|8|8|1|0|0|0|4|30|0|1|1|1|3|0|0|1|0|0|1|0')
Insert Into PE_JsFile (ChannelID,JsName,JsReadme,JsType,ContentType,JsFileName,Config) Values (1,'网站首页最新栏目图片文章二','网站首页调用最新栏目图片文章二,1列1张',1,0,'Article_Pic02.js','8|1|1|0|0|0|3|1|130|90|20|0|0|1|0')

Insert Into PE_MailChannel (ChannelID,UserID,arrClass,SendNum,IsUse) Values (1,'','',10,0)

Insert Into PE_PaymentType (TypeID,TypeName,Intro,Discount,IsDefault,OrderID,IsDisabled) Values (1,'在线支付','可以额外再享受98折优惠！！！',98,1,1,0)
Insert Into PE_PaymentType (TypeID,TypeName,Intro,Discount,IsDefault,OrderID,IsDisabled) Values (2,'余额支付','',100,0,2,0)
Insert Into PE_PaymentType (TypeID,TypeName,Intro,Discount,IsDefault,OrderID,IsDisabled) Values (3,'银行转帐','',100,0,3,0)
Insert Into PE_PaymentType (TypeID,TypeName,Intro,Discount,IsDefault,OrderID,IsDisabled) Values (4,'邮局汇款','',100,0,4,0)
Insert Into PE_PaymentType (TypeID,TypeName,Intro,Discount,IsDefault,OrderID,IsDisabled) Values (5,'货到付款','',100,0,5,0)
Insert Into PE_PaymentType (TypeID,TypeName,Intro,Discount,IsDefault,OrderID,IsDisabled) Values (6,'现金','',100,0,6,0)
Insert Into PE_PaymentType (TypeID,TypeName,Intro,Discount,IsDefault,OrderID,IsDisabled) Values (7,'支票','',100,0,7,0)


Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (1,'网银在线','网银在线','不错的支付平台，界面友好，不掉单','000000','aaaaaaaaaa',1,0,2,0,1)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (2,'中国在线支付网','中国在线支付网','不是很好，不推荐','000000','aaaaaaaaaa',1,0,3,1,0)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (3,'上海环迅','上海环迅','老牌支付平台','000000','aaaaaaaaaa',1,0,4,1,0)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (5,'西部支付','西部支付','不推荐','000000','aaaaaaaaaa',1,0,5,1,0)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (6,'易付通','易付通','不错的支付平台','000000','aaaaaaaaaa',1,0,6,1,0)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (7,'云网支付','云网支付','不错的支付平台','000000','aaaaaaaaaa',1,0,7,1,0)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (8,'支付宝','支付宝','用户会无法直接拿到卡号和密码','000000','aaaaaaaaaa',1,0,8,1,0)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (9,'快钱支付','快钱支付','不错的支付平台，界面友好','000000','aaaaaaaaaa',1,0,9,1,0)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (11,'快钱神州行','快钱神州行','','000000','aaaaaaaaaa',1,0,10,0,0)
Insert into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (12,'支付宝即时到帐','支付宝','支付宝即时到帐方式','000000','aaaaaaaaaa',1,0,11,0,0)
Insert Into PE_PayPlatform (PlatformID,PlatformName,ShowName,Description,AccountsID,MD5Key,Rate,PlusPoundage,OrderID,IsDisabled,IsDefault) Values (13,'财付通','财付通','国内目前唯一免手续费的支付平台！强力推荐！','000000','aaaaaaaaaa',1,0,1,0,0);

Insert Into PE_User (UserID,GroupID,ClientID,ContacterID,CompanyID,UserType,UserName,UserPassword,LastPassword,Question,Answer,Email,UserFace,FaceWidth,FaceHeight,Sign,RegTime,JoinTime,LastLoginTime,LastPresentTime,LastLoginIP,LoginTimes,Balance,UserPoint,UserExp,ConsumePoint,PostItems,PassedItems,DelItems,UnsignedItems,UnreadMsg,BeginTime,ValidNum,ValidUnit,IsLocked,SpecialPermission,arrClass_Browse,arrClass_View,arrClass_Input,Privacy,UserFriendGroup,UserSetting,CheckNum,Blog) Values (1,1,0,0,0,0,'admin','469e80d32c0559f8','2KB4EqPddx2A3178','系统默认提示问题','907b7b858285dd4a','info@powereasy.net','',0,0,'','2006-1-1','2006-1-1','2006-1-1 12:00:00','2006-1-1 12:00:00','127.0.0.1',2,0,0,0,0,0,0,0,'',0,'2006-1-1',-1,1,0,0,'','','',0,'黑名单$我的好友','',0,0)

Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (-1,'匿名','匿名投稿用户权限设置',5,'Articlenone,Softnone,Photonone','Articlenone,Softnone,Photonone','Articlenone,Softnone,Photonone','0,0,0,10,1,0,0,1,500,0,1024,100,0,0,0,0,0,100,0,0,0,0,0,0,0,0,0,10,0,0,0')
Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (1,'注册会员','普通注册会员。当新注册的会员通过邮件验证及管理员审核后，就会自动转入到此会员组中',2,'Articleall,Softall,Photoall','Articleall,Softall,Photoall','Articleall,Softall,Photoall','0,0,0,20,1,0,0,5,100,0,100,100,0,0,0,2,0,8,1,1,1,0,0,0,0,1,0,5,0,0,0')
Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (2,'商业客户','当会员在网站上购买了商品，可以将之移到此会员组，以给某些特别权限',3,'Softnone,Photonone','Softnone,Photonone','Softnone,Photonone','0,0,0,300,1.2,0,1,20,2000,1,500,80,1,0,1,300,10,1,0,0,0')
Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (3,'VIP客户','特别重要的一些会员，可以指定更多特权',3,'Articlenone,,Photonone','Articlenone,,Photonone','Articlenone,Softall,Photonone','0,1,1,500,2,1,1,1000,5000,1,1024,70,1,100,2,0,0,0,0,0,0')
Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (4,'普通代理','本站的代理商，拥有代理接口',4,'Articleall,Softall,Photoall','Articleall,Softall,Photoall','Articleall,Softall,Photoall','0,1,1,1000,2,1,1,1000,5000,1,1024,50,0,200,1,800,30,1,0,0,0')
Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (5,'金牌代理','更高级别的代理，享受更多折扣',4,'Articleall,Softall,Photoall','Articleall,Softall,Photoall','Articleall,Softall,Photoall','0,1,1,1000,2,1,1,2000,5000,1,1024,100,0,200,1,1000,100,1,0,0,0')
Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (6,'钻石代理','最高级别的代理商，可以享受最多的权限及优惠',4,'Articleall,Softall,Photoall','Articleall,Softall,Photoall','Articleall,Softall,Photoall','0,1,1,1000,2,1,1,2000,5000,1,2048,30,0,200,1,500,50,1,0,0,0')
Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (7,'待审批会员','如果在网站配置中设置了会员注册时需要管理员审核，则新会员注册后，会自动加入到此会员组中',1,'Articlenone,Softnone,Photonone','Articlenone,Softnone,Photonone','Articlenone,Softnone,Photonone','0,0,0,10,1,0,0,0,0,0,0,100,0,0,1,20,10,1,0,0,0')
Insert Into PE_UserGroup (GroupID,GroupName,GroupIntro,GroupType,arrClass_Browse,arrClass_View,arrClass_Input,GroupSetting) Values (8,'未验证会员','在网站配置中设定会员注册需要邮件验证，则会员注册时会自动添加到此会员组中。',0,'Articlenone,Softnone,Photonone','Articlenone,Softnone,Photonone','Articlenone,Softnone,Photonone','0,0,0,10,1,0,0,0,0,0,0,100,0,0,1,10,1,1,0,0,0')


SET NOCOUNT OFF
PRINT '数据库创建完成！'
