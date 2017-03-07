/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2008                    */
/* Created on:     2017/3/7 23:35:20                            */
/*==============================================================*/


/*==============================================================*/
/* Table: Dating_Label                                          */
/*==============================================================*/
create table Dating_Label (
   Լױ���                 char(11)             not null,
   Լױ��ǩ��                varchar(10)          not null,
   constraint PK_DATING_LABEL primary key (Լױ���, Լױ��ǩ��)
)
go

/*==============================================================*/
/* Index: Dating_Label_FK                                       */
/*==============================================================*/
create index Dating_Label_FK on Dating_Label (
Լױ��� ASC
)
go

/*==============================================================*/
/* Index: Dating_Label2_FK                                      */
/*==============================================================*/
create index Dating_Label2_FK on Dating_Label (
Լױ��ǩ�� ASC
)
go

/*==============================================================*/
/* Table: Goods_Label                                           */
/*==============================================================*/
create table Goods_Label (
   ��Ʒ���                 char(11)             not null,
   ��Ʒ��ǩ��                varchar(10)          not null,
   constraint PK_GOODS_LABEL primary key (��Ʒ���, ��Ʒ��ǩ��)
)
go

/*==============================================================*/
/* Index: Goods_Label_FK                                        */
/*==============================================================*/
create index Goods_Label_FK on Goods_Label (
��Ʒ��� ASC
)
go

/*==============================================================*/
/* Index: Goods_Label2_FK                                       */
/*==============================================================*/
create index Goods_Label2_FK on Goods_Label (
��Ʒ��ǩ�� ASC
)
go

/*==============================================================*/
/* Table: Plant_Label                                           */
/*==============================================================*/
create table Plant_Label (
   �ֲݱ��                 char(11)             not null,
   �ֲݱ�ǩ��                varchar(10)          not null,
   constraint PK_PLANT_LABEL primary key (�ֲݱ��, �ֲݱ�ǩ��)
)
go

/*==============================================================*/
/* Index: Plant_Label_FK                                        */
/*==============================================================*/
create index Plant_Label_FK on Plant_Label (
�ֲݱ�� ASC
)
go

/*==============================================================*/
/* Index: Plant_Label2_FK                                       */
/*==============================================================*/
create index Plant_Label2_FK on Plant_Label (
�ֲݱ�ǩ�� ASC
)
go

/*==============================================================*/
/* Table: Talk_Label                                            */
/*==============================================================*/
create table Talk_Label (
   �������                 char(11)             not null,
   ������ǩ��                varchar(10)          not null,
   constraint PK_TALK_LABEL primary key (�������, ������ǩ��)
)
go

/*==============================================================*/
/* Index: Talk_Label_FK                                         */
/*==============================================================*/
create index Talk_Label_FK on Talk_Label (
������� ASC
)
go

/*==============================================================*/
/* Index: Talk_Label2_FK                                        */
/*==============================================================*/
create index Talk_Label2_FK on Talk_Label (
������ǩ�� ASC
)
go

/*==============================================================*/
/* Table: User_Label                                            */
/*==============================================================*/
create table User_Label (
   �û����                 char(11)             not null,
   �û���ǩ��                varchar(10)          not null,
   constraint PK_USER_LABEL primary key (�û����, �û���ǩ��)
)
go

/*==============================================================*/
/* Index: User_Label_FK                                         */
/*==============================================================*/
create index User_Label_FK on User_Label (
�û���� ASC
)
go

/*==============================================================*/
/* Index: User_Label2_FK                                        */
/*==============================================================*/
create index User_Label2_FK on User_Label (
�û���ǩ�� ASC
)
go

/*==============================================================*/
/* Table: User_Skin                                             */
/*==============================================================*/
create table User_Skin (
   �û����                 char(11)             not null,
   ������                  varchar(10)          not null,
   constraint PK_USER_SKIN primary key (�û����, ������)
)
go

/*==============================================================*/
/* Index: User_Skin_FK                                          */
/*==============================================================*/
create index User_Skin_FK on User_Skin (
�û���� ASC
)
go

/*==============================================================*/
/* Index: User_Skin2_FK                                         */
/*==============================================================*/
create index User_Skin2_FK on User_Skin (
������ ASC
)
go

