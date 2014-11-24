.class public final Lorg/apache/commons/net/imap/IMAPReply;
.super Ljava/lang/Object;
.source "IMAPReply.java"


# static fields
.field public static final BAD:I = 0x2

.field public static final CONT:I = 0x3

.field private static final IMAP_BAD:Ljava/lang/String; = "BAD"

.field private static final IMAP_CONTINUATION_PREFIX:Ljava/lang/String; = "+"

.field private static final IMAP_NO:Ljava/lang/String; = "NO"

.field private static final IMAP_OK:Ljava/lang/String; = "OK"

.field private static final IMAP_UNTAGGED_PREFIX:Ljava/lang/String; = "* "

.field public static final NO:I = 0x1

.field public static final OK:I = 0x0

.field private static final TAGGED_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final TAGGED_RESPONSE:Ljava/lang/String; = "^\\w+ (\\S+).*"

.field private static final UNTAGGED_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final UNTAGGED_RESPONSE:Ljava/lang/String; = "^\\* (\\S+).*"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\w+ (\\S+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPReply;->TAGGED_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "^\\* (\\S+).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/net/imap/IMAPReply;->UNTAGGED_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getReplyCode(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/net/imap/IMAPReply;->TAGGED_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    return v0
.end method

.method private static getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    invoke-static {p0}, Lorg/apache/commons/net/imap/IMAPReply;->isContinuation(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "OK"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-string v3, "BAD"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_3
    const-string v3, "NO"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    new-instance v2, Lorg/apache/commons/net/MalformedServerReplyException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unexpected IMAP protocol response from server: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/commons/net/MalformedServerReplyException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getUntaggedReplyCode(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/net/imap/IMAPReply;->UNTAGGED_PATTERN:Ljava/util/regex/Pattern;

    invoke-static {p0, v0}, Lorg/apache/commons/net/imap/IMAPReply;->getReplyCode(Ljava/lang/String;Ljava/util/regex/Pattern;)I

    move-result v0

    return v0
.end method

.method public static isContinuation(I)Z
    .locals 1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isContinuation(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isSuccess(I)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isUntagged(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "* "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
