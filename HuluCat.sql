/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2017/3/28 21:21:16                           */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Calendar') and o.name = 'FK_CALENDAR_CALPUBLIS_USER')
alter table Calendar
   drop constraint FK_CALENDAR_CALPUBLIS_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DatCom') and o.name = 'FK_DATCOM_DAT_DATCO_DATING')
alter table DatCom
   drop constraint FK_DATCOM_DAT_DATCO_DATING
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dat_Com') and o.name = 'FK_DAT_COM_DAT_COM_USER')
alter table Dat_Com
   drop constraint FK_DAT_COM_DAT_COM_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dat_Com') and o.name = 'FK_DAT_COM_DAT_COM2_DATCOM')
alter table Dat_Com
   drop constraint FK_DAT_COM_DAT_COM2_DATCOM
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dating') and o.name = 'FK_DATING_DATPUBLIS_USER')
alter table Dating
   drop constraint FK_DATING_DATPUBLIS_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dating_DatLabel') and o.name = 'FK_DATING_D_DATING_DA_DATING')
alter table Dating_DatLabel
   drop constraint FK_DATING_D_DATING_DA_DATING
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Dating_DatLabel') and o.name = 'FK_DATING_D_DATING_DA_DATLABEL')
alter table Dating_DatLabel
   drop constraint FK_DATING_D_DATING_DA_DATLABEL
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Product') and o.name = 'FK_PRODUCT_PRODCOM_USER')
alter table Product
   drop constraint FK_PRODUCT_PRODCOM_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Product') and o.name = 'FK_PRODUCT_PRODFAV_USER')
alter table Product
   drop constraint FK_PRODUCT_PRODFAV_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Product') and o.name = 'FK_PRODUCT_PRODPUBLI_BRAND')
alter table Product
   drop constraint FK_PRODUCT_PRODPUBLI_BRAND
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Product_ProdLabel') and o.name = 'FK_PRODUCT__PRODUCT_P_PRODUCT')
alter table Product_ProdLabel
   drop constraint FK_PRODUCT__PRODUCT_P_PRODUCT
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Product_ProdLabel') and o.name = 'FK_PRODUCT__PRODUCT_P_PRODLABE')
alter table Product_ProdLabel
   drop constraint FK_PRODUCT__PRODUCT_P_PRODLABE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Talk') and o.name = 'FK_TALK_TALKFAV_USER')
alter table Talk
   drop constraint FK_TALK_TALKFAV_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Talk') and o.name = 'FK_TALK_TALKPUBLI_USER')
alter table Talk
   drop constraint FK_TALK_TALKPUBLI_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TalkCom') and o.name = 'FK_TALKCOM_TALK_COM_USER')
alter table TalkCom
   drop constraint FK_TALKCOM_TALK_COM_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('TalkCom') and o.name = 'FK_TALKCOM_TALK_TALK_TALK')
alter table TalkCom
   drop constraint FK_TALKCOM_TALK_TALK_TALK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Talk_TalkLabel') and o.name = 'FK_TALK_TAL_TALK_TALK_TALK')
alter table Talk_TalkLabel
   drop constraint FK_TALK_TAL_TALK_TALK_TALK
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Talk_TalkLabel') and o.name = 'FK_TALK_TAL_TALK_TALK_TALKLABE')
alter table Talk_TalkLabel
   drop constraint FK_TALK_TAL_TALK_TALK_TALKLABE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"User"') and o.name = 'FK_USER_ATTENTION_USER')
alter table "User"
   drop constraint FK_USER_ATTENTION_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('"User"') and o.name = 'FK_USER_CHAT_USER')
alter table "User"
   drop constraint FK_USER_CHAT_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('User_Skin') and o.name = 'FK_USER_SKI_USER_SKIN_USER')
alter table User_Skin
   drop constraint FK_USER_SKI_USER_SKIN_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('User_Skin') and o.name = 'FK_USER_SKI_USER_SKIN_SKIN')