/*==============================================================*/
/* Table: Weed_Label                                            */
/*==============================================================*/
create table Weed_Label (
   �βݱ��                 char(11)             not null,
   �βݱ�ǩ��                varchar(10)          not null,
   constraint PK_WEED_LABEL primary key (�βݱ��, �βݱ�ǩ��)
)
go

/*==============================================================*/
/* Index: Weed_Label_FK                                         */
/*==============================================================*/
create index Weed_Label_FK on Weed_Label (
�βݱ�� ASC
)
go

/*==============================================================*/
/* Index: Weed_Label2_FK                                        */
/*==============================================================*/
create index Weed_Label2_FK on Weed_Label (
�βݱ�ǩ�� ASC
)
go

/*==============================================================*/
/* Table: ����                                                    */
/*==============================================================*/
create table ���� (
   �������                 char(11)             not null,
   �û����                 char(11)             not null,
   �û���_�û����             char(11)             not null,
   ����������                varchar(10)          not null,
   ��������                 varchar(50)          not null,
   �����ı�·��               varchar(100)         not null,
   ����ͼƬ·��               varchar(100)         not null,
   ��������                 varchar(100)         not null,
   �����ղش���               int                  not null,
   �������޴���               int                  not null,
   �������۴���               int                  not null,
   ��������ʱ��               datetime             not null,
   ������������               varchar(100)         not null,
   ��������ʱ��               datetime             not null,
   constraint PK_���� primary key nonclustered (�������)
)
go

/*==============================================================*/
/* Index: ��������_FK                                               */
/*==============================================================*/
create index ��������_FK on ���� (
�û���� ASC
)
go

/*==============================================================*/
/* Index: ��������_FK                                               */
/*==============================================================*/
create index ��������_FK on ���� (
�û���_�û���� ASC
)
go

/*==============================================================*/
/* Index: Talk_Type_FK                                          */
/*==============================================================*/
create index Talk_Type_FK on ���� (
���������� ASC
)
go

/*==============================================================*/
/* Table: �����ղ�                                                  */
/*==============================================================*/
create table �����ղ� (
   �û����                 char(11)             not null,
   �������                 char(11)             not null,
   �����ղ�ʱ��               datetime             not null,
   constraint PK_�����ղ� primary key (�û����, �������)
)
go

/*==============================================================*/
/* Index: �����ղ�_FK                                               */
/*==============================================================*/
create index �����ղ�_FK on �����ղ� (
�û���� ASC
)
go

/*==============================================================*/
/* Index: �����ղ�2_FK                                              */
/*==============================================================*/
create index �����ղ�2_FK on �����ղ� (
������� ASC
)
go

/*==============================================================*/
/* Table: ������ǩ                                                  */
/*==============================================================*/
create table ������ǩ (
   ������ǩ��                varchar(10)          not null,
   ������ǩ����               varchar(50)          not null,
   �ñ�ǩ������               int                  not null,
   constraint PK_������ǩ primary key nonclustered (������ǩ��)
)
go

/*==============================================================*/
/* Table: ��������                                                  */
/*==============================================================*/
create table �������� (
   �û����                 char(11)             not null,
   �������                 char(11)             not null,
   ��������ʱ��               datetime             not null,
   constraint PK_�������� primary key (�û����, �������)
)
go

/*==============================================================*/
/* Index: ��������_FK                                               */
/*==============================================================*/
create index ��������_FK on �������� (
�û���� ASC
)
go

/*==============================================================*/
/* Index: ��������2_FK                                              */
/*==============================================================*/
create index ��������2_FK on �������� (
������� ASC
)
go

/*==============================================================*/
/* Table: ��������                                                  */
/*==============================================================*/
create table �������� (
   ����������                varchar(10)          not null,
   constraint PK_�������� primary key nonclustered (����������)
)
go

/*==============================================================*/
/* Table: ��Ա                                                    */
/*==============================================================*/
create table ��Ա (
   ��Ա���                 char(11)             not null,
   constraint PK_��Ա primary key nonclustered (��Ա���)
)
go

/*==============================================================*/
/* Table: ��Ա����                                                  */
/*==============================================================*/
create table ��Ա���� (
   �û����                 char(11)             not null,
   ��Ա���                 char(11)             not null,
   ��ͨʱ��                 int                  not null,
   ��ͨʱ��                 datetime             not null,
   constraint PK_��Ա���� primary key (�û����, ��Ա���)
)
go

