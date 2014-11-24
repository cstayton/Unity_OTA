.class public Lcom/unityota/KernelTab;
.super Landroid/app/ListFragment;
.source "KernelTab.java"


# static fields
.field protected static final KEY_ICON:Ljava/lang/String; = "icon"

.field protected static final KEY_SUMMARY:Ljava/lang/String; = "summary"

.field protected static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static activeFragment:Lcom/unityota/KernelTab;


# instance fields
.field private AVAIL_UPDATES_IDX:I

.field private final DATA:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private adapter:Landroid/widget/SimpleAdapter;

.field private cfg:Lcom/unityota/utils/Config;

.field private fetching:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unityota/KernelTab;->activeFragment:Lcom/unityota/KernelTab;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/unityota/KernelTab;->AVAIL_UPDATES_IDX:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unityota/KernelTab;->fetching:Z

    return-void
.end method

.method static synthetic access$002(Lcom/unityota/KernelTab;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/unityota/KernelTab;->fetching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/unityota/KernelTab;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unityota/KernelTab;->setUpdateSummary(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/unityota/KernelTab;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unityota/KernelTab;->setUpdateSummary(Ljava/lang/String;)V

    return-void
.end method

.method private checkForKernelUpdates()V
    .locals 4

    iget-boolean v0, p0, Lcom/unityota/KernelTab;->fetching:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/unityota/KernelTab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/unityota/KernelTab$1;

    const-class v2, Lcom/unityota/utils/KernelInfo;

    invoke-virtual {p0}, Lcom/unityota/KernelTab;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/unityota/KernelTab$1;-><init>(Lcom/unityota/KernelTab;Ljava/lang/Class;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/unityota/utils/APIUtils;->fetchKernelInfo(Landroid/content/Context;Lcom/unityota/utils/APIUtils$APICallback;)V

    goto :goto_0
.end method

.method public static notifyActiveFragment()V
    .locals 1

    sget-object v0, Lcom/unityota/KernelTab;->activeFragment:Lcom/unityota/KernelTab;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unityota/KernelTab;->activeFragment:Lcom/unityota/KernelTab;

    invoke-virtual {v0}, Lcom/unityota/KernelTab;->updateStatus()V

    :cond_0
    return-void
.end method

.method private setUpdateSummary(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unityota/KernelTab;->setUpdateSummary(Ljava/lang/String;)V

    return-void
.end method

.method private setUpdateSummary(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/unityota/KernelTab;->AVAIL_UPDATES_IDX:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    iget v1, p0, Lcom/unityota/KernelTab;->AVAIL_UPDATES_IDX:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "summary"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/unityota/KernelTab;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    const/4 v7, 0x3

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/unityota/KernelTab;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    const v3, 0x7f030009

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "title"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "summary"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "icon"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/unityota/KernelTab;->adapter:Landroid/widget/SimpleAdapter;

    iget-object v0, p0, Lcom/unityota/KernelTab;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {p0, v0}, Lcom/unityota/KernelTab;->setListAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :array_0
    .array-data 0x4
        0x14t 0x0t 0x2t 0x1t
        0x15t 0x0t 0x2t 0x1t
        0x6t 0x0t 0x2t 0x1t
    .end array-data
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const v7, 0x7f0900b5

    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/unityota/KernelTab;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/unityota/utils/Config;->getInstance(Landroid/content/Context;)Lcom/unityota/utils/Config;

    move-result-object v4

    iput-object v4, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    const v5, 0x7f090070

    invoke-virtual {p0, v5}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "summary"

    sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "icon"

    const v5, 0x7f020022

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    const v5, 0x7f090071

    invoke-virtual {p0, v5}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "summary"

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "icon"

    const v5, 0x7f020023

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/unityota/utils/PropUtils;->isKernelOtaEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelOtaVersion()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const v4, 0x7f09006d

    invoke-virtual {p0, v4}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelOtaDate()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    const v5, 0x7f09006c

    invoke-virtual {p0, v5}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "summary"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "icon"

    const v5, 0x7f02002a

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    const v5, 0x7f090072

    invoke-virtual {p0, v5}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "summary"

    invoke-static {}, Lcom/unityota/utils/PropUtils;->getKernelOtaID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "icon"

    const v5, 0x7f020024

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    const v5, 0x7f0900b2

    invoke-virtual {p0, v5}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v4}, Lcom/unityota/utils/Config;->hasStoredKernelUpdate()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v4}, Lcom/unityota/utils/Config;->getStoredKernelUpdate()Lcom/unityota/utils/KernelInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unityota/utils/KernelInfo;->isUpdate()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "summary"

    const v5, 0x7f0900b4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/unityota/utils/KernelInfo;->name:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/unityota/utils/KernelInfo;->version:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/unityota/KernelTab;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    const-string v4, "icon"

    const v5, 0x7f020020

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iput v4, p0, Lcom/unityota/KernelTab;->AVAIL_UPDATES_IDX:I

    iget-object v4, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-void

    :cond_2
    const-string v4, "summary"

    invoke-virtual {p0, v7}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v4}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    goto :goto_0

    :cond_3
    const-string v4, "summary"

    invoke-virtual {p0, v7}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v4}, Lcom/unityota/utils/Config;->hasStoredKernelUpdate()Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v4}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    :cond_5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v4, "title"

    const v5, 0x7f090069

    invoke-virtual {p0, v5}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "summary"

    const v5, 0x7f09006a

    invoke-virtual {p0, v5}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "icon"

    const v5, 0x7f020021

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end parameter
    .parameter
    .end parameter
    .parameter
    .end parameter

    const v0, 0x7f030006

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 5

    iget v2, p0, Lcom/unityota/KernelTab;->AVAIL_UPDATES_IDX:I

    if-ne p3, v2, :cond_0

    iget-object v2, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->hasStoredKernelUpdate()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->getStoredKernelUpdate()Lcom/unityota/utils/KernelInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unityota/utils/KernelInfo;->isUpdate()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/unityota/KernelTab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v2, v0, Lcom/unityota/utils/DownloadDialogCallback;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/unityota/utils/DownloadDialogCallback;

    :goto_0
    invoke-virtual {v1, v0, v2}, Lcom/unityota/utils/KernelInfo;->showUpdateDialog(Landroid/content/Context;Lcom/unityota/utils/DownloadDialogCallback;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v2}, Lcom/unityota/utils/Config;->clearStoredKernelUpdate()V

    iget-object v2, p0, Lcom/unityota/KernelTab;->DATA:Ljava/util/ArrayList;

    iget v3, p0, Lcom/unityota/KernelTab;->AVAIL_UPDATES_IDX:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "summary"

    const v4, 0x7f0900b5

    invoke-virtual {p0, v4}, Lcom/unityota/KernelTab;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/unityota/KernelTab;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v2}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    iget-boolean v2, p0, Lcom/unityota/KernelTab;->fetching:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/unityota/KernelTab;->checkForKernelUpdates()V

    goto :goto_1

    :cond_3
    iget-boolean v2, p0, Lcom/unityota/KernelTab;->fetching:Z

    if-nez v2, :cond_0

    invoke-direct {p0}, Lcom/unityota/KernelTab;->checkForKernelUpdates()V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/unityota/KernelTab;->activeFragment:Lcom/unityota/KernelTab;

    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    invoke-virtual {p0}, Lcom/unityota/KernelTab;->updateStatus()V

    sput-object p0, Lcom/unityota/KernelTab;->activeFragment:Lcom/unityota/KernelTab;

    return-void
