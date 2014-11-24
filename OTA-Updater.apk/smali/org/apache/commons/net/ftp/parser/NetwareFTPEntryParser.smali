.class public Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;
.source "NetwareFTPEntryParser.java"


# static fields
.field private static final DEFAULT_DATE_FORMAT:Ljava/lang/String; = "MMM dd yyyy"

.field private static final DEFAULT_RECENT_DATE_FORMAT:Ljava/lang/String; = "MMM dd HH:mm"

.field private static final REGEX:Ljava/lang/String; = "(d|-){1}\\s+\\[(.*)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 1

    const-string v0, "(d|-){1}\\s+\\[(.*)\\]\\s+(\\S+)\\s+(\\d+)\\s+(\\S+\\s+\\S+\\s+((\\d+:\\d+)|(\\d{4})))\\s+(.*)"

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method


# virtual methods
.method protected getDefaultConfiguration()Lorg/apache/commons/net/ftp/FTPClientConfig;
    .locals 7

    const/4 v4, 0x0

    new-instance v0, Lorg/apache/commons/net/ftp/FTPClientConfig;

    const-string v1, "NETWARE"

    const-string v2, "MMM dd yyyy"

    const-string v3, "MMM dd HH:mm"

    move-object v5, v4

    move-object v6, v4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/net/ftp/FTPClientConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x0

    const/4 v9, 0x1

    new-instance v3, Lorg/apache/commons/net/ftp/FTPFile;

    invoke-direct {v3}, Lorg/apache/commons/net/ftp/FTPFile;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->matches(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0, v9}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x3

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x5

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x9

    invoke-virtual {p0, v7}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;->group(I)Ljava/lang/String;

    move-result-object v4

    :try_start_0
    invoke-super {p0, v1}, Lorg/apache/commons/net/ftp/parser/ConfigurableFTPFileEntryParserImpl;->parseTimestamp(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setTimestamp(Ljava/util/Calendar;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "d"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    :goto_1
    invoke-virtual {v3, v6}, Lorg/apache/commons/net/ftp/FTPFile;->setUser(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Lorg/apache/commons/net/ftp/FTPFile;->setName(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Lorg/apache/commons/net/ftp/FTPFile;->setSize(J)V

    const-string v7, "R"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v11, :cond_0

    invoke-virtual {v3, v10, v10, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    :cond_0
    const-string v7, "W"

    invoke-virtual {v0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    if-eq v7, v11, :cond_1

    invoke-virtual {v3, v10, v9, v9}, Lorg/apache/commons/net/ftp/FTPFile;->setPermission(IIZ)V

    :cond_1
    :goto_2
    return-object v3

    :cond_2
    invoke-virtual {v3, v10}, Lorg/apache/commons/net/ftp/FTPFile;->setType(I)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    :catch_0
    move-exception v7

    goto :goto_0
.end method