/*==============================================================*/
/* Index: ��Ա����_FK                                               */
/*==============================================================*/
create index ��Ա����_FK on ��Ա���� (
�û���� ASC
)
go

/*==============================================================*/
/* Index: ��Ա����2_FK                                              */
/*==============================================================*/
create index ��Ա����2_FK on ��Ա���� (
��Ա��� ASC
)
go

/*==============================================================*/
/* Table: ��ע��                                                   */
/*==============================================================*/
create table ��ע�� (
   �û���_�û����             char(11)             not null,
   �û����                 char(11)             not null,
   ��ע��ע��                varchar(50)          null,
   ��עʱ��                 datetime             not null,
   constraint PK_��ע�� primary key (�û���_�û����, �û����)
)
go

/*==============================================================*/
/* Index: ��ע��_FK                                                */
/*==============================================================*/
create index ��ע��_FK on ��ע�� (
�û���_�û���� ASC
)
go

/*==============================================================*/
/* Index: ��ע��2_FK                                               */
/*==============================================================*/
create index ��ע��2_FK on ��ע�� (
�û���� ASC
)
go

/*==============================================================*/
/* Table: ��Ʒ                                                    */
/*==============================================================*/
create table ��Ʒ (
   ��Ʒ���                 char(11)             not null,
   ��Ʒ����                 varchar(50)          not null,
   ��Ʒ�ı�·��               varchar(100)         not null,
   ��ƷͼƬ·��               varchar(100)         not null,
   ��Ʒ����                 varchar(1000)        null,
   ��Ʒ�ֲݴ���               int                  not null,
   ��Ʒ�βݴ���               int                  not null,
   constraint PK_��Ʒ primary key nonclustered (��Ʒ���)
)
go

/*==============================================================*/
/* Table: ��Ʒ��ǩ                                                  */
/*==============================================================*/
create table ��Ʒ��ǩ (
   ��Ʒ��ǩ��                varchar(10)          not null,
   ��Ʒ��ǩ����               varchar(50)          not null,
   �ñ�ǩ��Ʒ��               int                  not null,
   constraint PK_��Ʒ��ǩ primary key nonclustered (��Ʒ��ǩ��)
)
go

/*==============================================================*/
/* Table: �β�                                                    */
/*==============================================================*/
create table �β� (
   �βݱ��                 char(11)             not null,
   �û����                 char(11)             not null,
   �û���_�û����             char(11)             not null,
   �û���_�û����2            char(11)             not null,
   �û���_�û����3            char(11)             not null,
   ��Ʒ���                 char(11)             not null,
   �βݱ���                 varchar(50)          not null,
   �β��ı�·��               varchar(100)         not null,
   �β�ͼƬ·��               varchar(100)         not null,
   �β�����                 varchar(100)         not null,
   �β��ղش���               int                  not null,
   �βݵ��޴���               int                  not null,
   �β����۴���               int                  not null,
   �βݷ���ʱ��               datetime             not null,
   �β���������               varchar(100)         null,
   �β�����ʱ��               datetime             not null,
   �β��ղ�ʱ��               datetime             not null,
   �βݵ���ʱ��               datetime             not null,
   constraint PK_�β� primary key nonclustered (�βݱ��)
)
go

/*==============================================================*/
/* Index: Goods_Weed_FK                                         */
/*==============================================================*/
create index Goods_Weed_FK on �β� (
��Ʒ��� ASC
)
go

/*==============================================================*/
/* Index: �βݷ���_FK                                               */
/*==============================================================*/
create index �βݷ���_FK on �β� (
�û���� ASC
)
go

/*==============================================================*/
/* Index: �β�����_FK                                               */
/*==============================================================*/
create index �β�����_FK on �β� (
�û���_�û����3 ASC
)
go

/*==============================================================*/
/* Index: �β��ղ�2_FK                                              */
/*==============================================================*/
create index �β��ղ�2_FK on �β� (
�û���_�û���� ASC
)
go

/*==============================================================*/
/* Index: �βݵ���2_FK                                              */
/*==============================================================*/
create index �βݵ���2_FK on �β� (
�û���_�û����2 ASC
)
go

