.class public Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "UnixFTPEntryParser.java"


# static fields
.field static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM d yyyy"

.field static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM d HH:mm"

.field public static final NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig; = null

.field static final NUMERIC_DATE_FORMAT:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field private static final REGEX:Ljava/lang/String; = "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v3, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "yyyy-MM-dd HH:mm"

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->NUMERIC_DATE_CONFIG:Lorg/apache/commons/net/ftp/FTPClientConfig;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    const-string v0, "([bcdelfmpSs-])(((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-]))((r|-)(w|-)([xsStTL-])))\\+?\\s*(\\d+)\\s+(?:(\\S+(?:\\s\\S+)*?)\\s+)?(?:(\\S+(?:\\s\\S+)*)\\s+)?(\\d+(?:,\\s*\\d+)?)\\s+((?:\\d+[-/]\\d+[-/]\\d+)|(?:\\S{3}\\s+\\d{1,2})|(?:\\d{1,2}\\s+\\S{3}))\\s+(\\d+(?::\\d+)?)\\s+(\\S*)(\\s*.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "UNIX"

    const-string v2, "MMM d yyyy"

    const-string v3, "MMM d HH:mm"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 20

    new-instance v7, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v7}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/4 v12, 0x0

    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_8

    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v11

    const/16 v17, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x11

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v10

    const/16 v17, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v8

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v18, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const/16 v18, 0x14

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/16 v17, 0x15

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x16

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    :try_start_0
    move-object/from16 v0, p0

    invoke-super {v0, v3}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    sparse-switch v17, :sswitch_data_0

    const/4 v14, 0x3

    :goto_1
    invoke-virtual {v7, v14}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    const/4 v9, 0x4

    const/4 v2, 0x0

    :goto_2
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ge v2, v0, :cond_3

    const/16 v18, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v17

    const-string v19, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    const/16 v17, 0x1

    :goto_3
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v7, v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    const/16 v18, 0x1

    add-int/lit8 v17, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v17

    const-string v19, "-"

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    const/16 v17, 0x1

    :goto_4
    move/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v7, v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v17, v9, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    const-string v17, "-"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/lang/String;->charAt(I)C

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v17

    if-nez v17, :cond_2

    const/16 v17, 0x2

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v9, v9, 0x4

    goto :goto_2

    :sswitch_0
    const/4 v14, 0x1

    goto :goto_1

    :sswitch_1
    const/4 v14, 0x2

    goto :goto_1

    :sswitch_2
    const/4 v14, 0x2

    goto :goto_1

    :sswitch_3
    const/4 v12, 0x1

    const/4 v14, 0x0

    goto/16 :goto_1

    :sswitch_4
    const/4 v14, 0x0

    goto/16 :goto_1

    :cond_0
    const/16 v17, 0x0

    goto :goto_3

    :cond_1
    const/16 v17, 0x0

    goto :goto_4

    :cond_2
    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v7, v2, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_5

    :cond_3
    if-nez v12, :cond_4

    :try_start_1
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setHardLinkCount(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    :goto_6
    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    :try_start_2
    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v17

    move-wide/from16 v0, v17

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_7
    if-nez v5, :cond_5

    invoke-virtual {v7, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    :goto_8
    return-object v7

    :cond_5
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v14, v0, :cond_7

    const-string v17, " -> "

    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    const/16 v17, -0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_6

    invoke-virtual {v7, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_8

    :cond_6
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    add-int/lit8 v17, v4, 0x4

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v7, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setLink(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    invoke-virtual {v7, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    const/4 v7, 0x0

    goto :goto_8

    :catch_0
    move-exception v17

    goto :goto_7

    :catch_1
    move-exception v17

    goto :goto_6

    :catch_2
    move-exception v17

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2d -> :sswitch_4
        0x62 -> :sswitch_3
        0x63 -> :sswitch_3
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_4
        0x6c -> :sswitch_2
    .end sparse-switch
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "^total \\d+$"

    invoke-virtual {v0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    return-object p1
.end method
