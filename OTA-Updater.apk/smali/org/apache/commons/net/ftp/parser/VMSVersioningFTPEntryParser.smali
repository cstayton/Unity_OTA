.class public Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;
.super Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;
.source "VMSVersioningFTPEntryParser.java"


# static fields
.field private static final PRE_PARSE_REGEX:Ljava/lang/String; = "(.*);([0-9]+)\\s*.*"


# instance fields
.field private final _preparse_pattern_:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;-><init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/net/ftp/FTPClientConfig;)V
    .locals 3

    invoke-direct {p0}, Lorg/apache/commons/net/ftp/parser/VMSFTPEntryParser;-><init>()V

    invoke-virtual {p0, p1}, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->configure(Lorg/apache/commons/net/ftp/FTPClientConfig;)V

    :try_start_0
    const-string v1, "(.*);([0-9]+)\\s*.*"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;
    :try_end_0
    .catch Ljava/util/regex/PatternSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unparseable regex supplied:  (.*);([0-9]+)\\s*.*"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method protected isVersioning()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public preParse(Ljava/util/List;)Ljava/util/List;
    .locals 13
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

    const/4 v12, 0x2

    const/4 v11, 0x1

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v9, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v12}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_1

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v4}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v7, 0x0

    iget-object v9, p0, Lorg/apache/commons/net/ftp/parser/VMSVersioningFTPEntryParser;->_preparse_pattern_:Ljava/util/regex/Pattern;

    invoke-virtual {v9, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v7

    invoke-interface {v7, v11}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v7, v12}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ge v9, v10, :cond_2

    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V

    goto :goto_1

    :cond_3
    return-object p1
.end method