/*==============================================================*/
/* Table: �βݱ�ǩ                                                  */
/*==============================================================*/
create table �βݱ�ǩ (
   �βݱ�ǩ��                varchar(10)          not null,
   �βݱ�ǩ����               varchar(50)          not null,
   �ñ�ǩ�β���               int                  not null,
   constraint PK_�βݱ�ǩ primary key nonclustered (�βݱ�ǩ��)
)
go

/*==============================================================*/
/* Table: �ճ̱�                                                   */
/*==============================================================*/
create table �ճ̱� (
   �ճ̱�ʱ��                datetime             not null,
   �û����                 char(11)             null,
   �ճ̱��¼�                varchar(200)         not null,
   constraint PK_�ճ̱� primary key nonclustered (�ճ̱�ʱ��)
)
go

/*==============================================================*/
/* Index: User_Calendar_FK                                      */
/*==============================================================*/
create index User_Calendar_FK on �ճ̱� (
�û���� ASC
)
go

/*==============================================================*/
/* Table: �û���Ϣ                                                  */
/*==============================================================*/
create table �û���Ϣ (
   �û����                 char(11)             not null,
   �û���ַ���               char(11)             null,
   �û���_�û����             char(11)             null,
   �ֲݱ��                 char(11)             null,
   �βݱ��                 char(11)             null,
   �ֲ�_�ֲݱ��              char(11)             null,
   �β�_�βݱ��              char(11)             null,
   ��¼��                  varchar(50)          not null,
   ��½����                 varchar(50)          not null,
   �û�ͷ��·��               varchar(100)         null,
   ����                   varchar(50)          null,
   �û���                  varchar(50)          not null,
   �ֻ���                  varchar(11)          null,
   ע��ʱ��                 datetime             not null,
   ���˼��                 varchar(100)         null,
   ������                 varchar(30)          not null,
   �����¼·��               varchar(100)         not null,
   ����ͼƬ·��               varchar(100)         not null,
   constraint PK_�û���Ϣ primary key nonclustered (�û����)
)
go

/*==============================================================*/
/* Index: ����_FK                                                 */
/*==============================================================*/
create index ����_FK on �û���Ϣ (
�û���_�û���� ASC
)
go

/*==============================================================*/
/* Index: �ֲ��ղ�_FK                                               */
/*==============================================================*/
create index �ֲ��ղ�_FK on �û���Ϣ (
�ֲݱ�� ASC
)
go

/*==============================================================*/
/* Index: �ֲݵ���_FK                                               */
/*==============================================================*/
create index �ֲݵ���_FK on �û���Ϣ (
�ֲ�_�ֲݱ�� ASC
)
go

/*==============================================================*/
/* Index: �β��ղ�_FK                                               */
/*==============================================================*/
create index �β��ղ�_FK on �û���Ϣ (
�β�_�βݱ�� ASC
)
go

/*==============================================================*/
/* Index: �βݵ���_FK                                               */
/*==============================================================*/
create index �βݵ���_FK on �û���Ϣ (
�βݱ�� ASC
)
go

/*==============================================================*/
/* Index: User_Add_FK                                           */
/*==============================================================*/
create index User_Add_FK on �û���Ϣ (
�û���ַ��� ASC
)
go

/*==============================================================*/
/* Table: �û���ַ                                                  */
/*==============================================================*/
create table �û���ַ (
   �û���ַ���               char(11)             not null,
   �û���ַ��                varchar(50)          not null,
   constraint PK_�û���ַ primary key nonclustered (�û���ַ���)
)
go

/*==============================================================*/
/* Table: �û���ǩ                                                  */
/*==============================================================*/
create table �û���ǩ (
   �û���ǩ��                varchar(10)          not null,
   �û���ǩ����               varchar(50)          not null,
   ���û���ǩ����              int                  not null,
   constraint PK_�û���ǩ primary key nonclustered (�û���ǩ��)
)
go

/*==============================================================*/
/* Table: �û�����                                                  */
/*==============================================================*/
create table �û����� (
   ������                  varchar(10)          not null,
   ��������                 varchar(50)          not null,
   �÷�������                int                  not null,
   constraint PK_�û����� primary key nonclustered (������)
)
go