alter table User_Skin
   drop constraint FK_USER_SKI_USER_SKIN_SKIN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VipSet') and o.name = 'FK_VIPSET_VIPSET_USER')
alter table VipSet
   drop constraint FK_VIPSET_VIPSET_USER
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('VipSet') and o.name = 'FK_VIPSET_VIPSET2_VIP')
alter table VipSet
   drop constraint FK_VIPSET_VIPSET2_VIP
go

/*==============================================================*/
/* Table: Brand                                                 */
/*==============================================================*/
create table Brand (
   BrandName            varchar(20)          not null,
   constraint PK_BRAND primary key nonclustered (BrandName)
)
go

/*==============================================================*/
/* Table: Calendar                                              */
/*==============================================================*/
create table Calendar (
   CalNo                char(11)             not null,
   UserNo               int                  null,
   CalTime              datetime             not null,
   CalIntro             varchar(200)         not null,
   CalPubTime           datetime             not null,
   constraint PK_CALENDAR primary key nonclustered (CalNo)
)
go

/*==============================================================*/
/* Index: CalPublish_FK                                         */
/*==============================================================*/
create index CalPublish_FK on Calendar (
UserNo ASC
)
go

/*==============================================================*/
/* Table: DatCom                                                */
/*==============================================================*/
create table DatCom (
   DatComNo             char(16)             not null,
   DatingNo             char(11)             null,
   DatComs              varchar(100)         not null,
   constraint PK_DATCOM primary key nonclustered (DatComNo)
)
go

/*==============================================================*/
/* Index: Dat_DatCom_FK                                         */
/*==============================================================*/
create index Dat_DatCom_FK on DatCom (
DatingNo ASC
)
go

/*==============================================================*/
/* Table: DatLabel                                              */
/*==============================================================*/
create table DatLabel (
   DatLabelName         varchar(10)          not null,
   DatLabelNum          int                  not null,
   constraint PK_DATLABEL primary key nonclustered (DatLabelName)
)
go

/*==============================================================*/
/* Table: Dat_Com                                               */
/*==============================================================*/
create table Dat_Com (
   UserNo               int                  not null,
   DatComNo             char(16)             not null,
   DatComTime           datetime             not null,
   constraint PK_DAT_COM primary key (UserNo, DatComNo)
)
go

/*==============================================================*/
/* Index: Dat_Com_FK                                            */
/*==============================================================*/
create index Dat_Com_FK on Dat_Com (
UserNo ASC
)
go

/*==============================================================*/
/* Index: Dat_Com2_FK                                           */
/*==============================================================*/
create index Dat_Com2_FK on Dat_Com (
DatComNo ASC
)
go

/*==============================================================*/
/* Table: Dating                                                */
/*==============================================================*/
create table Dating (
   DatingNo             char(11)             not null,
   UserNo               int                  null,
   DatingName           varchar(50)          not null,
   DatingIntro          varchar(100)         null,
   DatingPic            varchar(100)         not null,
   DatingUrl            varchar(100)         not null,
   DatingComs           int                  not null,
   DatTime              datetime             not null,
   constraint PK_DATING primary key nonclustered (DatingNo)
)
go

/*==============================================================*/
/* Index: DatPublish_FK                                         */
/*==============================================================*/
create index DatPublish_FK on Dating (
UserNo ASC
)
go

/*==============================================================*/
/* Table: Dating_DatLabel                                       */
/*==============================================================*/
create table Dating_DatLabel (
   DatingNo             char(11)             not null,
   DatLabelName         varchar(10)          not null,
   constraint PK_DATING_DATLABEL primary key (DatingNo, DatLabelName)
)
go

/*==============================================================*/
/* Index: Dating_DatLabel_FK                                    */
/*==============================================================*/
create index Dating_DatLabel_FK on Dating_DatLabel (
DatingNo ASC
)
go

/*==============================================================*/
/* Index: Dating_DatLabel2_FK                                   */
/*==============================================================*/
create index Dating_DatLabel2_FK on Dating_DatLabel (
DatLabelName ASC
)
go

