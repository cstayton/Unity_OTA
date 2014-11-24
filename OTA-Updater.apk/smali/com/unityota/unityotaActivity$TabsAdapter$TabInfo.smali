.class final Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;
.super Ljava/lang/Object;
.source "unityotaActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/unityotaActivity$TabsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "TabInfo"
.end annotation


# instance fields
.field private final clss:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$200(Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;

    return-object v0
.end method
