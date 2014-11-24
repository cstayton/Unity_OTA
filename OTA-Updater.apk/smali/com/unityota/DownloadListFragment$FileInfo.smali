.class public Lcom/unityota/DownloadListFragment$FileInfo;
.super Ljava/lang/Object;
.source "DownloadListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/DownloadListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "FileInfo"
.end annotation


# instance fields
.field private file:Ljava/io/File;

.field private name:Ljava/lang/String;

.field final synthetic this$0:Lcom/unityota/DownloadListFragment;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/unityota/DownloadListFragment;Ljava/io/File;)V
    .locals 5

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->this$0:Lcom/unityota/DownloadListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->version:Ljava/lang/String;

    iput-object p2, p0, Lcom/unityota/DownloadListFragment$FileInfo;->file:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    const-string v2, "__"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->version:Ljava/lang/String;

    iget-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    const/16 v2, 0x5f

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/unityota/DownloadListFragment$FileInfo;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/unityota/DownloadListFragment$FileInfo;->file:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/unityota/DownloadListFragment$FileInfo;->version:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unityota/DownloadListFragment$FileInfo;->this$0:Lcom/unityota/DownloadListFragment;

    const v1, 0x7f090049

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/unityota/DownloadListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/unityota/DownloadListFragment$FileInfo;->this$0:Lcom/unityota/DownloadListFragment;

    const v1, 0x7f090048

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/unityota/DownloadListFragment$FileInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/unityota/DownloadListFragment$FileInfo;->version:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/unityota/DownloadListFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
