.class public Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "MLSxEntryParser.java"


# static fields
.field private static final PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

.field private static final TYPE_TO_INT:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static UNIX_GROUPS:[I

.field private static UNIX_PERMS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "file"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "cdir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "pdir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    const-string v1, "dir"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v0, v6, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    const/16 v0, 0x8

    new-array v0, v0, [[I

    new-array v1, v4, [I

    aput-object v1, v0, v4

    new-array v1, v3, [I

    aput v5, v1, v4

    aput-object v1, v0, v3

    new-array v1, v3, [I

    aput v3, v1, v4

    aput-object v1, v0, v5

    new-array v1, v5, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    const/4 v1, 0x4

    new-array v2, v3, [I

    aput v4, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v5, [I

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v5, [I

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v6, [I

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data

    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
    .end array-data

    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    return-void
.end method

.method private doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v3, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-char v1, v0, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    :pswitch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1, v6, v6, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :pswitch_5
    const/4 v4, 0x2

    invoke-virtual {p1, v6, v4, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :pswitch_6
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :pswitch_7
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :pswitch_8
    invoke-virtual {p1, v6, v6, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :pswitch_9
    invoke-virtual {p1, v6, v5, v5}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    goto :goto_1

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch
.end method

.method public static getInstance()Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    return-object v0
.end method

.method public static parseEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 1

    sget-object v0, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->PARSER:Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;

    invoke-virtual {v0, p0}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 29

    const-string v27, " "

    const/16 v28, 0x2

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_1

    const/4 v12, 0x0

    :cond_0
    return-object v12

    :cond_1
    new-instance v12, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v12}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setRawListing(Ljava/lang/String;)V

    const/16 v27, 0x1

    aget-object v27, v23, v27

    move-object/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    const/16 v27, 0x0

    aget-object v27, v23, v27

    const-string v28, ";"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    const/16 v27, 0x0

    aget-object v27, v23, v27

    sget-object v28, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v27

    const-string v28, "unix.mode="

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    move-object v4, v10

    array-length v0, v4

    move/from16 v19, v0

    const/16 v16, 0x0

    move/from16 v17, v16

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    aget-object v7, v4, v17

    const-string v27, "="

    move-object/from16 v0, v27

    invoke-virtual {v7, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    move/from16 v27, v0

    const/16 v28, 0x2

    move/from16 v0, v27

    move/from16 v1, v28

    if-eq v0, v1, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto :goto_0

    :cond_3
    const/16 v27, 0x0

    aget-object v27, v9, v27

    sget-object v28, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    const/16 v27, 0x1

    aget-object v11, v9, v27

    sget-object v27, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v26

    const-string v27, "size"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_4

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    :cond_4
    const-string v27, "sizd"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-static {v11}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    move-wide/from16 v0, v27

    invoke-virtual {v12, v0, v1}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    goto :goto_1

    :cond_5
    const-string v27, "modify"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_7

    const-string v27, "."

    move-object/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v27

    if-eqz v27, :cond_6

    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v27, "yyyyMMddHHmmss.SSS"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    :goto_2
    const-string v27, "GMT"

    invoke-static/range {v27 .. v27}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v0, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v13, Ljava/util/GregorianCalendar;

    invoke-direct {v13, v3}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V

    :try_start_0
    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    invoke-virtual {v12, v13}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V

    goto :goto_1

    :cond_6
    new-instance v24, Ljava/text/SimpleDateFormat;

    const-string v27, "yyyyMMddHHmmss"

    move-object/from16 v0, v24

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v27, "type"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_9

    sget-object v27, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->TYPE_TO_INT:Ljava/util/HashMap;

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    if-nez v18, :cond_8

    const/16 v27, 0x3

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto/16 :goto_1

    :cond_8
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v12, v0}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto/16 :goto_1

    :cond_9
    const-string v27, "unix."

    move-object/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    const-string v27, "unix."

    invoke-virtual/range {v27 .. v27}, Ljava/lang/String;->length()I

    move-result v27

    move/from16 v0, v27

    invoke-virtual {v8, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    sget-object v28, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v25

    const-string v27, "group"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_a

    invoke-virtual {v12, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setGroup(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const-string v27, "owner"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_b

    invoke-virtual {v12, v11}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_b
    const-string v27, "mode"

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v27

    add-int/lit8 v21, v27, -0x3

    const/4 v15, 0x0

    :goto_4
    const/16 v27, 0x3

    move/from16 v0, v27

    if-ge v15, v0, :cond_2

    add-int v27, v21, v15

    move/from16 v0, v27

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v27

    add-int/lit8 v6, v27, -0x30

    if-ltz v6, :cond_c

    const/16 v27, 0x7

    move/from16 v0, v27

    if-gt v6, v0, :cond_c

    sget-object v27, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_PERMS:[[I

    aget-object v5, v27, v6

    array-length v0, v5

    move/from16 v20, v0

    const/16 v16, 0x0

    :goto_5
    move/from16 v0, v16

    move/from16 v1, v20

    if-ge v0, v1, :cond_c

    aget v22, v5, v16

    sget-object v27, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->UNIX_GROUPS:[I

    aget v27, v27, v15

    const/16 v28, 0x1

    move/from16 v0, v27

    move/from16 v1, v22

    move/from16 v2, v28

    invoke-virtual {v12, v0, v1, v2}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    :cond_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_d
    if-nez v14, :cond_2

    const-string v27, "perm"

    move-object/from16 v0, v27

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v12, v1}, Lorg/apache/commons/net/ftp/parser/MLSxEntryParser;->doUnixPerms(Lorg/apache/commons/net/ftp/FTPFile;Ljava/lang/String;)V

    goto/16 :goto_1

    :catch_0
    move-exception v27

    goto/16 :goto_3
.end method