/*==============================================================*/
/* Table: �ֲ�                                                    */
/*==============================================================*/
create table �ֲ� (
   �ֲݱ��                 char(11)             not null,
   �û����                 char(11)             not null,
   ��Ʒ���                 char(11)             not null,
   �û���_�û����             char(11)             not null,
   �û���_�û����2            char(11)             not null,
   �û���_�û����3            char(11)             not null,
   �ֲݱ���                 varchar(50)          not null,
   �ֲ��ı�·��               varchar(100)         not null,
   �ֲ�ͼƬ·��               varchar(100)         not null,
   �ֲ�����                 varchar(100)         not null,
   �ֲ��ղش���               int                  not null,
   �ֲݵ��޴���               int                  not null,
   �ֲ����۴���               int                  not null,
   �ֲݷ���ʱ��               datetime             not null,
   �ֲ���������               varchar(100)         not null,
   �ֲ�����ʱ��               datetime             not null,
   �ֲ��ղ�ʱ��               datetime             not null,
   �ֲݵ���ʱ��               datetime             not null,
   constraint PK_�ֲ� primary key nonclustered (�ֲݱ��)
)
go

/*==============================================================*/
/* Index: Goods_Plant_FK                                        */
/*==============================================================*/
create index Goods_Plant_FK on �ֲ� (
��Ʒ��� ASC
)
go

/*==============================================================*/
/* Index: �ֲݷ���_FK                                               */
/*==============================================================*/
create index �ֲݷ���_FK on �ֲ� (
�û���� ASC
)
go

/*==============================================================*/
/* Index: �ֲ�����_FK                                               */
/*==============================================================*/
create index �ֲ�����_FK on �ֲ� (
�û���_�û����3 ASC
)
go

/*==============================================================*/
/* Index: �ֲ��ղ�2_FK                                              */
/*==============================================================*/
create index �ֲ��ղ�2_FK on �ֲ� (
�û���_�û���� ASC
)
go

/*==============================================================*/
/* Index: �ֲݵ���2_FK                                              */
/*==============================================================*/
create index �ֲݵ���2_FK on �ֲ� (
�û���_�û����2 ASC
)
go

/*==============================================================*/
/* Table: �ֲݱ�ǩ                                                  */
/*==============================================================*/
create table �ֲݱ�ǩ (
   �ֲݱ�ǩ��                varchar(10)          not null,
   �ֲݱ�ǩ����               varchar(50)          not null,
   �ñ�ǩ�ֲ���               int                  not null,
   constraint PK_�ֲݱ�ǩ primary key nonclustered (�ֲݱ�ǩ��)
)
go

/*==============================================================*/
/* Table: Լױ                                                    */
/*==============================================================*/
create table Լױ (
   Լױ���                 char(11)             not null,
   �û����                 char(11)             not null,
   �û���_�û����             char(11)             not null,
   Լױ����                 varchar(50)          not null,
   Լױ�ı�·��               varchar(100)         not null,
   ԼױͼƬ·��               varchar(100)         not null,
   Լױ����                 varchar(100)         not null,
   Լױ�ղش���               int                  not null,
   Լױ���޴���               int                  not null,
   Լױ���۴���               int                  not null,
   Լױ����ʱ��               datetime             not null,
   Լױ��������               varchar(100)         not null,
   Լױ����ʱ��               datetime             not null,
   constraint PK_Լױ primary key nonclustered (Լױ���)
)
go

/*==============================================================*/
/* Index: Լױ����_FK                                               */
/*==============================================================*/
create index Լױ����_FK on Լױ (
�û���� ASC
)
go

/*==============================================================*/
/* Index: Լױ����_FK                                               */
/*==============================================================*/
create index Լױ����_FK on Լױ (
�û���_�û���� ASC
)
go

/*==============================================================*/
/* Table: Լױ�ղ�                                                  */
/*==============================================================*/
create table Լױ�ղ� (
   �û����                 char(11)             not null,
   Լױ���                 char(11)             not null,
   Լױ�ղ�ʱ��               datetime             not null,
   constraint PK_Լױ�ղ� primary key (�û����, Լױ���)
)
go

/*==============================================================*/
/* Index: Լױ�ղ�_FK                                               */
/*==============================================================*/
create index Լױ�ղ�_FK on Լױ�ղ� (
�û���� ASC
)
go