/*==============================================================*/
/* Table: ProdLabel                                             */
/*==============================================================*/
create table ProdLabel (
   ProdLabelName        varchar(10)          not null,
   ProdLabelIntro       varchar(50)          not null,
   ProdLabelNum         int                  not null,
   constraint PK_PRODLABEL primary key nonclustered (ProdLabelName)
)
go

/*==============================================================*/
/* Table: Product                                               */
/*==============================================================*/
create table Product (
   ProdNo               char(11)             not null,
   BrandName            varchar(20)          null,
   UserNo               int                  null,
   Use_UserNo           int                  null,
   ProdName             varchar(50)          not null,
   ProdPic              varchar(100)         not null,
   ProdIntro            varchar(200)         null,
   ProdPlants           int                  not null,
   ProdWeeds            int                  not null,
   ProdComs             varchar(100)         not null,
   ProdComTime          datetime             not null,
   ProdFavTime          datetime             not null,
   ProdTime             datetime             not null,
   constraint PK_PRODUCT primary key nonclustered (ProdNo)
)
go

/*==============================================================*/
/* Index: ProdCom_FK                                            */
/*==============================================================*/
create index ProdCom_FK on Product (
Use_UserNo ASC
)
go

/*==============================================================*/
/* Index: ProdFav_FK                                            */
/*==============================================================*/
create index ProdFav_FK on Product (
UserNo ASC
)
go

/*==============================================================*/
/* Index: ProdPublish_FK                                        */
/*==============================================================*/
create index ProdPublish_FK on Product (
BrandName ASC
)
go

/*==============================================================*/
/* Table: Product_ProdLabel                                     */
/*==============================================================*/
create table Product_ProdLabel (
   ProdNo               char(11)             not null,
   ProdLabelName        varchar(10)          not null,
   constraint PK_PRODUCT_PRODLABEL primary key (ProdNo, ProdLabelName)
)
go

/*==============================================================*/
/* Index: Product_ProdLabel_FK                                  */
/*==============================================================*/
create index Product_ProdLabel_FK on Product_ProdLabel (
ProdNo ASC
)
go

/*==============================================================*/
/* Index: Product_ProdLabel2_FK                                 */
/*==============================================================*/
create index Product_ProdLabel2_FK on Product_ProdLabel (
ProdLabelName ASC
)
go

/*==============================================================*/
/* Table: Skin                                                  */
/*==============================================================*/
create table Skin (
   SkinName             varchar(10)          not null,
   SkinIntro            varchar(50)          null,
   SkinNum              int                  not null,
   constraint PK_SKIN primary key nonclustered (SkinName)
)
go

/*==============================================================*/
/* Table: Talk                                                  */
/*==============================================================*/
create table Talk (
   TalkNo               char(11)             not null,
   UserNo               int                  null,
   Use_UserNo           int                  null,
   TalkName             varchar(50)          not null,
   TalkIntro            varchar(100)         null,
   TalkPic              varchar(100)         not null,
   TalkUrl              varchar(100)         not null,
   TalkFavs             int                  not null,
   TalkComs             varchar(100)         not null,
   TalkFavTime          datetime             not null,
   TalkTime             datetime             not null,
   constraint PK_TALK primary key nonclustered (TalkNo)
)
go

/*==============================================================*/
/* Index: TalkFav_FK                                            */
/*==============================================================*/
create index TalkFav_FK on Talk (
Use_UserNo ASC
)
go

/*==============================================================*/
/* Index: TalkPublish_FK                                        */
/*==============================================================*/
create index TalkPublish_FK on Talk (
UserNo ASC
)
go

/*==============================================================*/
/* Table: TalkCom                                               */
/*==============================================================*/
create table TalkCom (
   TalkComNo            char(16)             not null,
   UserNo               int                  null,
   TalkNo               char(11)             null,
   TalkComs             varchar(100)         not null,
   TalkComTime          datetime             not null,
   constraint PK_TALKCOM primary key nonclustered (TalkComNo)
)
go

