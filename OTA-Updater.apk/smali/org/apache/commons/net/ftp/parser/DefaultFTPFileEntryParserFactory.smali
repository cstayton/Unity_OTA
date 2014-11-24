.class public Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;
.super Ljava/lang/Object;
.source "DefaultFTPFileEntryParserFactory.java"

# interfaces
.implements Lorg/apache/commons/net/ftp/parser/FTPFileEntryParserFactory;


# static fields
.field private static final JAVA_IDENTIFIER:Ljava/lang/String; = "\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME:Ljava/lang/String; = "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

.field private static final JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*\\.)+\\p{javaJavaIdentifierStart}(\\p{javaJavaIdentifierPart})*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 8

    const/4 v2, 0x0

    sget-object v5, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->JAVA_QUALIFIED_NAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    if-eqz v5, :cond_0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_0
    if-nez v2, :cond_1

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "UNIX"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_3

    new-instance v2, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :cond_1
    :goto_1
    instance-of v5, v2, Lorg/apache/commons/net/ftp/Configurable;

    if-eqz v5, :cond_2

    move-object v5, v2

    check-cast v5, Lorg/apache/commons/net/ftp/Configurable;

    invoke-interface {v5, p2}, Lorg/apache/commons/net/ftp/Configurable;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :cond_2
    return-object v2

    :catch_0
    move-exception v1

    :try_start_2
    new-instance v5, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " does not implement the interface "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "org.apache.commons.net.ftp.FTPFileEntryParser."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_1
    move-exception v5

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v5, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v6, "Error initializing parser"

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    :catch_3
    move-exception v1

    new-instance v5, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v6, "Error initializing parser"

    invoke-direct {v5, v6, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_3
    const-string v5, "VMS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_4

    new-instance v2, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_1

    :cond_4
    const-string v5, "WINDOWS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_5

    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v2

    goto :goto_1

    :cond_5
    const-string v5, "OS/2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    new-instance v2, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto :goto_1

    :cond_6
    const-string v5, "OS/400"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_7

    const-string v5, "AS/400"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_8

    :cond_7
    invoke-direct {p0, p2}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v2

    goto :goto_1

    :cond_8
    const-string v5, "MVS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_9

    new-instance v2, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v2}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    goto/16 :goto_1

    :cond_9
    const-string v5, "NETWARE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_a

    new-instance v2, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto/16 :goto_1

    :cond_a
    const-string v5, "MACOS PETER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_b

    new-instance v2, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/MacOsPeterFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto/16 :goto_1

    :cond_b
    const-string v5, "TYPE: L8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_c

    new-instance v2, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v2, p2}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    goto/16 :goto_1

    :cond_c
    new-instance v5, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown parser type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method private createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "WINDOWS"

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/NTFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    goto :goto_0
.end method

.method private createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 4

    if-eqz p1, :cond_0

    const-string v0, "OS/400"

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v0, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;

    const/4 v1, 0x2

    new-array v1, v1, [Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    const/4 v2, 0x0

    new-instance v3, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/OS400FTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v3, p1}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/CompositeFileEntryParser;-><init>([Lorg/apache/commons/net/ftp/FTPFileEntryParser;)V

    goto :goto_0
.end method


# virtual methods
.method public createFileEntryParser(Ljava/lang/String;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;

    const-string v1, "Parser key cannot be null"

    invoke-direct {v0, v1}, Lorg/apache/commons/net/ftp/parser/ParserInitializationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createFileEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/net/ftp/parser/ParserInitializationException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/net/ftp/FTPClientConfig;->getServerSystemKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createFileEntryParser(Ljava/lang/String;Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v1

    return-object v1
.end method

.method public createMVSEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/MVSFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createNTFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createNTFTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createNetwareFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/NetwareFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS2FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/OS2FTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createOS400FTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/DefaultFTPFileEntryParserFactory;->createOS400FTPEntryParser(Lorg/apache/commons/net/ftp/FTPClientConfig;)Lorg/apache/commons/net/ftp/FTPFileEntryParser;

    move-result-object v0

    return-object v0
.end method

.method public createUnixFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/UnixFTPEntryParser;-><init>()V

    return-object v0
.end method

.method public createVMSVersioningFTPEntryParser()Lorg/apache/commons/net/ftp/FTPFileEntryParser;
    .locals 1

    new-instance v0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;

    invoke-direct {v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>()V

    return-object v0
.end method
