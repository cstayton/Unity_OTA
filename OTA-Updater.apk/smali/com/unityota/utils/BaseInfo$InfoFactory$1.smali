.class Lcom/unityota/utils/BaseInfo$InfoFactory$1;
.super Ljava/lang/Object;
.source "BaseInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unityota/utils/BaseInfo$InfoFactory;->getParcelableCreator()Landroid/os/Parcelable$Creator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unityota/utils/BaseInfo$InfoFactory;


# direct methods
.method constructor <init>(Lcom/unityota/utils/BaseInfo$InfoFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/unityota/utils/BaseInfo$InfoFactory$1;->this$0:Lcom/unityota/utils/BaseInfo$InfoFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/unityota/utils/BaseInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")TT;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/unityota/utils/BaseInfo$InfoFactory$1;->this$0:Lcom/unityota/utils/BaseInfo$InfoFactory;

    #getter for: Lcom/unityota/utils/BaseInfo$InfoFactory;->CLASS:Ljava/lang/Class;
    invoke-static {v2}, Lcom/unityota/utils/BaseInfo$InfoFactory;->access$000(Lcom/unityota/utils/BaseInfo$InfoFactory;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unityota/utils/BaseInfo;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/unityota/utils/BaseInfo;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/unityota/utils/BaseInfo;->version:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/unityota/utils/BaseInfo;->changelog:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/unityota/utils/BaseInfo;->url:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/unityota/utils/BaseInfo;->md5:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    iput-object v2, v1, Lcom/unityota/utils/BaseInfo;->date:Ljava/util/Date;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unityota/utils/BaseInfo$InfoFactory$1;->createFromParcel(Landroid/os/Parcel;)Lcom/unityota/utils/BaseInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/unityota/utils/BaseInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    new-array v0, p1, [Lcom/unityota/utils/BaseInfo;

    check-cast v0, [Lcom/unityota/utils/BaseInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unityota/utils/BaseInfo$InfoFactory$1;->newArray(I)[Lcom/unityota/utils/BaseInfo;

    move-result-object v0

    return-object v0
.end method