.end method

.method public updateStatus()V
    .locals 1

    iget-object v0, p0, Lcom/unityota/KernelTab;->cfg:Lcom/unityota/utils/Config;

    invoke-virtual {v0}, Lcom/unityota/utils/Config;->getStoredKernelUpdate()Lcom/unityota/utils/KernelInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/unityota/KernelTab;->updateStatus(Lcom/unityota/utils/KernelInfo;)V

    return-void
.end method

.method public updateStatus(Lcom/unityota/utils/KernelInfo;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget v1, p0, Lcom/unityota/KernelTab;->AVAIL_UPDATES_IDX:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/unityota/KernelTab;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/unityota/utils/KernelInfo;->isUpdate()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f0900b4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p1, Lcom/unityota/utils/KernelInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    iget-object v3, p1, Lcom/unityota/utils/KernelInfo;->version:Ljava/lang/String;

    aput-object v3, v2, v5

    invoke-virtual {p0, v1, v2}, Lcom/unityota/KernelTab;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unityota/KernelTab;->setUpdateSummary(Ljava/lang/String;)V

    instance-of v1, v0, Lcom/unityota/unityotaActivity;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/unityota/unityotaActivity;

    invoke-virtual {v0, v5}, Lcom/unityota/unityotaActivity;->updateKernelTabIcon(Z)V

    goto :goto_0

    :cond_2
    const v1, 0x7f0900b5

    invoke-direct {p0, v1}, Lcom/unityota/KernelTab;->setUpdateSummary(I)V

    instance-of v1, v0, Lcom/unityota/unityotaActivity;

    if-eqz v1, :cond_3

    move-object v1, v0

    check-cast v1, Lcom/unityota/unityotaActivity;

    invoke-virtual {v1, v4}, Lcom/unityota/unityotaActivity;->updateKernelTabIcon(Z)V

    :cond_3
    const v1, 0x7f090068

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
