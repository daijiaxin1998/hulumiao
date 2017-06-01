/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2017/3/7 23:35:20                            */
/*==============================================================*/


/*==============================================================*/
/* Table: Dating_Label                                          */
/*==============================================================*/
create table Dating_Label (
   约妆编号                 char(11)             not null,
   约妆标签名                varchar(10)          not null,
   constraint PK_DATING_LABEL primary key (约妆编号, 约妆标签名)
)
go

/*==============================================================*/
/* Index: Dating_Label_FK                                       */
/*==============================================================*/
create index Dating_Label_FK on Dating_Label (
约妆编号 ASC
)
go

/*==============================================================*/
/* Index: Dating_Label2_FK                                      */
/*==============================================================*/
create index Dating_Label2_FK on Dating_Label (
约妆标签名 ASC
)
go

/*==============================================================*/
/* Table: Goods_Label                                           */
/*==============================================================*/
create table Goods_Label (
   商品编号                 char(11)             not null,
   商品标签名                varchar(10)          not null,
   constraint PK_GOODS_LABEL primary key (商品编号, 商品标签名)
)
go

/*==============================================================*/
/* Index: Goods_Label_FK                                        */
/*==============================================================*/
create index Goods_Label_FK on Goods_Label (
商品编号 ASC
)
go

/*==============================================================*/
/* Index: Goods_Label2_FK                                       */
/*==============================================================*/
create index Goods_Label2_FK on Goods_Label (
商品标签名 ASC
)
go

/*==============================================================*/
/* Table: Plant_Label                                           */
/*==============================================================*/
create table Plant_Label (
   种草编号                 char(11)             not null,
   种草标签名                varchar(10)          not null,
   constraint PK_PLANT_LABEL primary key (种草编号, 种草标签名)
)
go

/*==============================================================*/
/* Index: Plant_Label_FK                                        */
/*==============================================================*/
create index Plant_Label_FK on Plant_Label (
种草编号 ASC
)
go

/*==============================================================*/
/* Index: Plant_Label2_FK                                       */
/*==============================================================*/
create index Plant_Label2_FK on Plant_Label (
种草标签名 ASC
)
go

/*==============================================================*/
/* Table: Talk_Label                                            */
/*==============================================================*/
create table Talk_Label (
   交流编号                 char(11)             not null,
   交流标签名                varchar(10)          not null,
   constraint PK_TALK_LABEL primary key (交流编号, 交流标签名)
)
go

/*==============================================================*/
/* Index: Talk_Label_FK                                         */
/*==============================================================*/
create index Talk_Label_FK on Talk_Label (
交流编号 ASC
)
go

/*==============================================================*/
/* Index: Talk_Label2_FK                                        */
/*==============================================================*/
create index Talk_Label2_FK on Talk_Label (
交流标签名 ASC
)
go

/*==============================================================*/
/* Table: User_Label                                            */
/*==============================================================*/
create table User_Label (
   用户编号                 char(11)             not null,
   用户标签名                varchar(10)          not null,
   constraint PK_USER_LABEL primary key (用户编号, 用户标签名)
)
go