/*==============================================================*/
/* Index: Լױ�ղ�2_FK                                              */
/*==============================================================*/
create index Լױ�ղ�2_FK on Լױ�ղ� (
Լױ��� ASC
)
go

/*==============================================================*/
/* Table: Լױ��ǩ                                                  */
/*==============================================================*/
create table Լױ��ǩ (
   Լױ��ǩ��                varchar(10)          not null,
   Լױ��ǩ����               varchar(50)          not null,
   �ñ�ǩԼױ��               int                  not null,
   constraint PK_Լױ��ǩ primary key nonclustered (Լױ��ǩ��)
)
go

/*==============================================================*/
/* Table: Լױ����                                                  */
/*==============================================================*/
create table Լױ���� (
   �û����                 char(11)             not null,
   Լױ���                 char(11)             not null,
   Լױ����ʱ��               datetime             not null,
   constraint PK_Լױ���� primary key (�û����, Լױ���)
)
go

/*==============================================================*/
/* Index: Լױ����_FK                                               */
/*==============================================================*/
create index Լױ����_FK on Լױ���� (
�û���� ASC
)
go

/*==============================================================*/
/* Index: Լױ����2_FK                                              */
/*==============================================================*/
create index Լױ����2_FK on Լױ���� (
Լױ��� ASC
)
go

alter table Dating_Label
   add constraint FK_DATING_L_DATING_LA_Լױ foreign key (Լױ���)
      references Լױ (Լױ���)
go

alter table Dating_Label
   add constraint FK_DATING_L_DATING_LA_Լױ��ǩ foreign key (Լױ��ǩ��)
      references Լױ��ǩ (Լױ��ǩ��)
go

alter table Goods_Label
   add constraint FK_GOODS_LA_GOODS_LAB_��Ʒ foreign key (��Ʒ���)
      references ��Ʒ (��Ʒ���)
go

alter table Goods_Label
   add constraint FK_GOODS_LA_GOODS_LAB_��Ʒ��ǩ foreign key (��Ʒ��ǩ��)
      references ��Ʒ��ǩ (��Ʒ��ǩ��)
go

alter table Plant_Label
   add constraint FK_PLANT_LA_PLANT_LAB_�ֲ� foreign key (�ֲݱ��)
      references �ֲ� (�ֲݱ��)
go

alter table Plant_Label
   add constraint FK_PLANT_LA_PLANT_LAB_�ֲݱ�ǩ foreign key (�ֲݱ�ǩ��)
      references �ֲݱ�ǩ (�ֲݱ�ǩ��)
go

alter table Talk_Label
   add constraint FK_TALK_LAB_TALK_LABE_���� foreign key (�������)
      references ���� (�������)
go

alter table Talk_Label
   add constraint FK_TALK_LAB_TALK_LABE_������ǩ foreign key (������ǩ��)
      references ������ǩ (������ǩ��)
go

alter table User_Label
   add constraint FK_USER_LAB_USER_LABE_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table User_Label
   add constraint FK_USER_LAB_USER_LABE_�û���ǩ foreign key (�û���ǩ��)
      references �û���ǩ (�û���ǩ��)
go

alter table User_Skin
   add constraint FK_USER_SKI_USER_SKIN_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table User_Skin
   add constraint FK_USER_SKI_USER_SKIN_�û����� foreign key (������)
      references �û����� (������)
go

alter table Weed_Label
   add constraint FK_WEED_LAB_WEED_LABE_�β� foreign key (�βݱ��)
      references �β� (�βݱ��)
go

alter table Weed_Label
   add constraint FK_WEED_LAB_WEED_LABE_�βݱ�ǩ foreign key (�βݱ�ǩ��)
      references �βݱ�ǩ (�βݱ�ǩ��)
go

alter table ����
   add constraint FK_����_TALK_TYPE_�������� foreign key (����������)
      references �������� (����������)
go

alter table ����
   add constraint FK_����_��������_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table ����
   add constraint FK_����_��������_�û���Ϣ foreign key (�û���_�û����)
      references �û���Ϣ (�û����)
go

alter table �����ղ�
   add constraint FK_�����ղ�_�����ղ�_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table �����ղ�
   add constraint FK_�����ղ�_�����ղ�2_���� foreign key (�������)
      references ���� (�������)
go

