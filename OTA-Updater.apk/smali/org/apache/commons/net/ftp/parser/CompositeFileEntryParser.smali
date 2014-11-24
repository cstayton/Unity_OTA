.class public Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;
.super Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;
.source "CompositeFileEntryParser.java"


# instance fields
.field private cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

.field private final ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;


# direct methods
.method public constructor <init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/FTPFileEntryParserImpl;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    iput-object p1, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    return-void
.end method


# virtual methods
.method public parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;
    .locals 4

    iget-object v3, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    invoke-interface {v3, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    if-eqz v2, :cond_2

    :goto_0
    return-object v2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget-object v3, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    iget-object v3, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->ftpFileEntryParsers:[Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    aget-object v0, v3, v1

    invoke-interface {v0, p1}, Lorg/apache/commons/net/ftp/FTPFileEntryParser;->parseFTPEntry(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFile;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v0, p0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;->cachedFtpFileEntryParser:Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method
