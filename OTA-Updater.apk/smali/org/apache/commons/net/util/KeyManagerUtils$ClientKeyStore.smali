.class Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;
.super Ljava/lang/Object;
.source "KeyManagerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/net/util/KeyManagerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ClientKeyStore"
.end annotation


# instance fields
.field private final certChain:[Ljava/security/cert/X509Certificate;

.field private final key:Ljava/security/PrivateKey;

.field private final keyAlias:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/security/KeyStore;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    iget-object v3, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v3

    check-cast v3, Ljava/security/PrivateKey;

    iput-object v3, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->key:Ljava/security/PrivateKey;

    iget-object v3, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v1

    array-length v3, v1

    new-array v0, v3, [Ljava/security/cert/X509Certificate;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    aget-object v3, v1, v2

    check-cast v3, Ljava/security/cert/X509Certificate;

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->certChain:[Ljava/security/cert/X509Certificate;

    return-void
.end method


# virtual methods
.method final getAlias()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->keyAlias:Ljava/lang/String;

    return-object v0
.end method

.method final getCertificateChain()[Ljava/security/cert/X509Certificate;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->certChain:[Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method final getPrivateKey()Ljava/security/PrivateKey;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/net/util/KeyManagerUtils$ClientKeyStore;->key:Ljava/security/PrivateKey;

    return-object v0
.end method
