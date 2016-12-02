.class public Lcom/mediatek/providers/drm/DrmPushReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DrmPushReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 41
    .local v0, "contextRef":Landroid/content/Context;
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 43
    invoke-virtual {p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "rightMimeType":Ljava/lang/String;
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/mediatek/drm/OmaDrmUtils;->isDrmRightsFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 46
    const-string v3, "data"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    move-object v1, v3

    check-cast v1, [B

    .line 47
    .local v1, "rightData":[B
    if-nez v1, :cond_0

    .line 48
    const-string v3, "DRM/DrmPushReceiver"

    const-string v4, "onReceive : The rights data is invalid."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v1    # "rightData":[B
    .end local v2    # "rightMimeType":Ljava/lang/String;
    :goto_0
    return-void

    .line 52
    .restart local v1    # "rightData":[B
    .restart local v2    # "rightMimeType":Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/mediatek/drm/OmaDrmClient;->isOmaDrmEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 53
    const-string v3, "DRM/DrmPushReceiver"

    const-string v4, "MTK DRM feature is disabled"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_1
    const-string v3, "DRM/DrmPushReceiver"

    const-string v4, "Install drm rights successfully."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 55
    :cond_1
    new-instance v3, Lcom/mediatek/providers/drm/DrmPushReceiver$1;

    invoke-direct {v3, p0, v1, v0, v2}, Lcom/mediatek/providers/drm/DrmPushReceiver$1;-><init>(Lcom/mediatek/providers/drm/DrmPushReceiver;[BLandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->start()V

    goto :goto_1

    .line 113
    .end local v1    # "rightData":[B
    :cond_2
    const-string v3, "DRM/DrmPushReceiver"

    const-string v4, "This is not drm rights push mimetype."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    .end local v2    # "rightMimeType":Ljava/lang/String;
    :cond_3
    const-string v3, "DRM/DrmPushReceiver"

    const-string v4, "This is not wap push received action."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
