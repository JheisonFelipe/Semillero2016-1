USE [Store]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[IdCategory] [int] NOT NULL,
	[Name] [nchar](30) NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Checks]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Checks](
	[IdCheck] [int] NOT NULL,
	[CheckNumber] [int] NULL,
	[CheckBank] [nchar](50) NULL,
 CONSTRAINT [PK_Check] PRIMARY KEY CLUSTERED 
(
	[IdCheck] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[City]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[City](
	[IdCity] [tinyint] NOT NULL,
	[Name] [nchar](30) NULL,
 CONSTRAINT [PK_City] PRIMARY KEY CLUSTERED 
(
	[IdCity] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CreditCard]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CreditCard](
	[IdCreditCard] [int] NOT NULL,
	[CreditCardNumber] [int] NULL,
	[ExpirationDate] [date] NULL,
 CONSTRAINT [PK_CreditCard] PRIMARY KEY CLUSTERED 
(
	[IdCreditCard] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[IdCustomer] [tinyint] NOT NULL,
	[IdTypeId] [tinyint] NOT NULL,
	[Foto] [image] NULL,
	[IdCity] [tinyint] NOT NULL,
	[FirtsName] [nchar](50) NOT NULL,
	[LastName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[IdCustomer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[IdEvaluation] [tinyint] NOT NULL,
	[Score] [nchar](10) NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[IdEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Events]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Events](
	[IdEvents] [int] NOT NULL,
	[Description] [nchar](100) NULL,
 CONSTRAINT [PK_Event] PRIMARY KEY CLUSTERED 
(
	[IdEvents] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Factory]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Factory](
	[IdFactory] [int] NOT NULL,
	[Name] [nchar](50) NULL,
	[IdEvaluation] [tinyint] NULL,
 CONSTRAINT [PK_Factory] PRIMARY KEY CLUSTERED 
(
	[IdFactory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[FactoryEvaluation]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactoryEvaluation](
	[IdFactoryEvaluation] [int] NOT NULL,
	[IdEvaluation] [tinyint] NULL,
 CONSTRAINT [PK_FactoryEvaluation] PRIMARY KEY CLUSTERED 
(
	[IdFactoryEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Offer]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Offer](
	[IdOffer] [int] NOT NULL,
	[Name] [nchar](100) NULL,
	[Description] [nchar](150) NULL,
	[DateStart] [date] NULL,
	[DateEnd] [date] NULL,
	[PercentageOffer] [float] NULL,
	[IdProduct] [int] NULL,
 CONSTRAINT [PK_Offer] PRIMARY KEY CLUSTERED 
(
	[IdOffer] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[OrderDetail]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderDetail](
	[IdOrderDetail] [int] NOT NULL,
	[IdOrder] [int] NULL,
	[IdProduct] [int] NULL,
	[IdTax] [int] NULL,
	[QuantityTotal] [int] NULL,
	[SubTotal] [float] NULL,
	[Observation] [nchar](100) NULL,
	[Discount] [float] NULL,
 CONSTRAINT [PK_OrderDetail] PRIMARY KEY CLUSTERED 
(
	[IdOrderDetail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Orders]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[IdOrder] [int] NOT NULL,
	[DateOrder] [date] NULL,
	[IdStatus] [tinyint] NULL,
	[IdPayment] [int] NULL,
	[Total] [float] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[IdOrder] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Payment]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Payment](
	[IdPayment] [int] NOT NULL,
	[DatePayment] [date] NULL,
	[IdPaymentType] [int] NULL,
	[Amount] [float] NULL,
 CONSTRAINT [PK_Payment] PRIMARY KEY CLUSTERED 
(
	[IdPayment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[PaymentType]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PaymentType](
	[IdPaymentType] [int] NOT NULL,
	[IdCreditcard] [int] NULL,
	[IdPaypal] [int] NULL,
	[IdCheck] [int] NULL,
 CONSTRAINT [PK_PaymentType] PRIMARY KEY CLUSTERED 
(
	[IdPaymentType] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paypal]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paypal](
	[IdPaypal] [int] NOT NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK_Paypal] PRIMARY KEY CLUSTERED 
(
	[IdPaypal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] NOT NULL,
	[Name] [nchar](30) NULL,
	[Description] [nchar](200) NULL,
	[IdCategory] [int] NULL,
	[Quantity] [int] NULL,
	[UnitPrice] [float] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductEvaluation]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductEvaluation](
	[IdProductEvaluation] [int] NOT NULL,
	[IdEvaluation] [tinyint] NULL,
	[IdCustomer] [tinyint] NULL,
	[IdSeller] [tinyint] NULL,
	[IdSale] [tinyint] NULL,
 CONSTRAINT [PK_ProductEvaluation] PRIMARY KEY CLUSTERED 
(
	[IdProductEvaluation] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[ProductUser]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductUser](
	[IdProductUser] [int] NOT NULL,
	[IdUser] [int] NULL,
 CONSTRAINT [PK_ProductUser] PRIMARY KEY CLUSTERED 
(
	[IdProductUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[IdRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](20) NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[IdRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sale]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sale](
	[IdSale] [tinyint] NOT NULL,
	[IdProduct] [tinyint] NULL,
	[IdCustomer] [tinyint] NULL,
	[DateSale] [date] NULL,
	[IdOrders] [tinyint] NULL,
	[IdCity] [tinyint] NULL,
	[IdSphiment] [tinyint] NULL,
	[IdUsers] [ntext] NULL,
 CONSTRAINT [PK_Sale] PRIMARY KEY CLUSTERED 
(
	[IdSale] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Shipment]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shipment](
	[IdShipment] [int] NOT NULL,
	[IdOrder] [int] NULL,
	[IdUser] [int] NULL,
	[IdFactory] [int] NULL,
	[IdStatus] [tinyint] NULL,
	[ShipmentDate] [date] NULL,
	[ArrivalDate] [date] NULL,
 CONSTRAINT [PK_Shipment] PRIMARY KEY CLUSTERED 
(
	[IdShipment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[State]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[State](
	[IdState] [tinyint] NOT NULL,
	[Name] [nchar](30) NULL,
	[IdCity] [tinyint] NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[IdState] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[IdStatus] [tinyint] NOT NULL,
	[Description] [nchar](20) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[IdStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tax]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tax](
	[IdTax] [int] NOT NULL,
	[TaxPercent] [float] NULL,
	[IdCity] [tinyint] NOT NULL,
 CONSTRAINT [PK_Tax] PRIMARY KEY CLUSTERED 
(
	[IdTax] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[TypeId]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TypeId](
	[IdTypeId] [tinyint] IDENTITY(1,1) NOT NULL,
	[Type] [nchar](10) NULL,
 CONSTRAINT [PK_TypeId] PRIMARY KEY CLUSTERED 
(
	[IdTypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserEvent]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserEvent](
	[IdEventUser] [int] NOT NULL,
	[IdUser] [int] NULL,
	[IdEvent] [int] NULL,
	[DateLogin] [date] NULL,
	[DateLogout] [date] NULL,
	[ProcedureUser] [nchar](100) NULL,
	[Likes] [nchar](100) NULL,
 CONSTRAINT [PK_UserEvent] PRIMARY KEY CLUSTERED 
(
	[IdEventUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[UserRole]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRole](
	[IdUserRole] [tinyint] IDENTITY(1,1) NOT NULL,
	[IdUser] [int] NULL,
	[IdRole] [int] NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[IdUserRole] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Users]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[IdUser] [int] NOT NULL,
	[IdTypeId] [tinyint] NOT NULL,
	[UserName] [nchar](20) NULL,
	[Password] [nchar](40) NULL,
	[Email] [nchar](50) NULL,
	[PhoneNumber] [nchar](30) NULL,
	[IdRole] [tinyint] NULL,
	[FactoryName] [nchar](10) NULL,
	[IdCreditCard] [int] NULL,
	[IdPayPal] [int] NULL,
	[IdStatus] [tinyint] NULL,
	[PostalCode] [tinyint] NULL,
	[Adress] [nchar](70) NULL,
	[Photo] [image] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[IdUser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
ALTER TABLE [dbo].[Factory]  WITH CHECK ADD  CONSTRAINT [FK_Factory_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[Factory] CHECK CONSTRAINT [FK_Factory_Evaluation]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[FactoryEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_FactoryEvaluation_Factory] FOREIGN KEY([IdFactoryEvaluation])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[FactoryEvaluation] CHECK CONSTRAINT [FK_FactoryEvaluation_Factory]
GO
ALTER TABLE [dbo].[Offer]  WITH CHECK ADD  CONSTRAINT [FK_Offer_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Offer] CHECK CONSTRAINT [FK_Offer_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Orders] ([IdOrder])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Order]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Product]
GO
ALTER TABLE [dbo].[OrderDetail]  WITH CHECK ADD  CONSTRAINT [FK_OrderDetail_Tax] FOREIGN KEY([IdTax])
REFERENCES [dbo].[Tax] ([IdTax])
GO
ALTER TABLE [dbo].[OrderDetail] CHECK CONSTRAINT [FK_OrderDetail_Tax]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Payment] FOREIGN KEY([IdPayment])
REFERENCES [dbo].[Payment] ([IdPayment])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Payment]
GO
ALTER TABLE [dbo].[Orders]  WITH CHECK ADD  CONSTRAINT [FK_Order_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Orders] CHECK CONSTRAINT [FK_Order_Status]
GO
ALTER TABLE [dbo].[Payment]  WITH CHECK ADD  CONSTRAINT [FK_Payment_PaymentType] FOREIGN KEY([IdPaymentType])
REFERENCES [dbo].[PaymentType] ([IdPaymentType])
GO
ALTER TABLE [dbo].[Payment] CHECK CONSTRAINT [FK_Payment_PaymentType]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Check] FOREIGN KEY([IdCheck])
REFERENCES [dbo].[Checks] ([IdCheck])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Check]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_CreditCard] FOREIGN KEY([IdCreditcard])
REFERENCES [dbo].[CreditCard] ([IdCreditCard])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_CreditCard]
GO
ALTER TABLE [dbo].[PaymentType]  WITH CHECK ADD  CONSTRAINT [FK_PaymentType_Paypal] FOREIGN KEY([IdPaypal])
REFERENCES [dbo].[Paypal] ([IdPaypal])
GO
ALTER TABLE [dbo].[PaymentType] CHECK CONSTRAINT [FK_PaymentType_Paypal]
GO
ALTER TABLE [dbo].[Paypal]  WITH CHECK ADD  CONSTRAINT [FK_Paypal_tbl_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[Paypal] CHECK CONSTRAINT [FK_Paypal_tbl_User]
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Evaluation] FOREIGN KEY([IdEvaluation])
REFERENCES [dbo].[Evaluation] ([IdEvaluation])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Evaluation]
GO
ALTER TABLE [dbo].[ProductEvaluation]  WITH CHECK ADD  CONSTRAINT [FK_ProductEvaluation_Product] FOREIGN KEY([IdProductEvaluation])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductEvaluation] CHECK CONSTRAINT [FK_ProductEvaluation_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_Product] FOREIGN KEY([IdProductUser])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_Product]
GO
ALTER TABLE [dbo].[ProductUser]  WITH CHECK ADD  CONSTRAINT [FK_ProductUser_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[ProductUser] CHECK CONSTRAINT [FK_ProductUser_User]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Factory] FOREIGN KEY([IdFactory])
REFERENCES [dbo].[Factory] ([IdFactory])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Factory]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Order] FOREIGN KEY([IdOrder])
REFERENCES [dbo].[Orders] ([IdOrder])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Order]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_Status]
GO
ALTER TABLE [dbo].[Shipment]  WITH CHECK ADD  CONSTRAINT [FK_Shipment_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[Shipment] CHECK CONSTRAINT [FK_Shipment_User]
GO
ALTER TABLE [dbo].[State]  WITH CHECK ADD  CONSTRAINT [FK_State_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([IdCity])
GO
ALTER TABLE [dbo].[State] CHECK CONSTRAINT [FK_State_City]
GO
ALTER TABLE [dbo].[Tax]  WITH CHECK ADD  CONSTRAINT [FK_Tax_City] FOREIGN KEY([IdCity])
REFERENCES [dbo].[City] ([IdCity])
GO
ALTER TABLE [dbo].[Tax] CHECK CONSTRAINT [FK_Tax_City]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_Event] FOREIGN KEY([IdEvent])
REFERENCES [dbo].[Events] ([IdEvents])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_Event]
GO
ALTER TABLE [dbo].[UserEvent]  WITH CHECK ADD  CONSTRAINT [FK_UserEvent_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[UserEvent] CHECK CONSTRAINT [FK_UserEvent_User]
GO
ALTER TABLE [dbo].[UserRole]  WITH CHECK ADD  CONSTRAINT [FK_UserRole_User] FOREIGN KEY([IdUser])
REFERENCES [dbo].[Users] ([IdUser])
GO
ALTER TABLE [dbo].[UserRole] CHECK CONSTRAINT [FK_UserRole_User]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_CreditCard] FOREIGN KEY([IdCreditCard])
REFERENCES [dbo].[CreditCard] ([IdCreditCard])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_tbl_User_CreditCard]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_Paypal] FOREIGN KEY([IdPayPal])
REFERENCES [dbo].[Paypal] ([IdPaypal])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_tbl_User_Paypal]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_Role] FOREIGN KEY([IdRole])
REFERENCES [dbo].[Role] ([IdRole])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_tbl_User_Role]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_Status] FOREIGN KEY([IdStatus])
REFERENCES [dbo].[Status] ([IdStatus])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_tbl_User_Status]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_tbl_User_TypeId] FOREIGN KEY([IdTypeId])
REFERENCES [dbo].[TypeId] ([IdTypeId])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_tbl_User_TypeId]
GO
/****** Object:  StoredProcedure [dbo].[procedureCategory]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureCategory]
(
@Accion nchar(30),
@IdCategory int,
@Name nchar(30),
@Description nchar(100),
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdCategory FROM dbo.Category WHERE IdCategory = @IdCategory)
		SET @Menssage ='The Category Exist'
   ELSE
		INSERT INTO dbo.Category(IdCategory, Name, Description)
		Values
			        (@IdCategory, @Name, @Description)
           SET @Menssage = 'Product registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdCategory) FROM dbo.Category Where IdCategory = @IdCategory) 
	
	SET @Menssage ='The Category does not exist'

  ELSE
  
	UPDATE [dbo].[Category] SET  IdCategory = @IdCategory, Name = @Name, Description = @Description 
  
	WHERE IdCategory =@IdCategory 
						SET @Menssage = 'The Category Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdCategory) FROM dbo.Category WHERE IdCategory = @IdCategory)
	      SET @menssage = 'The Category does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM Category WHERE IdCategory = @IdCategory
		  SET @menssage = 'The Category delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdCategory, Name, Description  FROM dbo.Category 
		WHERE  Name LIKE '%'+@Name+'%' ORDER BY Category.Name
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureChecks]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureChecks]
(
@Accion nchar(30),
@IdCheck int,
@CheckNumber int,
@ChekBank nchar(50),
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdCheck FROM dbo.Checks WHERE IdCheck = @IdCheck)
		SET @Menssage ='The Checks Exist'
   ELSE
		INSERT INTO dbo.Category(IdCategory, Name, Description)
		Values
			        (@IdCheck, @CheckNumber, @ChekBank)
           SET @Menssage = 'Checks registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdCheck) FROM dbo.Checks Where IdCheck = @IdCheck) 
	
	SET @Menssage ='The Checks does not exist'

  ELSE
  
	UPDATE [dbo].[Checks] SET  IdCheck = @IdCheck, CheckNumber = @CheckNumber, CheckBank = @ChekBank 
  
	WHERE IdCheck =@IdCheck 
						SET @Menssage = 'The Checks  Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdCheck) FROM dbo.Checks WHERE IdCheck = @IdCheck)
	      SET @menssage = 'The Checks does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.Checks WHERE IdCheck = @IdCheck
		  SET @menssage = 'The Checks delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdCheck, CheckNumber, CheckBank  FROM dbo.Checks 
		WHERE  CheckNumber LIKE '%'+@CheckNumber+'%' ORDER BY Checks.CheckNumber
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureCity]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureCity]
(
@Accion nchar(30),
@IdCity int,
@Name nchar(30),
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdCity FROM dbo.City WHERE IdCity = @IdCity)
		SET @Menssage ='The City Exist'
   ELSE
		INSERT INTO dbo.City(IdCity, Name)
		Values
			        (@IdCity, @Name)
           SET @Menssage = 'City registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdCity) FROM dbo.City Where IdCity = @IdCity) 
	
	SET @Menssage ='The City does not exist'

  ELSE
  
	UPDATE [dbo].[City] SET  IdCity = @IdCity, Name = @Name
  
	WHERE IdCity=@IdCity
						SET @Menssage = 'The City Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdCity) FROM dbo.City WHERE IdCity = IdCity)
	      SET @menssage = 'The City does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.City WHERE IdCity = @IdCity
		  SET @menssage = 'The City delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdCity, Name FROM dbo.City
		WHERE  Name LIKE '%'+@Name+'%' ORDER BY City.Name
		END

		
END
GO
/****** Object:  StoredProcedure [dbo].[procedureCreditCard]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureCreditCard]
(
@Accion nchar(30),
@IdCreditCard int,
@CreditCardNumber int,
@ExpirationDate date,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdCreditCard FROM dbo.CreditCard WHERE IdCreditCard = @IdCreditCard)
		SET @Menssage ='The CreditCard Exist'
   ELSE
		INSERT INTO dbo.CreditCard(IdCreditCard, CreditCardNumber, ExpirationDate)
		Values
			        (@IdCreditCard, @CreditCardNumber, @ExpirationDate)
           SET @Menssage = 'CreditCard registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdCreditCard) FROM dbo.CreditCard Where IdCreditCard = @IdCreditCard) 
	
	SET @Menssage ='The CreditCard does not exist'

  ELSE
  
	UPDATE [dbo].[CreditCard] SET  IdCreditCard = @IdCreditCard,  CreditCardNumber = @CreditCardNumber, ExpirationDate = @ExpirationDate
  
	WHERE IdCreditCard=@IdCreditCard
						SET @Menssage = 'The CreditCardUpdated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdCreditCard) FROM dbo.CreditCard WHERE IdCreditCard = IdCreditCard)
	      SET @menssage = 'The CreditCard does not exist'
		ELSE  
		BEGIN 
		  DELETE FROM dbo.CreditCard WHERE IdCreditCard=@IdCreditCard
		  SET @menssage = 'The CountryTax delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdCreditCard, CreditCardNumber, ExpirationDate FROM dbo.CreditCard
		WHERE  CreditCardNumber LIKE '%'+@CreditCardNumber+'%' ORDER BY CreditCard.CreditCardNumber

		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureEvalution]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureEvalution]
(
@Accion nchar(30),
@IdEvaluation int,
@Score nchar(10),
@Menssage nvarchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdEvaluation FROM dbo.Evaluation WHERE IdEvaluation = @IdEvaluation)
		SET @Menssage ='The Evalution Exist'
   ELSE
		INSERT INTO dbo.Evaluation(IdEvaluation, Score)
		Values
			        (@IdEvaluation, @Score)
           SET @Menssage = 'Evaluation registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (@IdEvaluation) FROM dbo.Evaluation Where IdEvaluation = @IdEvaluation) 
	
	SET @Menssage ='The Evalution does not exist'

  ELSE
  
	UPDATE [dbo].[Evaluation] SET  IdEvaluation = @IdEvaluation,  Score = @Score
  
	WHERE IdEvaluation=@IdEvaluation
						SET @Menssage = 'The Evaluation successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdEvaluation) FROM dbo.Evaluation Where IdEvaluation = @IdEvaluation)
	      SET @menssage = 'The table Evaluationdo es not exist'
		ELSE  
		BEGIN 
		  DELETE FROM dbo.Evaluation WHERE IdEvaluation=@IdEvaluation
		  SET @menssage = 'The table Evaluation delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdEvaluation, Score FROM dbo.Evaluation
		WHERE  Score LIKE '%'+@Score+'%' ORDER BY Evaluation.Score
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureEvent]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureEvent]
(
@Accion nchar(30),
@IdEvent int,
@Description nchar(100),
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdEvent FROM dbo.Event WHERE IdEvent = @IdEvent)
		SET @Menssage ='The Event Exist'
   ELSE
		INSERT INTO dbo.Event(IdEvent, Description)
		Values
			        (@IdEvent, @Description)
           SET @Menssage = 'Event registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdEvent) FROM dbo.Event Where IdEvent= @IdEvent) 
	
	SET @Menssage ='The Event does not exist'

  ELSE
  
	UPDATE [dbo].[Event] SET  IdEvent = @IdEvent, Description = @Description
  
	WHERE IdEvent=@IdEvent
						SET @Menssage = 'The IdEvent successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdEvent) FROM dbo.Event Where IdEvent = @IdEvent)
	      SET @menssage = 'The table Eventes not exist'
		ELSE  
		BEGIN 
		  DELETE FROM dbo.Event WHERE IdEvent=@IdEvent
		  SET @menssage = 'The table Eventn delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdEvent, Description FROM dbo.Event
		WHERE Description  LIKE '%'+@Description+'%' ORDER BY Event.Description
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureFactory]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureFactory]
(
@Accion nchar(30),
@IdFactory int,
@Name nchar(50),
@IdEvaluation int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdFactory FROM dbo.Factory WHERE IdFactory = @IdFactory)
		SET @Menssage ='The Factory Exist'
   ELSE
		INSERT INTO dbo.Factory(IdFactory, Name,IdEvaluation)
		Values
			        (@IdFactory, @Name,  @IdEvaluation)
           SET @Menssage = 'Factory registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdFactory) FROM dbo.Factory Where IdFactory= @IdFactory) 
	
	SET @Menssage ='The Factory does not exist'

  ELSE
  
	UPDATE [dbo].[Factory] SET  IdFactory = @IdFactory, Name = @Name,IdEvaluation = @IdEvaluation 
  
	WHERE IdFactory=@IdFactory
						SET @Menssage = 'The  Factory successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdFactory) FROM dbo.Factory Where IdFactory = @IdFactory)
	      SET @menssage = 'The Factory not exist'
		ELSE  
		BEGIN 
		  DELETE FROM dbo.Factory WHERE IdFactory=@IdFactory
		  SET @menssage = 'The Factory delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdFactory, Name, IdEvaluation FROM dbo.Factory
		WHERE Name  LIKE '%'+@Name+'%' ORDER BY dbo.Factory.Name
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureFactoryEvalution]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureFactoryEvalution]
(
@Accion nchar(30),
@IdFactory int,
@IdEvaluation int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdFactoryEvaluation FROM dbo.FactoryEvaluation WHERE IdFactoryEvaluation = @IdFactory)
		SET @Menssage ='The FactoryEvaliation Exist'
   ELSE
		INSERT INTO dbo.FactoryEvaluation(IdFactoryEvaluation,IdEvaluation)
		Values
			        (@IdFactory, @IdEvaluation)
           SET @Menssage = 'FactoryEvaluation registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdFactoryEvaluation) FROM dbo.FactoryEvaluation Where IdFactoryEvaluation= @IdFactory) 
	
	SET @Menssage ='The FactoryEvaluation does not exist'

  ELSE
  
	UPDATE [dbo].[FactoryEvaluation] SET  IdFactoryEvaluation = @IdFactory, IdEvaluation = @IdEvaluation 
  
	WHERE IdFactoryEvaluation=@IdFactory
						SET @Menssage = 'The  FactoryEvaluation successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdFactoryEvaluation) FROM dbo.FactoryEvaluation Where IdFactoryEvaluation = @IdFactory)
	      SET @menssage = 'The FactoryEvaluation not exist'
		ELSE  
		BEGIN 
		  DELETE FROM dbo.Factory WHERE IdFactory=@IdFactory
		  SET @menssage = 'The FactoryEvalution delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdFactoryEvaluation,  IdEvaluation FROM dbo.FactoryEvaluation
		WHERE IdFactoryEvaluation  LIKE '%'+@IdFactory+'%' ORDER BY dbo.FactoryEvaluation.IdFactoryEvaluation
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureOffer]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureOffer]
(
@Accion nchar(30),
@IdOffer int,
@Name nchar(100),
@Description nchar(150),
@DateStart date,
@DateEnd date,
@PercentageOffer float,
@IdProduct int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdOffer FROM dbo.Offer WHERE IdOffer = @IdOffer)
		SET @Menssage ='The Offer Exist'
   ELSE
		INSERT INTO dbo.Offer(IdOffer,Name,Description,DateStart, DateEnd,IdProduct)
		Values
			        (@IdOffer,@Name,@Description,@DateStart,@DateEnd,@IdProduct)
           SET @Menssage = 'Offer registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdOffer) FROM dbo.Offer Where IdOffer= @IdOffer) 
	
	SET @Menssage ='The IdOffer does not exist'

  ELSE
  
	UPDATE [dbo].[Offer] SET  IdOffer= @IdOffer, Name = @Name, Description = @Description, DateStart = @DateStart, PercentageOffer = @PercentageOffer, IdProduct = @IdProduct
  
	WHERE IdOffer=@IdOffer
						SET @Menssage = 'The  Offer successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdOffer) FROM dbo.Offer Where IdOffer = @IdOffer)
	      SET @menssage = 'The Offer not exist'
		ELSE  
		BEGIN 
		  DELETE FROM dbo.Offer WHERE IdOffer=@IdOffer
		  SET @menssage = 'The Offer delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdOffer,Name, Description , DateStart, DateEnd, PercentageOffer, IdProduct FROM dbo.Offer
		WHERE Name  LIKE '%'+@Name+'%' ORDER BY dbo.Offer.Name
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureOrder]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureOrder]
(
@Accion nchar(30),
@IdOrder int,
@DateOrder date,
@idStatus int,
@idPayment int,
@Total float,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdOrder FROM dbo.Orders WHERE IdOrder = @IdOrder)
		SET @Menssage ='The Order Exist'
   ELSE
		INSERT INTO dbo.Orders(IdOrder,DateOrder, IdStatus, IdPayment, Total)
		Values
			        (@IdOrder,@DateOrder,@IdStatus,@IdPayment,@Total)
           SET @Menssage = 'Order registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdOrder) FROM dbo.Orders Where IdOrder = @IdOrder ) 
	
	SET @Menssage ='The Order does not exist'

  ELSE
  
	UPDATE [dbo].[Orders] SET  IdOrder = @IdOrder,DateOrder = @DateOrder, IdStatus = @idStatus, IdPayment = @idPayment, Total = @Total
  
	WHERE  IdOrder=@IdOrder
						SET @Menssage = 'The  Order successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT ( IdOrder) FROM dbo.Orders Where  IdOrder = @IdOrder)
	      SET @menssage = 'The Order not exist'
		ELSE  
		BEGIN 
		  DELETE FROM dbo.Orders WHERE  IdOrder=@IdOrder
		  SET @menssage = 'The Order delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdOrder,DateOrder, IdStatus, IdPayment, Total FROM dbo.Orders
		WHERE IdOrder LIKE '%'+@IdOrder+'%' ORDER BY dbo.Orders.IdOrder
		END


END

GO
/****** Object:  StoredProcedure [dbo].[procedureOrderDetail]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureOrderDetail]
(
@Accion nchar(30),
@IdOrderDetail int,
@IdOrder int,
@IdProduct int,
@IdTax int,
@QuantityTotal int,
@SubTotal float,
@Observation nchar(100),
@Discount float,
@Menssage nvarchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdOrderDetail FROM dbo.OrderDetail WHERE IdOrderDetail = @IdOrderDetail)
		SET @Menssage ='The OrderDetail Exist'
   ELSE
		INSERT INTO dbo.OrderDetail(IdOrderDetail,IdOrder,IdProduct, IdTax, QuantityTotal, SubTotal, Observation, Discount)
		Values
			        (@IdOrderDetail,@IdOrder,@IdProduct, @IdTax, @QuantityTotal, @SubTotal, @Observation, @Discount)
           SET @Menssage = 'OrderDetail registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdOrderDetail) FROM dbo.OrderDetail Where IdOrderDetail = @IdOrderDetail) 
	
	SET @Menssage ='The OrderDetail does not exist'

  ELSE
  
	UPDATE [dbo].[OrderDetail] SET  IdOrderDetail = @IdOrderDetail,IdOrder = @IdOrder,IdProduct = @IdProduct, IdTax = @IdTax, QuantityTotal = @QuantityTotal, SubTotal =  @SubTotal, Observation = @Observation, Discount =@Discount
  
	WHERE  IdOrderDetail=@IdOrderDetail
						SET @Menssage = 'The  OrderDetail successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT ( IdOrderDetail) FROM dbo.OrderDetail Where  IdOrderDetail = @IdOrderDetail)
	      SET @menssage = 'The OrderDetail not exist'
		ELSE  
		BEGIN 
		  DELETE FROM dbo.OrderDetail WHERE  IdOrderDetail=@IdOrderDetail
		  SET @menssage = 'The OrderDetail delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdOrderDetail,IdOrder,IdProduct, IdTax, QuantityTotal,SubTotal,Observation, Discount FROM dbo.OrderDetail
		WHERE IdOrderDetail LIKE '%'+@IdOrderDetail+'%' ORDER BY dbo.OrderDetail.IdOrderDetail
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedurePayment]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedurePayment]
(
@Accion nchar(30),
@IdPayment int,
@DatePayment date,
@IdPaymentType int,
@Amount float,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdPayment FROM dbo.Payment WHERE IdPayment = @IdPayment)
		SET @Menssage ='The PaymentExist'
   ELSE
		INSERT INTO dbo.Payment(IdPayment, DatePayment, IdPaymentType, Amount)
		Values
			        (@IdPayment, @DatePayment, @IdPaymentType, @Amount)
           SET @Menssage = 'Payment registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdPayment) FROM dbo.Payment Where IdPayment = @IdPayment) 
	
	SET @Menssage ='The Payment does not exist'

  ELSE
  
	UPDATE [dbo].[Payment] SET  IdPayment = @IdPayment,  DatePayment= @DatePayment, IdPaymentType=@IdPaymentType, Amount = @Amount
  
	WHERE  @Amount =@Amount
						SET @Menssage = 'The  Payment Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT ( IdPayment) FROM dbo.Payment WHERE IdPayment = @IdPayment)
	      SET @menssage = 'The Payment does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.Payment WHERE IdPayment = @IdPayment
		  SET @menssage = 'The Payment delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdPayment, DatePayment, IdPaymentType, Amount Description  FROM dbo.Payment
		WHERE  IdPayment LIKE '%'+@IdPayment+'%' ORDER BY dbo.Payment.IdPayment
		END


END
GO
/****** Object:  StoredProcedure [dbo].[ProcedurePaymentType]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ProcedurePaymentType]
(
@Accion nchar(30),
@IdPaymentType int,
@IdCreditcard int,
@IdPaypal int,
@IdCheck int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdPaymentType FROM dbo.PaymentType WHERE IdPaymentType = @IdPaymentType)
		SET @Menssage ='The PaymentType'
   ELSE
		INSERT INTO dbo.PaymentType(IdPaymentType, IdCreditcard, IdPaypal,IdCheck)
		Values
			        (@IdPaymentType, @IdCreditcard, @IdPaypal, @IdCheck)
           SET @Menssage = 'PaymentType registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdPaymentType) FROM dbo.PaymentType Where IdPaymentType = @IdPaymentType) 
	
	SET @Menssage ='The PaymentType does not exist'

  ELSE
  
	UPDATE [dbo].[PaymentType] SET  IdPaymentType = @IdPaymentType, IdCreditcard=@IdCreditcard, IdPaypal= @IdPaypal, IdCheck=@IdCheck
  
	WHERE  IdPaymentType =@IdPaymentType
						SET @Menssage = 'The  Paymentype Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT ( IdPaymentType) FROM dbo.PaymentType WHERE IdPaymentType = @IdPaymentType)
	      SET @menssage = 'The PaymentType does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.PaymentType WHERE IdPaymentType = @IdPaymentType
		  SET @menssage = 'The PaymentTypedelete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdPaymentType, IdCreditcard, IdPaypal, IdCheck  FROM dbo.PaymentType
		WHERE  IdPaymentType LIKE '%'+@IdPaymentType+'%' ORDER BY dbo.PaymentType.IdPaymentType
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedurePaypal]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedurePaypal]
(
@Accion nchar(30),
@IdPaypal int,
@IdUser int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdPaypal FROM dbo.Paypal WHERE IdPaypal = @IdPaypal)
		SET @Menssage ='The Paypal dont exits'
   ELSE
		INSERT INTO dbo.Paypal(IdPaypal, IdUser)
		Values
			        (@IdPaypal, @IdUser)
           SET @Menssage = 'Paypal registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdPaypal) FROM dbo.Paypal Where IdPaypal = @IdPaypal) 
	
	SET @Menssage ='The Paypal does not exist'

  ELSE
  
	UPDATE [dbo].[Paypal] SET  IdPaypal = @IdPaypal, IdUser=@IdUser
  
	WHERE  IdPaypal =@IdPaypal
						SET @Menssage = 'The  Paypal Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT ( IdPaypal) FROM dbo.Paypal WHERE IdPaypal= @IdPaypal)
	      SET @menssage = 'The Paypal does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.Paypal WHERE IdPaypal = @IdPaypal
		  SET @menssage = 'The Paypal  delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdPaypal, @IdUser FROM dbo.Paypal
		WHERE  IdPaypal LIKE '%'+@IdPaypal+'%' ORDER BY dbo.Paypal.IdPaypal
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureProduct]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureProduct]
(
@Accion nchar(20),
@idProduct int,
@Name nchar(30),
@Description nchar(200),
@idCategory int,
@Quantity int,
@UniPrice float,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT idProduct FROM Product WHERE idProduct = @idProduct)
		SET @Menssage ='The Product Exist'
   ELSE
		INSERT INTO Product(IdProduct, Name, Description, IdCategory,  Quantity, UnitPrice)
		Values
			        (@idProduct, @Name, @Description, @idCategory,  @Quantity, @UniPrice)
           SET @Menssage = 'Product registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdProduct) FROM Product Where IdProduct = @idProduct) 
	
	SET @Menssage ='The Product does not exist'

  ELSE
  
	UPDATE [dbo].[Product] SET  IdProduct = @idProduct, Name = @Name, Description = @Description, IdCategory = @idCategory,  Quantity = @Quantity, UnitPrice = @UniPrice
  
	WHERE IdProduct =@idProduct  
						SET @Menssage = 'The Product Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (idProduct) FROM Product WHERE IdProduct = @idProduct)
	      SET @menssage = 'The Product does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM Product WHERE IdProduct = @idProduct
		  SET @menssage = 'The Product delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdProduct, Name, Description, IdCategory, Quantity, UnitPrice FROM Product 
		WHERE  Name LIKE '%'+@Name+'%' ORDER BY Product.Name
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureProductEvaluation]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureProductEvaluation]
(
@Accion nchar(30),
@IdProductEvaluation int,
@IdEvaluation int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdProductEvaluation  FROM dbo.ProductEvaluation WHERE IdProductEvaluation = @IdProductEvaluation)
		SET @Menssage ='The ProductEvaluation  dont exits'
   ELSE
		INSERT INTO dbo.ProductEvaluation(IdProductEvaluation , IdEvaluation )
		Values
			        (@IdProductEvaluation , @IdEvaluation )
           SET @Menssage = 'Product  registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdProductEvaluation) FROM dbo.ProductEvaluation Where IdProductEvaluation= @IdProductEvaluation) 
	
	SET @Menssage ='The ProductEvaluation does not exist'

  ELSE
  
	UPDATE [dbo].[ProductEvaluation] SET  IdProductEvaluation= @IdProductEvaluation, IdEvaluation=@IdEvaluation
  
	WHERE  IdProductEvaluation =@IdProductEvaluation
						SET @Menssage = 'The  ProductEvaluation Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT ( IdProductEvaluation) FROM dbo.ProductEvaluation WHERE IdProductEvaluation= @IdProductEvaluation)
	      SET @menssage = 'The Evaluation does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.ProductEvaluation WHERE IdProductEvaluation = @IdProductEvaluation
		  SET @menssage = 'The ProductEvaluation delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdProductEvaluation, @IdEvaluation FROM dbo.ProductEvaluation
		WHERE  IdProductEvaluation LIKE '%'+@IdProductEvaluation+'%' ORDER BY dbo.ProductEvaluation.IdProductEvaluation
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureProductUser]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureProductUser]
(
@Accion nchar(30),
@IdProductUser int,
@IdUser int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdProductUser  FROM dbo.ProductUser WHERE IdProductUser = @IdProductUser)
		SET @Menssage ='The ProductUser  dont exits'
   ELSE
		INSERT INTO dbo.ProductUser(IdProductUser , IdUser)
		Values
			        (@IdProductUser , @IdUser )
           SET @Menssage = 'Product  registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdProductUser) FROM dbo.ProductUser Where IdProductUser= @IdProductUser) 
	
	SET @Menssage ='The ProductUser does not exist'

  ELSE
  
	UPDATE [dbo].[ProductUser] SET  IdProductUser= @IdProductUser, IdUser=@IdUser
  
	WHERE  IdProductUser =@IdProductUser
						SET @Menssage = 'The  ProductUser Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT ( IdProductUser) FROM dbo.ProductUser WHERE IdProductUser= @IdProductUser)
	      SET @menssage = 'The ProductUser does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.ProductUser WHERE IdProductUser = @IdProductUser
		  SET @menssage = 'The ProductUser delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdProductUser, @IdUser FROM dbo.ProductUser
		WHERE  IdProductUser LIKE '%'+@IdProductUser+'%' ORDER BY dbo.ProductUser.IdProductUser
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureRole]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureRole]
(
@Accion nchar(30),
@IdRole int,
@Type nchar (20),
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdRole  FROM dbo.Role WHERE IdRole = @IdRole)
		SET @Menssage ='The Role  dont exits'
   ELSE
		INSERT INTO dbo.Role(IdRole , Type)
		Values
			        (@IdRole  , @Type )
           SET @Menssage = 'Role  registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdRole) FROM dbo.Role where IdRole = @IdRole) 
	
	SET @Menssage ='The Role does not exist'

  ELSE
      UPDATE [dbo].[Role]  SET  [Type]=@Type 
	  WHERE IdRole=@IdRole 
						SET @Menssage = 'The  Role  Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdRole) FROM dbo.Role WHERE IdRole = @IdRole)
	      SET @menssage = 'The Role  does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.Role WHERE IdRole  = @IdRole 
		  SET @menssage = 'The Role  delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdRole , Type FROM dbo.Role
		WHERE  Type  LIKE '%'+@Type +'%' ORDER BY dbo.Role.Type
		END


END

GO
/****** Object:  StoredProcedure [dbo].[procedureShipment]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureShipment]
(
@Accion nchar(30),
@IdShipment int,
@IdOrder int,
@IdUser int,
@IdFactory int,
@IdStatus int,
@ShipmentDate date,
@ArrivalDate date,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdShipment FROM dbo.Shipment WHERE IdShipment = @IdShipment)
		SET @Menssage ='The Shipment  dont exits'
   ELSE
		INSERT INTO dbo.Shipment(IdShipment  , IdOrder, IdUser, IdFactory, IdStatus, ShipmentDate, ArrivalDate)
		Values
			        (@IdShipment  , @IdOrder, @IdUser, @IdFactory, @IdStatus, @ShipmentDate, @ArrivalDate)
           SET @Menssage = 'Shipment  registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdShipment) FROM dbo.Shipment where IdShipment = @IdShipment) 
	
	SET @Menssage ='The Shipment does not exist'

  ELSE
      UPDATE [dbo].[Shipment]  SET IdShipment=@IdShipment  , IdOrder=@IdOrder, IdUser=@IdUser, IdFactory=@IdFactory,@IdStatus=@IdStatus, ShipmentDate=@ShipmentDate, ArrivalDate=@ArrivalDate
	  WHERE IdShipment=@IdShipment
						SET @Menssage = 'The  Shipment  Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdShipment) FROM dbo.Shipment  WHERE IdShipment=@IdShipment)
	      SET @menssage = 'The Shipment does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.Shipment WHERE IdShipment  = @IdShipment
		  SET @menssage = 'The Shipment delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdShipment  , IdOrder, IdUser, IdFactory, IdStatus, ShipmentDate, ArrivalDate FROM dbo.Shipment
		WHERE  IdShipment LIKE '%'+@IdShipment +'%' ORDER BY dbo.Shipment.IdShipment
		END


END

GO
/****** Object:  StoredProcedure [dbo].[procedureState]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureState]
(
@Accion nchar(30),
@IdState int,
@Name nchar(30),
@IdCity int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdState FROM dbo.State WHERE IdState = @IdState)
		SET @Menssage ='The State Exist'
   ELSE
		INSERT INTO dbo.State(IdState, Name, IdCity)
		Values
			        (@IdState, @Name, @IdCity)
           SET @Menssage = 'State registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdState) FROM dbo.State Where IdState = @IdState) 
	
	SET @Menssage ='The State does not exist'

  ELSE
  
	UPDATE [dbo].[State] SET  IdState= @IdState, Name = @Name, IdCity  = @IdCity 
  
	WHERE IdState =@IdState
						SET @Menssage = 'The State Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdState) FROM dbo.State WHERE IdState = @IdState)
	      SET @menssage = 'The State does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.State WHERE IdState = @IdState
		  SET @menssage = 'The State delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdState, Name, IdState FROM dbo.State
		WHERE  Name LIKE '%'+@Name+'%' ORDER BY   dbo.State.Name
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureStatus]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureStatus]
(
@Accion nchar(30),
@IdStatus int,
@Description nchar (30),
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdStatus FROM dbo.Status WHERE IdStatus = @IdStatus)
		SET @Menssage ='The Status Exist'
   ELSE
		INSERT INTO dbo.Status(IdStatus, Description)
		Values
			        (@IdStatus, @Description)
           SET @Menssage = 'Status registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdStatus) FROM dbo.Status Where IdStatus= @IdStatus) 
	
	SET @Menssage ='The Status does not exist'

  ELSE
  
	UPDATE [dbo].[Status] SET  IdStatus= @IdStatus, Description = @Description 
  
	WHERE IdStatus =@IdStatus
						SET @Menssage = 'The State Status successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdStatus) FROM dbo.Status WHERE IdStatus = @IdStatus)
	      SET @menssage = 'The Status does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.Status  WHERE IdStatus = @IdStatus
		  SET @menssage = 'The Status delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdStatus, Description FROM dbo.Status
		WHERE  Description LIKE '%'+@Description+'%' ORDER BY   dbo.Status.Description
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureTax]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureTax]
(
@Accion nchar(30),
@IdTax int,
@IdCity int,
@TaxPercent float,
@Menssage nvarchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdTax FROM dbo.Tax WHERE IdTax = @IdTax)
		SET @Menssage ='The Tax Exist'
   ELSE
		INSERT INTO dbo.Tax(IdTax, IdCity, TaxPercent)
		Values
			        (@IdTax, @IdCity, @TaxPercent)
           SET @Menssage = 'Tax registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdTax) FROM dbo.Tax Where IdTax= @IdTax) 
	
	SET @Menssage ='The Status does not exist'

  ELSE
  
	UPDATE [dbo].[Tax] SET  IdTax= @IdTax, IdCity =@IdCity, TaxPercent =@TaxPercent
  
	WHERE  IdTax= @IdTax
						SET @Menssage = 'The State Status successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdTax) FROM dbo.Tax WHERE IdTax = @IdTax)
	      SET @menssage = 'The Tax does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.Tax  WHERE IdTax = @IdTax
		  SET @menssage = 'The Tax delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdTax, IdCity, TaxPercent FROM dbo.Tax
		WHERE  IdTax LIKE '%'+@IdTax+'%' ORDER BY   dbo.Tax.IdTax
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureUser]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureUser]
(
@Accion nchar(30),
@idUser int,
@idTypeid int,
@UserName nchar(20),
@Password nchar(40),
@Email nchar(50),
@PhoneNumber nchar(30),
@idRole int,
@FactoryName nchar (10),
@idCreditCard int,
@idPaypal int,
@idStatus int,
@PostalCode int,
@Adress nchar (70),
@Menssage nchar(30) OUT

)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT idUser FROM Users WHERE idUser = @idUser)
		SET @Menssage ='The User Exist'
   ELSE
		INSERT INTO Users(idUser, idTypeid, UserName, Password, Email, PhoneNumber,idRole,  FactoryName, idCreditCard, idPayPal, idStatus, PostalCode, Adress)
		Values
			        (@idUser, @idTypeid, @UserName, @Password, @Email, @PhoneNumber, @idRole,  @FactoryName, @idCreditCard, @idPayPal, @idStatus, @PostalCode, @Adress)
           SET @Menssage = 'User registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (idUser) FROM Users Where idUser = @idUser) 
	
	SET @Menssage ='The user does not exist'

  ELSE

	UPDATE [dbo].[Users] SET  idTypeid = @idTypeid, UserName = @UserName,  Password =@Password, Email = @Email, PhoneNumber = @PhoneNumber, idRole = @idRole, 
	FactoryName = @FactoryName, idCreditCard = @idCreditCard, idPayPal = @idPayPal, idStatus = @idStatus, PostalCode = @PostalCode, Adress = @Adress 
  
	WHERE idUser =@idUser  
						SET @Menssage = 'The user Updated  successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (idUser) FROM Users WHERE idUser = @idUser)
	      SET @menssage = 'The user does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM Users WHERE idUser = @idUser
		  SET @menssage = 'The user delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT idUser, idTypeid, UserName, Password, Email, PhoneNumber,idRole,  FactoryName, idCreditCard, idPayPal, idStatus, PostalCode, Adress FROM Users 
		WHERE  Email LIKE '%'+@Email+'%' ORDER BY Users.Email
		END


IF(@Accion = 'Validation')
BEGIN

SELECT  Email, Password FROM Users WHERE Email = @Email  AND Password = @Password

    SET  @Menssage ='Bienvenido al sistema'
  END

END
GO
/****** Object:  StoredProcedure [dbo].[procedureUserEvent]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureUserEvent]
(
@Accion nvarchar(30),
@IdEventUser int,
@IdUser int,
@IdEvent int,
@DateLogin date,
@DateLogout date,
@ProcedureUser nchar (100),
@likes nchar (100),
@Menssage nvarchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdEventUser FROM dbo.UserEvent WHERE IdEventUser = @IdEventUser)
		SET @Menssage ='The UserEvent Exist'
   ELSE
		INSERT INTO dbo.UserEvent(IdEventUser, IdUser, IdEvent, DateLogin,DateLogout,ProcedureUser,likes)
		Values
			        (@IdEventUser, @IdUser, @IdEvent, @DateLogin, @DateLogout, @ProcedureUser, @likes)
           SET @Menssage = 'UserEvent registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdEventUser) FROM dbo.UserEvent Where IdEventUser= @IdEventUser) 
	
	SET @Menssage ='The EventUser does not exist'

  ELSE
  
	UPDATE [dbo].[UserEvent] SET IdEventUser =@IdEventUser, IdUser=@IdUser, IdEvent= @IdEvent, DateLogin=@DateLogin, DateLogout= @DateLogout, ProcedureUser = @ProcedureUser, likes =@likes
  
	WHERE   IdEventUser =@IdEventUser
						SET @Menssage = 'The State EventUser successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdEventUser) FROM dbo.UserEvent WHERE IdEventUser =@IdEventUser)
	      SET @menssage = 'The EventsUser does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.UserEvent  WHERE IdEventUser= @IdEventUser
		  SET @menssage = 'The UserEvent delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdEventUser, IdUser, IdEvent, DateLogin,DateLogout,ProcedureUser,likes FROM dbo.UserEvent
		WHERE  IdEventUser LIKE '%'+@IdEventUser+'%' ORDER BY   dbo.UserEvent.IdEventUser
		END


END
GO
/****** Object:  StoredProcedure [dbo].[procedureUserRole]    Script Date: 3/31/2016 3:33:03 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[procedureUserRole]
(
@Accion nchar(30),
@IdRole int,
@IdUserRole int,
@IdUser int,
@Menssage nchar(30) OUT
)
AS
BEGIN 

IF(@Accion = 'Insert')
		BEGIN 

		IF EXISTS (SELECT IdUserRole FROM dbo.UserRole WHERE IdUserRole= @IdUserRole)
		SET @Menssage ='The UserRole Exist'
   ELSE
		INSERT INTO dbo.UserRole(IdRole, IdUserRole, IdUser)
		Values
			        (@IdRole, @IdUserRole, @IdUser)
           SET @Menssage = 'UserEvent registrado'	
	END


IF(@Accion = 'Update')
  Begin

	IF NOT EXISTS (SELECT (IdUserRole) FROM dbo.UserRole  where IdUserRole= @IdUserRole) 
	
	SET @Menssage ='The UserRole does not exist'

  ELSE
  
	UPDATE [dbo].[UserRole] SET   IdUser=@IdUser
  
	WHERE   IdUserRole =@IdUserRole
						SET @Menssage = 'The UserRole EventUser successfully'

	END


IF(@Accion ='Delete')
	   IF NOT EXISTS (SELECT (IdUserRole) FROM dbo.UserRole where IdUserRole =@IdUserRole)
	      SET @menssage = 'The UserRole does not exist'
		ELSE 
		BEGIN 
		  DELETE FROM dbo.UserRole WHERE IdUserRole= @IdUserRole
		  SET @menssage = 'The UserRole delete successfully'
		END

		
IF (@Accion = 'Read')
		BEGIN

		SELECT IdRole, IdUserRole, IdUser FROM dbo.UserRole
		WHERE  IdUserRole LIKE '%'+@IdUserRole+'%' ORDER BY   dbo.UserRole.IdUserRole
		END


END

GO
