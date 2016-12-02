.class public Lcom/mediatek/providers/drm/DrmService;
.super Landroid/app/Service;
.source "DrmService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 36
    const-string v0, "DrmService"

    const-string v1, "onBind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 42
    const-string v0, "DrmService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 47
    const-string v0, "DrmService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 11
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v10, 0x0

    .line 52
    const-string v7, "DrmService"

    const-string v8, "onStart"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-virtual {p0}, Lcom/mediatek/providers/drm/DrmService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 55
    .local v4, "res":Landroid/content/res/Resources;
    const-string v7, "saveRights-result"

    const/16 v8, -0x7d0

    invoke-virtual {p1, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 56
    .local v5, "saveRightsResult":I
    if-nez v5, :cond_0

    const v7, 0x805004e

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    .local v6, "text":Ljava/lang/String;
    :goto_0
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Lcom/mediatek/providers/drm/DrmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 62
    .local v1, "nm":Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    const v7, 0x8020048

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v2, v7, v6, v8, v9}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 65
    .local v2, "notification":Landroid/app/Notification;
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 67
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 68
    .local v0, "i":Landroid/content/Intent;
    invoke-static {p0, v10, v0, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 69
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v2, p0, v6, v6, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 71
    invoke-virtual {v1, v10, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/providers/drm/DrmService;->stopSelf()V

    .line 74
    return-void

    .line 56
    .end local v0    # "i":Landroid/content/Intent;
    .end local v1    # "nm":Landroid/app/NotificationManager;
    .end local v2    # "notification":Landroid/app/Notification;
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v6    # "text":Ljava/lang/String;
    :cond_0
    const v7, 0x8050051

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method
