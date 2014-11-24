.class public Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;
.source "EnterpriseUnixFTPEntryParser.java"


# static fields
.field private static final MONTHS:Ljava/lang/String; = "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

.field private static final REGEX:Ljava/lang/String; = "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "(([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z])([\\-]|[A-Z]))(\\S*)\\s*(\\S+)\\s*(\\S*)\\s*(\\d*)\\s*(\\d*)\\s*(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)\\s*((?:[012]\\d*)|(?:3[01]))\\s*((\\d\\d\\d\\d)|((?:[01]\\d)|(?:2[0123])):([012345]\\d))\\s(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/RegexFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 18

    new-instance v4, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v4}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_2

    const/16 v16, 0xe

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v13

    const/16 v16, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    const/16 v16, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    const/16 v16, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v3

    const/16 v16, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v7

    const/16 v16, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x17

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/EnterpriseUnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    invoke-virtual {v4, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    :try_start_0
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v16, 0xe

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v16, 0xd

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v16, 0xc

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v16, 0xb

    const/16 v17, 0x0

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    :try_start_1
    const-string v16, "(Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec)"

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    div-int/lit8 v10, v12, 0x4

    if-eqz v15, :cond_0

    const/16 v16, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    :goto_1
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0, v10}, Ljava/util/Calendar;->set(II)V

    const/16 v16, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v4, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_2
    invoke-virtual {v4, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    :goto_3
    return-object v4

    :cond_0
    const/16 v16, 0x1

    :try_start_2
    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v14

    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v16

    move/from16 v0, v16

    if-ge v0, v10, :cond_1

    add-int/lit8 v14, v14, -0x1

    :cond_1
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v2, v0, v14}, Ljava/util/Calendar;->set(II)V

    const/16 v16, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v16, 0xc

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->set(II)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v16

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_3

    :catch_1
    move-exception v16

    goto/16 :goto_0
.end method
