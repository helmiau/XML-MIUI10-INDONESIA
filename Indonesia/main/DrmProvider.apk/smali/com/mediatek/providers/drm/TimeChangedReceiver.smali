.class public Lcom/mediatek/providers/drm/TimeChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimeChangedReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/providers/drm/TimeChangedReceiver$1;,
        Lcom/mediatek/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    const-string v0, "DRM/TimeChangedReceiver"

    const-string v1, "onReceive : TIME_SET received."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-static {}, Lcom/mediatek/drm/OmaDrmClient;->isOmaDrmEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/mediatek/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;-><init>(Lcom/mediatek/providers/drm/TimeChangedReceiver;Lcom/mediatek/providers/drm/TimeChangedReceiver$1;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/mediatek/providers/drm/TimeChangedReceiver$UpdateTimeOffsetTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 37
    :cond_0
    return-void
.end method