/*==============================================================*/
/* Index: User_Label_FK                                         */
/*==============================================================*/
create index User_Label_FK on User_Label (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: User_Label2_FK                                        */
/*==============================================================*/
create index User_Label2_FK on User_Label (
用户标签名 ASC
)
go

/*==============================================================*/
/* Table: User_Skin                                             */
/*==============================================================*/
create table User_Skin (
   用户编号                 char(11)             not null,
   肤质名                  varchar(10)          not null,
   constraint PK_USER_SKIN primary key (用户编号, 肤质名)
)
go

/*==============================================================*/
/* Index: User_Skin_FK                                          */
/*==============================================================*/
create index User_Skin_FK on User_Skin (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: User_Skin2_FK                                         */
/*==============================================================*/
create index User_Skin2_FK on User_Skin (
肤质名 ASC
)
go

/*==============================================================*/
/* Table: Weed_Label                                            */
/*==============================================================*/
create table Weed_Label (
   拔草编号                 char(11)             not null,
   拔草标签名                varchar(10)          not null,
   constraint PK_WEED_LABEL primary key (拔草编号, 拔草标签名)
)
go

/*==============================================================*/
/* Index: Weed_Label_FK                                         */
/*==============================================================*/
create index Weed_Label_FK on Weed_Label (
拔草编号 ASC
)
go

/*==============================================================*/
/* Index: Weed_Label2_FK                                        */
/*==============================================================*/
create index Weed_Label2_FK on Weed_Label (
拔草标签名 ASC
)
go

/*==============================================================*/
/* Table: 交流                                                    */
/*==============================================================*/
create table 交流 (
   交流编号                 char(11)             not null,
   用户编号                 char(11)             not null,
   用户信_用户编号             char(11)             not null,
   交流类型名                varchar(10)          not null,
   交流标题                 varchar(50)          not null,
   交流文本路径               varchar(100)         not null,
   交流图片路径               varchar(100)         not null,
   交流链接                 varchar(100)         not null,
   交流收藏次数               int                  not null,
   交流点赞次数               int                  not null,
   交流评论次数               int                  not null,
   交流发布时间               datetime             not null,
   交流评论内容               varchar(100)         not null,
   交流评论时间               datetime             not null,
   constraint PK_交流 primary key nonclustered (交流编号)
)
go

/*==============================================================*/
/* Index: 交流发布_FK                                               */
/*==============================================================*/
create index 交流发布_FK on 交流 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 交流评论_FK                                               */
/*==============================================================*/
create index 交流评论_FK on 交流 (
用户信_用户编号 ASC
)
go

/*==============================================================*/
/* Index: Talk_Type_FK                                          */
/*==============================================================*/
create index Talk_Type_FK on 交流 (
交流类型名 ASC
)
go

/*==============================================================*/
/* Table: 交流收藏                                                  */
/*==============================================================*/
create table 交流收藏 (
   用户编号                 char(11)             not null,
   交流编号                 char(11)             not null,
   交流收藏时间               datetime             not null,
   constraint PK_交流收藏 primary key (用户编号, 交流编号)
)
go

/*==============================================================*/
/* Index: 交流收藏_FK                                               */
/*==============================================================*/
create index 交流收藏_FK on 交流收藏 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 交流收藏2_FK                                              */
/*==============================================================*/
create index 交流收藏2_FK on 交流收藏 (
交流编号 ASC
)
go

/*==============================================================*/
/* Table: 交流标签                                                  */
/*==============================================================*/
create table 交流标签 (
   交流标签名                varchar(10)          not null,
   交流标签描述               varchar(50)          not null,
   该标签交流数               int                  not null,
   constraint PK_交流标签 primary key nonclustered (交流标签名)
)
go

/*==============================================================*/
/* Table: 交流点赞                                                  */
/*==============================================================*/
create table 交流点赞 (
   用户编号                 char(11)             not null,
   交流编号                 char(11)             not null,
   交流点赞时间               datetime             not null,
   constraint PK_交流点赞 primary key (用户编号, 交流编号)
)
go

/*==============================================================*/
/* Index: 交流点赞_FK                                               */
/*==============================================================*/
create index 交流点赞_FK on 交流点赞 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 交流点赞2_FK                                              */
/*==============================================================*/
create index 交流点赞2_FK on 交流点赞 (
交流编号 ASC
)
go

/*==============================================================*/
/* Table: 交流类型                                                  */
/*==============================================================*/
create table 交流类型 (
   交流类型名                varchar(10)          not null,
   constraint PK_交流类型 primary key nonclustered (交流类型名)
)
go

/*==============================================================*/
/* Table: 会员                                                    */
/*==============================================================*/
create table 会员 (
   会员编号                 char(11)             not null,
   constraint PK_会员 primary key nonclustered (会员编号)
)
go

/*==============================================================*/
/* Table: 会员订制                                                  */
/*==============================================================*/
create table 会员订制 (
   用户编号                 char(11)             not null,
   会员编号                 char(11)             not null,
   开通时长                 int                  not null,
   开通时间                 datetime             not null,
   constraint PK_会员订制 primary key (用户编号, 会员编号)
)
go

/*==============================================================*/
/* Index: 会员订制_FK                                               */
/*==============================================================*/
create index 会员订制_FK on 会员订制 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 会员订制2_FK                                              */
/*==============================================================*/
create index 会员订制2_FK on 会员订制 (
会员编号 ASC
)
go

/*==============================================================*/
/* Table: 关注表                                                   */
/*==============================================================*/
create table 关注表 (
   用户信_用户编号             char(11)             not null,
   用户编号                 char(11)             not null,
   关注备注名                varchar(50)          null,
   关注时间                 datetime             not null,
   constraint PK_关注表 primary key (用户信_用户编号, 用户编号)
)
go

/*==============================================================*/
/* Index: 关注表_FK                                                */
/*==============================================================*/
create index 关注表_FK on 关注表 (
用户信_用户编号 ASC
)
go

/*==============================================================*/
/* Index: 关注表2_FK                                               */
/*==============================================================*/
create index 关注表2_FK on 关注表 (
用户编号 ASC
)
go

/*==============================================================*/
/* Table: 商品                                                    */
/*==============================================================*/
create table 商品 (
   商品编号                 char(11)             not null,
   商品名称                 varchar(50)          not null,
   商品文本路径               varchar(100)         not null,
   商品图片路径               varchar(100)         not null,
   商品描述                 varchar(1000)        null,
   商品种草次数               int                  not null,
   商品拔草次数               int                  not null,
   constraint PK_商品 primary key nonclustered (商品编号)
)
go

/*==============================================================*/
/* Table: 商品标签                                                  */
/*==============================================================*/
create table 商品标签 (
   商品标签名                varchar(10)          not null,
   商品标签描述               varchar(50)          not null,
   该标签商品数               int                  not null,
   constraint PK_商品标签 primary key nonclustered (商品标签名)
)
go

/*==============================================================*/
/* Table: 拔草                                                    */
/*==============================================================*/
create table 拔草 (
   拔草编号                 char(11)             not null,
   用户编号                 char(11)             not null,
   用户信_用户编号             char(11)             not null,
   用户信_用户编号2            char(11)             not null,
   用户信_用户编号3            char(11)             not null,
   商品编号                 char(11)             not null,
   拔草标题                 varchar(50)          not null,
   拔草文本路径               varchar(100)         not null,
   拔草图片路径               varchar(100)         not null,
   拔草链接                 varchar(100)         not null,
   拔草收藏次数               int                  not null,
   拔草点赞次数               int                  not null,
   拔草评论次数               int                  not null,
   拔草发布时间               datetime             not null,
   拔草评论内容               varchar(100)         null,
   拔草评论时间               datetime             not null,
   拔草收藏时间               datetime             not null,
   拔草点赞时间               datetime             not null,
   constraint PK_拔草 primary key nonclustered (拔草编号)
)
go

/*==============================================================*/
/* Index: Goods_Weed_FK                                         */
/*==============================================================*/
create index Goods_Weed_FK on 拔草 (
商品编号 ASC
)
go

/*==============================================================*/
/* Index: 拔草发布_FK                                               */
/*==============================================================*/
create index 拔草发布_FK on 拔草 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 拔草评论_FK                                               */
/*==============================================================*/
create index 拔草评论_FK on 拔草 (
用户信_用户编号3 ASC
)
go

/*==============================================================*/
/* Index: 拔草收藏2_FK                                              */
/*==============================================================*/
create index 拔草收藏2_FK on 拔草 (
用户信_用户编号 ASC
)
go

/*==============================================================*/
/* Index: 拔草点赞2_FK                                              */
/*==============================================================*/
create index 拔草点赞2_FK on 拔草 (
用户信_用户编号2 ASC
)
go

/*==============================================================*/
/* Table: 拔草标签                                                  */
/*==============================================================*/
create table 拔草标签 (
   拔草标签名                varchar(10)          not null,
   拔草标签描述               varchar(50)          not null,
   该标签拔草数               int                  not null,
   constraint PK_拔草标签 primary key nonclustered (拔草标签名)
)
go

/*==============================================================*/
/* Table: 日程表                                                   */
/*==============================================================*/
create table 日程表 (
   日程表时间                datetime             not null,
   用户编号                 char(11)             null,
   日程表事件                varchar(200)         not null,
   constraint PK_日程表 primary key nonclustered (日程表时间)
)
go

/*==============================================================*/
/* Index: User_Calendar_FK                                      */
/*==============================================================*/
create index User_Calendar_FK on 日程表 (
用户编号 ASC
)
go

/*==============================================================*/
/* Table: 用户信息                                                  */
/*==============================================================*/
create table 用户信息 (
   用户编号                 char(11)             not null,
   用户地址编号               char(11)             null,
   用户信_用户编号             char(11)             null,
   种草编号                 char(11)             null,
   拔草编号                 char(11)             null,
   种草_种草编号              char(11)             null,
   拔草_拔草编号              char(11)             null,
   登录名                  varchar(50)          not null,
   登陆密码                 varchar(50)          not null,
   用户头像路径               varchar(100)         null,
   邮箱                   varchar(50)          null,
   用户名                  varchar(50)          not null,
   手机号                  varchar(11)          null,
   注册时间                 datetime             not null,
   个人简介                 varchar(100)         null,
   聊天编号                 varchar(30)          not null,
   聊天记录路径               varchar(100)         not null,
   聊天图片路径               varchar(100)         not null,
   constraint PK_用户信息 primary key nonclustered (用户编号)
)
go

/*==============================================================*/
/* Index: 聊天_FK                                                 */
/*==============================================================*/
create index 聊天_FK on 用户信息 (
用户信_用户编号 ASC
)
go

/*==============================================================*/
/* Index: 种草收藏_FK                                               */
/*==============================================================*/
create index 种草收藏_FK on 用户信息 (
种草编号 ASC
)
go

/*==============================================================*/
/* Index: 种草点赞_FK                                               */
/*==============================================================*/
create index 种草点赞_FK on 用户信息 (
种草_种草编号 ASC
)
go

/*==============================================================*/
/* Index: 拔草收藏_FK                                               */
/*==============================================================*/
create index 拔草收藏_FK on 用户信息 (
拔草_拔草编号 ASC
)
go

/*==============================================================*/
/* Index: 拔草点赞_FK                                               */
/*==============================================================*/
create index 拔草点赞_FK on 用户信息 (
拔草编号 ASC
)
go

/*==============================================================*/
/* Index: User_Add_FK                                           */
/*==============================================================*/
create index User_Add_FK on 用户信息 (
用户地址编号 ASC
)
go

/*==============================================================*/
/* Table: 用户地址                                                  */
/*==============================================================*/
create table 用户地址 (
   用户地址编号               char(11)             not null,
   用户地址名                varchar(50)          not null,
   constraint PK_用户地址 primary key nonclustered (用户地址编号)
)
go

/*==============================================================*/
/* Table: 用户标签                                                  */
/*==============================================================*/
create table 用户标签 (
   用户标签名                varchar(10)          not null,
   用户标签描述               varchar(50)          not null,
   该用户标签人数              int                  not null,
   constraint PK_用户标签 primary key nonclustered (用户标签名)
)
go

/*==============================================================*/
/* Table: 用户肤质                                                  */
/*==============================================================*/
create table 用户肤质 (
   肤质名                  varchar(10)          not null,
   肤质描述                 varchar(50)          not null,
   该肤质人数                int                  not null,
   constraint PK_用户肤质 primary key nonclustered (肤质名)
)
go

/*==============================================================*/
/* Table: 种草                                                    */
/*==============================================================*/
create table 种草 (
   种草编号                 char(11)             not null,
   用户编号                 char(11)             not null,
   商品编号                 char(11)             not null,
   用户信_用户编号             char(11)             not null,
   用户信_用户编号2            char(11)             not null,
   用户信_用户编号3            char(11)             not null,
   种草标题                 varchar(50)          not null,
   种草文本路径               varchar(100)         not null,
   种草图片路径               varchar(100)         not null,
   种草链接                 varchar(100)         not null,
   种草收藏次数               int                  not null,
   种草点赞次数               int                  not null,
   种草评论次数               int                  not null,
   种草发布时间               datetime             not null,
   种草评论内容               varchar(100)         not null,
   种草评论时间               datetime             not null,
   种草收藏时间               datetime             not null,
   种草点赞时间               datetime             not null,
   constraint PK_种草 primary key nonclustered (种草编号)
)
go

/*==============================================================*/
/* Index: Goods_Plant_FK                                        */
/*==============================================================*/
create index Goods_Plant_FK on 种草 (
商品编号 ASC
)
go

/*==============================================================*/
/* Index: 种草发布_FK                                               */
/*==============================================================*/
create index 种草发布_FK on 种草 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 种草评论_FK                                               */
/*==============================================================*/
create index 种草评论_FK on 种草 (
用户信_用户编号3 ASC
)
go

/*==============================================================*/
/* Index: 种草收藏2_FK                                              */
/*==============================================================*/
create index 种草收藏2_FK on 种草 (
用户信_用户编号 ASC
)
go

/*==============================================================*/
/* Index: 种草点赞2_FK                                              */
/*==============================================================*/
create index 种草点赞2_FK on 种草 (
用户信_用户编号2 ASC
)
go

/*==============================================================*/
/* Table: 种草标签                                                  */
/*==============================================================*/
create table 种草标签 (
   种草标签名                varchar(10)          not null,
   种草标签描述               varchar(50)          not null,
   该标签种草数               int                  not null,
   constraint PK_种草标签 primary key nonclustered (种草标签名)
)
go

/*==============================================================*/
/* Table: 约妆                                                    */
/*==============================================================*/
create table 约妆 (
   约妆编号                 char(11)             not null,
   用户编号                 char(11)             not null,
   用户信_用户编号             char(11)             not null,
   约妆标题                 varchar(50)          not null,
   约妆文本路径               varchar(100)         not null,
   约妆图片路径               varchar(100)         not null,
   约妆链接                 varchar(100)         not null,
   约妆收藏次数               int                  not null,
   约妆点赞次数               int                  not null,
   约妆评论次数               int                  not null,
   约妆发布时间               datetime             not null,
   约妆评论内容               varchar(100)         not null,
   约妆评论时间               datetime             not null,
   constraint PK_约妆 primary key nonclustered (约妆编号)
)
go

/*==============================================================*/
/* Index: 约妆发布_FK                                               */
/*==============================================================*/
create index 约妆发布_FK on 约妆 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 约妆评论_FK                                               */
/*==============================================================*/
create index 约妆评论_FK on 约妆 (
用户信_用户编号 ASC
)
go

/*==============================================================*/
/* Table: 约妆收藏                                                  */
/*==============================================================*/
create table 约妆收藏 (
   用户编号                 char(11)             not null,
   约妆编号                 char(11)             not null,
   约妆收藏时间               datetime             not null,
   constraint PK_约妆收藏 primary key (用户编号, 约妆编号)
)
go

/*==============================================================*/
/* Index: 约妆收藏_FK                                               */
/*==============================================================*/
create index 约妆收藏_FK on 约妆收藏 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 约妆收藏2_FK                                              */
/*==============================================================*/
create index 约妆收藏2_FK on 约妆收藏 (
约妆编号 ASC
)
go

/*==============================================================*/
/* Table: 约妆标签                                                  */
/*==============================================================*/
create table 约妆标签 (
   约妆标签名                varchar(10)          not null,
   约妆标签描述               varchar(50)          not null,
   该标签约妆数               int                  not null,
   constraint PK_约妆标签 primary key nonclustered (约妆标签名)
)
go

/*==============================================================*/
/* Table: 约妆点赞                                                  */
/*==============================================================*/
create table 约妆点赞 (
   用户编号                 char(11)             not null,
   约妆编号                 char(11)             not null,
   约妆点赞时间               datetime             not null,
   constraint PK_约妆点赞 primary key (用户编号, 约妆编号)
)
go

/*==============================================================*/
/* Index: 约妆点赞_FK                                               */
/*==============================================================*/
create index 约妆点赞_FK on 约妆点赞 (
用户编号 ASC
)
go

/*==============================================================*/
/* Index: 约妆点赞2_FK                                              */
/*==============================================================*/
create index 约妆点赞2_FK on 约妆点赞 (
约妆编号 ASC
)
go

alter table Dating_Label
   add constraint FK_DATING_L_DATING_LA_约妆 foreign key (约妆编号)
      references 约妆 (约妆编号)
go

alter table Dating_Label
   add constraint FK_DATING_L_DATING_LA_约妆标签 foreign key (约妆标签名)
      references 约妆标签 (约妆标签名)
go

alter table Goods_Label
   add constraint FK_GOODS_LA_GOODS_LAB_商品 foreign key (商品编号)
      references 商品 (商品编号)
go

alter table Goods_Label
   add constraint FK_GOODS_LA_GOODS_LAB_商品标签 foreign key (商品标签名)
      references 商品标签 (商品标签名)
go

alter table Plant_Label
   add constraint FK_PLANT_LA_PLANT_LAB_种草 foreign key (种草编号)
      references 种草 (种草编号)
go

alter table Plant_Label
   add constraint FK_PLANT_LA_PLANT_LAB_种草标签 foreign key (种草标签名)
      references 种草标签 (种草标签名)
go

alter table Talk_Label
   add constraint FK_TALK_LAB_TALK_LABE_交流 foreign key (交流编号)
      references 交流 (交流编号)
go

alter table Talk_Label
   add constraint FK_TALK_LAB_TALK_LABE_交流标签 foreign key (交流标签名)
      references 交流标签 (交流标签名)
go

alter table User_Label
   add constraint FK_USER_LAB_USER_LABE_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table User_Label
   add constraint FK_USER_LAB_USER_LABE_用户标签 foreign key (用户标签名)
      references 用户标签 (用户标签名)
go

alter table User_Skin
   add constraint FK_USER_SKI_USER_SKIN_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table User_Skin
   add constraint FK_USER_SKI_USER_SKIN_用户肤质 foreign key (肤质名)
      references 用户肤质 (肤质名)
go

alter table Weed_Label
   add constraint FK_WEED_LAB_WEED_LABE_拔草 foreign key (拔草编号)
      references 拔草 (拔草编号)
go

alter table Weed_Label
   add constraint FK_WEED_LAB_WEED_LABE_拔草标签 foreign key (拔草标签名)
      references 拔草标签 (拔草标签名)
go

alter table 交流
   add constraint FK_交流_TALK_TYPE_交流类型 foreign key (交流类型名)
      references 交流类型 (交流类型名)
go

alter table 交流
   add constraint FK_交流_交流发布_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 交流
   add constraint FK_交流_交流评论_用户信息 foreign key (用户信_用户编号)
      references 用户信息 (用户编号)
go

alter table 交流收藏
   add constraint FK_交流收藏_交流收藏_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 交流收藏
   add constraint FK_交流收藏_交流收藏2_交流 foreign key (交流编号)
      references 交流 (交流编号)
go

alter table 交流点赞
   add constraint FK_交流点赞_交流点赞_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 交流点赞
   add constraint FK_交流点赞_交流点赞2_交流 foreign key (交流编号)
      references 交流 (交流编号)
go

alter table 会员订制
   add constraint FK_会员订制_会员订制_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 会员订制
   add constraint FK_会员订制_会员订制2_会员 foreign key (会员编号)
      references 会员 (会员编号)
go

alter table 关注表
   add constraint FK_关注表_关注表_用户信息 foreign key (用户信_用户编号)
      references 用户信息 (用户编号)
go

alter table 关注表
   add constraint FK_关注表_关注表2_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 拔草
   add constraint FK_拔草_GOODS_WEE_商品 foreign key (商品编号)
      references 商品 (商品编号)
go

alter table 拔草
   add constraint FK_拔草_拔草发布_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 拔草
   add constraint FK_拔草_拔草收藏2_用户信息 foreign key (用户信_用户编号)
      references 用户信息 (用户编号)
go

alter table 拔草
   add constraint FK_拔草_拔草点赞2_用户信息 foreign key (用户信_用户编号2)
      references 用户信息 (用户编号)
go

alter table 拔草
   add constraint FK_拔草_拔草评论_用户信息 foreign key (用户信_用户编号3)
      references 用户信息 (用户编号)
go

alter table 日程表
   add constraint FK_日程表_USER_CALE_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 用户信息
   add constraint FK_用户信息_USER_ADD_用户地址 foreign key (用户地址编号)
      references 用户地址 (用户地址编号)
go

alter table 用户信息
   add constraint FK_用户信息_拔草收藏_拔草 foreign key (拔草_拔草编号)
      references 拔草 (拔草编号)
go

alter table 用户信息
   add constraint FK_用户信息_拔草点赞_拔草 foreign key (拔草编号)
      references 拔草 (拔草编号)
go

alter table 用户信息
   add constraint FK_用户信息_种草收藏_种草 foreign key (种草编号)
      references 种草 (种草编号)
go

alter table 用户信息
   add constraint FK_用户信息_种草点赞_种草 foreign key (种草_种草编号)
      references 种草 (种草编号)
go

alter table 用户信息
   add constraint FK_用户信息_聊天_用户信息 foreign key (用户信_用户编号)
      references 用户信息 (用户编号)
go

alter table 种草
   add constraint FK_种草_GOODS_PLA_商品 foreign key (商品编号)
      references 商品 (商品编号)
go

alter table 种草
   add constraint FK_种草_种草发布_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 种草
   add constraint FK_种草_种草收藏2_用户信息 foreign key (用户信_用户编号)
      references 用户信息 (用户编号)
go

alter table 种草
   add constraint FK_种草_种草点赞2_用户信息 foreign key (用户信_用户编号2)
      references 用户信息 (用户编号)
go

alter table 种草
   add constraint FK_种草_种草评论_用户信息 foreign key (用户信_用户编号3)
      references 用户信息 (用户编号)
go

alter table 约妆
   add constraint FK_约妆_约妆发布_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 约妆
   add constraint FK_约妆_约妆评论_用户信息 foreign key (用户信_用户编号)
      references 用户信息 (用户编号)
go

alter table 约妆收藏
   add constraint FK_约妆收藏_约妆收藏_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 约妆收藏
   add constraint FK_约妆收藏_约妆收藏2_约妆 foreign key (约妆编号)
      references 约妆 (约妆编号)
go

alter table 约妆点赞
   add constraint FK_约妆点赞_约妆点赞_用户信息 foreign key (用户编号)
      references 用户信息 (用户编号)
go

alter table 约妆点赞
   add constraint FK_约妆点赞_约妆点赞2_约妆 foreign key (约妆编号)
      references 约妆 (约妆编号)
go