alter table ��������
   add constraint FK_��������_��������_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table ��������
   add constraint FK_��������_��������2_���� foreign key (�������)
      references ���� (�������)
go

alter table ��Ա����
   add constraint FK_��Ա����_��Ա����_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table ��Ա����
   add constraint FK_��Ա����_��Ա����2_��Ա foreign key (��Ա���)
      references ��Ա (��Ա���)
go

alter table ��ע��
   add constraint FK_��ע��_��ע��_�û���Ϣ foreign key (�û���_�û����)
      references �û���Ϣ (�û����)
go

alter table ��ע��
   add constraint FK_��ע��_��ע��2_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table �β�
   add constraint FK_�β�_GOODS_WEE_��Ʒ foreign key (��Ʒ���)
      references ��Ʒ (��Ʒ���)
go

alter table �β�
   add constraint FK_�β�_�βݷ���_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table �β�
   add constraint FK_�β�_�β��ղ�2_�û���Ϣ foreign key (�û���_�û����)
      references �û���Ϣ (�û����)
go

alter table �β�
   add constraint FK_�β�_�βݵ���2_�û���Ϣ foreign key (�û���_�û����2)
      references �û���Ϣ (�û����)
go

alter table �β�
   add constraint FK_�β�_�β�����_�û���Ϣ foreign key (�û���_�û����3)
      references �û���Ϣ (�û����)
go

alter table �ճ̱�
   add constraint FK_�ճ̱�_USER_CALE_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table �û���Ϣ
   add constraint FK_�û���Ϣ_USER_ADD_�û���ַ foreign key (�û���ַ���)
      references �û���ַ (�û���ַ���)
go

alter table �û���Ϣ
   add constraint FK_�û���Ϣ_�β��ղ�_�β� foreign key (�β�_�βݱ��)
      references �β� (�βݱ��)
go

alter table �û���Ϣ
   add constraint FK_�û���Ϣ_�βݵ���_�β� foreign key (�βݱ��)
      references �β� (�βݱ��)
go

alter table �û���Ϣ
   add constraint FK_�û���Ϣ_�ֲ��ղ�_�ֲ� foreign key (�ֲݱ��)
      references �ֲ� (�ֲݱ��)
go

alter table �û���Ϣ
   add constraint FK_�û���Ϣ_�ֲݵ���_�ֲ� foreign key (�ֲ�_�ֲݱ��)
      references �ֲ� (�ֲݱ��)
go

alter table �û���Ϣ
   add constraint FK_�û���Ϣ_����_�û���Ϣ foreign key (�û���_�û����)
      references �û���Ϣ (�û����)
go

alter table �ֲ�
   add constraint FK_�ֲ�_GOODS_PLA_��Ʒ foreign key (��Ʒ���)
      references ��Ʒ (��Ʒ���)
go

alter table �ֲ�
   add constraint FK_�ֲ�_�ֲݷ���_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table �ֲ�
   add constraint FK_�ֲ�_�ֲ��ղ�2_�û���Ϣ foreign key (�û���_�û����)
      references �û���Ϣ (�û����)
go

alter table �ֲ�
   add constraint FK_�ֲ�_�ֲݵ���2_�û���Ϣ foreign key (�û���_�û����2)
      references �û���Ϣ (�û����)
go

alter table �ֲ�
   add constraint FK_�ֲ�_�ֲ�����_�û���Ϣ foreign key (�û���_�û����3)
      references �û���Ϣ (�û����)
go

alter table Լױ
   add constraint FK_Լױ_Լױ����_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table Լױ
   add constraint FK_Լױ_Լױ����_�û���Ϣ foreign key (�û���_�û����)
      references �û���Ϣ (�û����)
go

alter table Լױ�ղ�
   add constraint FK_Լױ�ղ�_Լױ�ղ�_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table Լױ�ղ�
   add constraint FK_Լױ�ղ�_Լױ�ղ�2_Լױ foreign key (Լױ���)
      references Լױ (Լױ���)
go

alter table Լױ����
   add constraint FK_Լױ����_Լױ����_�û���Ϣ foreign key (�û����)
      references �û���Ϣ (�û����)
go

alter table Լױ����
   add constraint FK_Լױ����_Լױ����2_Լױ foreign key (Լױ���)
      references Լױ (Լױ���)
go

