.class public Lcom/unityota/utils/APIUtils$APITask;
.super Landroid/os/AsyncTask;
.source "APIUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/utils/APIUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "APITask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final callback:Lcom/unityota/utils/APIUtils$APICallback;

.field private final ctx:Landroid/content/Context;

.field private final data:Lorg/json/JSONObject;

.field private final endpoint:Ljava/lang/String;

.field private respMsg:Ljava/lang/String;

.field private respObj:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;Lcom/unityota/utils/APIUtils$APICallback;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/unityota/utils/APIUtils$APITask;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/unityota/utils/APIUtils$APITask;->endpoint:Ljava/lang/String;

    iput-object p3, p0, Lcom/unityota/utils/APIUtils$APITask;->data:Lorg/json/JSONObject;

    iput-object p4, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/unityota/utils/Utils;->dataAvailable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->ctx:Landroid/content/Context;

    const v2, 0x7f090016

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->respMsg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->endpoint:Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/utils/APIUtils$APITask;->data:Lorg/json/JSONObject;

    invoke-virtual {p0, v1, v2}, Lcom/unityota/utils/APIUtils$APITask;->makeServerCall(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->ctx:Landroid/content/Context;

    const v2, 0x7f0900b0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->respMsg:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "message"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->respMsg:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->respObj:Lorg/json/JSONObject;

    const-string v1, "success"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/unityota/utils/APIUtils$APITask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public makeServerCall(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 13

    const-string v9, "OTA::serverCall"

    invoke-static {v9, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v2}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    if-nez p2, :cond_3

    const-string v5, ""

    :goto_0
    iget-object v9, p0, Lcom/unityota/utils/APIUtils$APITask;->ctx:Landroid/content/Context;

    invoke-static {v9, v5}, Lcom/unityota/utils/UserUtils;->userHmac(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lorg/apache/http/client/methods/HttpPost;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "https://www.otaupdatecenter.pro/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string v9, "Content-Type"

    const-string v10, "application/json"

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "Accept"

    const-string v10, "application/json"

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const-string v9, "X-Authorization-Signature"

    invoke-virtual {v4, v9, v1}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v9, "X-API-Authentication"

    iget-object v10, p0, Lcom/unityota/utils/APIUtils$APITask;->ctx:Landroid/content/Context;

    #calls: Lcom/unityota/utils/APIUtils;->getOAuthToken(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v10}, Lcom/unityota/utils/APIUtils;->access$000(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "X-Device-ID"

    iget-object v10, p0, Lcom/unityota/utils/APIUtils$APITask;->ctx:Landroid/content/Context;

    invoke-static {v10}, Lcom/unityota/utils/Utils;->getDeviceID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v9, Lorg/apache/http/entity/StringEntity;

    const-string v10, "UTF-8"

    invoke-direct {v9, v5, v10}, Lorg/apache/http/entity/StringEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v9}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v2, v4}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v8

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_1

    const-string v9, "OTA::serverCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "non-200 response to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-interface {v6}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v9, "OTA::serverCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "no response to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :cond_2
    :goto_1
    return-object v3

    :cond_3
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    :cond_4
    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "OTA::serverCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "empty response to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v9

    if-nez v9, :cond_6

    const-string v9, "OTA::serverCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "empty response to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    const-string v9, "success"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    const-string v9, "OTA::serverCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "malformed response to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    goto :goto_1

    :cond_7
    const-string v9, "success"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "OTA::serverCall"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "error received from "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "error"

    const-string v12, "unknown"

    invoke-virtual {v3, v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    goto/16 :goto_1
.end method

.method protected onCancelled(Ljava/lang/Boolean;)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    invoke-interface {v0}, Lcom/unityota/utils/APIUtils$APICallback;->onCancel()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/unityota/utils/APIUtils$APITask;->onCancelled(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    iget-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->respMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/utils/APIUtils$APITask;->respObj:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/unityota/utils/APIUtils$APICallback;->onSuccess(Ljava/lang/String;Lorg/json/JSONObject;)V

    :goto_0
    iget-object v0, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/unityota/utils/APIUtils$APICallback;->onComplete(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    iget-object v1, p0, Lcom/unityota/utils/APIUtils$APITask;->respMsg:Ljava/lang/String;

    iget-object v2, p0, Lcom/unityota/utils/APIUtils$APITask;->respObj:Lorg/json/JSONObject;

    invoke-interface {v0, v1, v2}, Lcom/unityota/utils/APIUtils$APICallback;->onError(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/unityota/utils/APIUtils$APITask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unityota/utils/APIUtils$APITask;->callback:Lcom/unityota/utils/APIUtils$APICallback;

    invoke-interface {v0, p0}, Lcom/unityota/utils/APIUtils$APICallback;->onStart(Lcom/unityota/utils/APIUtils$APITask;)V

    :cond_0
    return-void
.end method