/*==============================================================*/
/* Index: Talk_Com_FK                                           */
/*==============================================================*/
create index Talk_Com_FK on TalkCom (
UserNo ASC
)
go

/*==============================================================*/
/* Index: Talk_TalkCom_FK                                       */
/*==============================================================*/
create index Talk_TalkCom_FK on TalkCom (
TalkNo ASC
)
go

/*==============================================================*/
/* Table: TalkLabel                                             */
/*==============================================================*/
create table TalkLabel (
   TalkLabelName        varchar(10)          not null,
   TalkLabelNum         int                  not null,
   constraint PK_TALKLABEL primary key nonclustered (TalkLabelName)
)
go

/*==============================================================*/
/* Table: Talk_TalkLabel                                        */
/*==============================================================*/
create table Talk_TalkLabel (
   TalkNo               char(11)             not null,
   TalkLabelName        varchar(10)          not null,
   constraint PK_TALK_TALKLABEL primary key (TalkNo, TalkLabelName)
)
go

/*==============================================================*/
/* Index: Talk_TalkLabel_FK                                     */
/*==============================================================*/
create index Talk_TalkLabel_FK on Talk_TalkLabel (
TalkNo ASC
)
go

/*==============================================================*/
/* Index: Talk_TalkLabel2_FK                                    */
/*==============================================================*/
create index Talk_TalkLabel2_FK on Talk_TalkLabel (
TalkLabelName ASC
)
go

/*==============================================================*/
/* Table: "User"                                                */
/*==============================================================*/
create table "User" (
   UserNo               int                  not null,
   Use_UserNo           int                  null,
   Use_UserNo2          int                  null,
   UserName             varchar(50)          not null,
   UserWeibo            int                  null,
   UserWeixin           varchar(20)          null,
   UserQQ               int                  null,
   UserPassword         varchar(16)          not null,
   UserImage            varchar(100)         null,
   UserPhone            varchar(11)          null,
   UserTime             datetime             not null,
   UserIntro            varchar(100)         null,
   UserBirthday         datetime             null,
   AttentionName        varchar(50)          null,
   AttentionTime        datetime             not null,
   ChatText             varchar(100)         not null,
   ChatPic              varchar(100)         not null,
   constraint PK_USER primary key nonclustered (UserNo)
)
go

/*==============================================================*/
/* Index: Attention_FK                                          */
/*==============================================================*/
create index Attention_FK on "User" (
Use_UserNo ASC
)
go

/*==============================================================*/
/* Index: Chat_FK                                               */
/*==============================================================*/
create index Chat_FK on "User" (
Use_UserNo2 ASC
)
go

/*==============================================================*/
/* Table: User_Skin                                             */
/*==============================================================*/
create table User_Skin (
   UserNo               int                  not null,
   SkinName             varchar(10)          not null,
   constraint PK_USER_SKIN primary key (UserNo, SkinName)
)
go

/*==============================================================*/
/* Index: User_Skin_FK                                          */
/*==============================================================*/
create index User_Skin_FK on User_Skin (
UserNo ASC
)
go

/*==============================================================*/
/* Index: User_Skin2_FK                                         */
/*==============================================================*/
create index User_Skin2_FK on User_Skin (
SkinName ASC
)
go

/*==============================================================*/
/* Table: Vip                                                   */
/*==============================================================*/
create table Vip (
   VipNo                char(11)             not null,
   constraint PK_VIP primary key nonclustered (VipNo)
)
go

/*==============================================================*/
/* Table: VipSet                                                */
/*==============================================================*/
create table VipSet (
   UserNo               int                  not null,
   VipNo                char(11)             not null,
   VipLength            int                  not null,
   VipTime              datetime             not null,
   constraint PK_VIPSET primary key (UserNo, VipNo)
)
go

