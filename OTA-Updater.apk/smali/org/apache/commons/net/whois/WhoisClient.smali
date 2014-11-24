.class public final Lorg/apache/commons/net/whois/WhoisClient;
.super Lorg/apache/commons/net/finger/FingerClient;
.source "WhoisClient.java"


# static fields
.field public static final DEFAULT_HOST:Ljava/lang/String; = "whois.internic.net"

.field public static final DEFAULT_PORT:I = 0x2b


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lorg/apache/commons/net/finger/FingerClient;-><init>()V

    const/16 v0, 0x2b

    invoke-virtual {p0, v0}, Lorg/apache/commons/net/whois/WhoisClient;->setDefaultPort(I)V

    return-void
.end method


# virtual methods
.method public getInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/whois/WhoisClient;->getInputStream(ZLjava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public query(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/net/whois/WhoisClient;->query(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
