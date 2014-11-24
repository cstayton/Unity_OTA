.class public abstract Lcom/unityota/utils/BaseStaticTextActivity;
.super Landroid/app/Activity;
.source "BaseStaticTextActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private showErrorAndFinish()V
    .locals 2

    const v0, 0x7f0900ac

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseStaticTextActivity;->finish()V

    return-void
.end method


# virtual methods
.method protected abstract getSourceFileName()Ljava/lang/String;
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/unityota/utils/BaseStaticTextActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    if-eqz v6, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v6, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    const/4 v11, 0x0

    const/4 v8, 0x0

    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    const/16 v2, 0x1000

    :try_start_1
    new-array v7, v2, [C

    new-instance v12, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Lcom/unityota/utils/BaseStaticTextActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/unityota/utils/BaseStaticTextActivity;->getSourceFileName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v12, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    :goto_0
    :try_start_2
    invoke-virtual {v12, v7}, Ljava/io/BufferedReader;->read([C)I

    move-result v13

    if-ltz v13, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v9, v7, v2, v13}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v10

    move-object v8, v9

    move-object v11, v12

    :goto_1
    :try_start_3
    invoke-direct {p0}, Lcom/unityota/utils/BaseStaticTextActivity;->showErrorAndFinish()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v11, :cond_1

    :try_start_4
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_1
    :goto_2
    return-void

    :cond_2
    if-eqz v12, :cond_3

    :try_start_5
    invoke-virtual {v12}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_3
    :goto_3
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/unityota/utils/BaseStaticTextActivity;->showErrorAndFinish()V

    move-object v8, v9

    move-object v11, v12

    goto :goto_2

    :catchall_0
    move-exception v1

    :goto_4
    if-eqz v11, :cond_4

    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    :cond_4
    :goto_5
    throw v1

    :cond_5
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/plain"

    const-string v4, "utf-8"

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/unityota/utils/BaseStaticTextActivity$1;

    invoke-direct {v1, p0}, Lcom/unityota/utils/BaseStaticTextActivity$1;-><init>(Lcom/unityota/utils/BaseStaticTextActivity;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    move-object v8, v9

    move-object v11, v12

    goto :goto_2

    :catch_1
    move-exception v2

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v2

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v8, v9

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v8, v9

    move-object v11, v12

    goto :goto_4

    :catch_4
    move-exception v10

    goto :goto_1

    :catch_5
    move-exception v10

    move-object v8, v9

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :pswitch_0
    invoke-static {p0}, Landroid/support/v4/app/NavUtils;->navigateUpFromSameTask(Landroid/app/Activity;)V

    const/4 v0, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method
