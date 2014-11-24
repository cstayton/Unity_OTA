.class public Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "VMSFTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "d-MMM-yyyy HH:mm:ss"

.field private static final REGEX:Ljava/lang/String; = "(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    const-string v0, "(.*;[0-9]+)\\s*(\\d+)/\\d+\\s*(\\S+)\\s+(\\S+)\\s+\\[(([0-9$A-Za-z_]+)|([0-9$A-Za-z_]+),([0-9$a-zA-Z_]+))\\]?\\s*\\([a-zA-Z]*,([a-zA-Z]*),([a-zA-Z]*),([a-zA-Z]*)\\)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "VMS"

    const-string v2, "d-MMM-yyyy HH:mm:ss"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected isVersioning()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 19

    const-wide/16 v6, 0x200

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_5

    new-instance v4, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v4}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v12

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v17, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v9

    const/16 v17, 0x3

    move/from16 v0, v17

    new-array v11, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const/16 v18, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x1

    const/16 v18, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v17

    const/16 v17, 0x2

    const/16 v18, 0xb

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v11, v17

    :try_start_0
    move-object/from16 v0, p0

    invoke-super {v0, v3}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    new-instance v15, Ljava/util/StringTokenizer;

    const-string v17, ","

    move-object/from16 v0, v17

    invoke-direct {v15, v9, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v17

    packed-switch v17, :pswitch_data_0

    const/4 v5, 0x0

    const/16 v16, 0x0

    :goto_1
    const-string v17, ".DIR"

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v17

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_0

    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;->isVersioning()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-virtual {v4, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    :goto_3
    invoke-static {v12}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    mul-long v13, v17, v6

    invoke-virtual {v4, v13, v14}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    invoke-virtual {v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_4
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v2, v0, :cond_6

    aget-object v10, v11, v2

    const/16 v18, 0x0

    const/16 v17, 0x52

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-ltz v17, :cond_2

    const/16 v17, 0x1

    :goto_5
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v4, v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    const/16 v18, 0x1

    const/16 v17, 0x57

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-ltz v17, :cond_3

    const/16 v17, 0x1

    :goto_6
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v4, v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    const/16 v18, 0x2

    const/16 v17, 0x45

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    if-ltz v17, :cond_4

    const/16 v17, 0x1

    :goto_7
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v4, v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :pswitch_0
    const/4 v5, 0x0

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :pswitch_1
    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v15}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v16

    goto/16 :goto_1

    :cond_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_2

    :cond_1
    const/16 v17, 0x0

    const-string v18, ";"

    move-object/from16 v0, v18

    invoke-virtual {v8, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    const/16 v17, 0x0

    goto :goto_5

    :cond_3
    const/16 v17, 0x0

    goto :goto_6

    :cond_4
    const/16 v17, 0x0

    goto :goto_7

    :cond_5
    const/4 v4, 0x0

    :cond_6
    return-object v4

    :catch_0
    move-exception v17

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseFileList(Ljava/io/InputStream;)[Lorg/apache/commons/net/ftp/FTPFile;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lorg/apache/commons/net/ftp/FTPListParseEngine;

    invoke-direct {v0, p0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;-><init>(Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->readServerList(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/apache/commons/net/ftp/FTPListParseEngine;->getFiles()[Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v1

    return-object v1
.end method

.method public readNextEntry(Ljava/io/BufferedReader;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "Directory"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Total"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    return-object v2

    :cond_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method