/*==============================================================*/
/* Index: VipSet_FK                                             */
/*==============================================================*/
create index VipSet_FK on VipSet (
UserNo ASC
)
go

/*==============================================================*/
/* Index: VipSet2_FK                                            */
/*==============================================================*/
create index VipSet2_FK on VipSet (
VipNo ASC
)
go

alter table Calendar
   add constraint FK_CALENDAR_CALPUBLIS_USER foreign key (UserNo)
      references "User" (UserNo)
go

alter table DatCom
   add constraint FK_DATCOM_DAT_DATCO_DATING foreign key (DatingNo)
      references Dating (DatingNo)
go

alter table Dat_Com
   add constraint FK_DAT_COM_DAT_COM_USER foreign key (UserNo)
      references "User" (UserNo)
go

alter table Dat_Com
   add constraint FK_DAT_COM_DAT_COM2_DATCOM foreign key (DatComNo)
      references DatCom (DatComNo)
go

alter table Dating
   add constraint FK_DATING_DATPUBLIS_USER foreign key (UserNo)
      references "User" (UserNo)
go

alter table Dating_DatLabel
   add constraint FK_DATING_D_DATING_DA_DATING foreign key (DatingNo)
      references Dating (DatingNo)
go

alter table Dating_DatLabel
   add constraint FK_DATING_D_DATING_DA_DATLABEL foreign key (DatLabelName)
      references DatLabel (DatLabelName)
go

alter table Product
   add constraint FK_PRODUCT_PRODCOM_USER foreign key (Use_UserNo)
      references "User" (UserNo)
go

alter table Product
   add constraint FK_PRODUCT_PRODFAV_USER foreign key (UserNo)
      references "User" (UserNo)
go

alter table Product
   add constraint FK_PRODUCT_PRODPUBLI_BRAND foreign key (BrandName)
      references Brand (BrandName)
go

alter table Product_ProdLabel
   add constraint FK_PRODUCT__PRODUCT_P_PRODUCT foreign key (ProdNo)
      references Product (ProdNo)
go

alter table Product_ProdLabel
   add constraint FK_PRODUCT__PRODUCT_P_PRODLABE foreign key (ProdLabelName)
      references ProdLabel (ProdLabelName)
go

alter table Talk
   add constraint FK_TALK_TALKFAV_USER foreign key (Use_UserNo)
      references "User" (UserNo)
go

alter table Talk
   add constraint FK_TALK_TALKPUBLI_USER foreign key (UserNo)
      references "User" (UserNo)
go

alter table TalkCom
   add constraint FK_TALKCOM_TALK_COM_USER foreign key (UserNo)
      references "User" (UserNo)
go

alter table TalkCom
   add constraint FK_TALKCOM_TALK_TALK_TALK foreign key (TalkNo)
      references Talk (TalkNo)
go

alter table Talk_TalkLabel
   add constraint FK_TALK_TAL_TALK_TALK_TALK foreign key (TalkNo)
      references Talk (TalkNo)
go

alter table Talk_TalkLabel
   add constraint FK_TALK_TAL_TALK_TALK_TALKLABE foreign key (TalkLabelName)
      references TalkLabel (TalkLabelName)
go

alter table "User"
   add constraint FK_USER_ATTENTION_USER foreign key (Use_UserNo)
      references "User" (UserNo)
go

alter table "User"
   add constraint FK_USER_CHAT_USER foreign key (Use_UserNo2)
      references "User" (UserNo)
go

alter table User_Skin
   add constraint FK_USER_SKI_USER_SKIN_USER foreign key (UserNo)
      references "User" (UserNo)
go

alter table User_Skin
   add constraint FK_USER_SKI_USER_SKIN_SKIN foreign key (SkinName)
      references Skin (SkinName)
go

alter table VipSet
   add constraint FK_VIPSET_VIPSET_USER foreign key (UserNo)
      references "User" (UserNo)
go

alter table VipSet
   add constraint FK_VIPSET_VIPSET2_VIP foreign key (VipNo)
      references Vip (VipNo)
go

