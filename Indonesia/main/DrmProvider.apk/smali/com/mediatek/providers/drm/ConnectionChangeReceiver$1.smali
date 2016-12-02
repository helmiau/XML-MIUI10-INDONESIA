.class Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;
.super Ljava/lang/Object;
.source "ConnectionChangeReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/providers/drm/ConnectionChangeReceiver;->launchSimpleThread(Landroid/content/Context;Lcom/mediatek/drm/OmaDrmClient;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/providers/drm/ConnectionChangeReceiver;

.field final synthetic val$client:Lcom/mediatek/drm/OmaDrmClient;

.field final synthetic val$conManager:Landroid/net/ConnectivityManager;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/mediatek/providers/drm/ConnectionChangeReceiver;Landroid/net/ConnectivityManager;ILcom/mediatek/drm/OmaDrmClient;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->this$0:Lcom/mediatek/providers/drm/ConnectionChangeReceiver;

    iput-object p2, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$conManager:Landroid/net/ConnectivityManager;

    iput p3, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$type:I

    iput-object p4, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$client:Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const v10, 0x7fffffff

    .line 177
    const-string v6, "DRM/ConnectionChangeReceiver"

    const-string v7, "SNTP : the thread launched."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v5, 0x0

    .line 179
    .local v5, "startIndex":I
    :goto_0
    # getter for: Lcom/mediatek/providers/drm/ConnectionChangeReceiver;->sHostList:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/providers/drm/ConnectionChangeReceiver;->access$000()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_4

    .line 180
    iget-object v6, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->this$0:Lcom/mediatek/providers/drm/ConnectionChangeReceiver;

    iget-object v7, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$conManager:Landroid/net/ConnectivityManager;

    iget v8, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$type:I

    # invokes: Lcom/mediatek/providers/drm/ConnectionChangeReceiver;->checkRouteToHost(Landroid/net/ConnectivityManager;II)I
    invoke-static {v6, v7, v8, v5}, Lcom/mediatek/providers/drm/ConnectionChangeReceiver;->access$100(Lcom/mediatek/providers/drm/ConnectionChangeReceiver;Landroid/net/ConnectivityManager;II)I

    move-result v2

    .line 181
    .local v2, "result":I
    const/4 v6, -0x1

    if-eq v6, v2, :cond_3

    .line 182
    # getter for: Lcom/mediatek/providers/drm/ConnectionChangeReceiver;->sHostList:[Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/providers/drm/ConnectionChangeReceiver;->access$000()[Ljava/lang/String;

    move-result-object v6

    aget-object v6, v6, v2

    invoke-static {v6}, Lcom/mediatek/providers/drm/Ntp;->sync(Ljava/lang/String;)I

    move-result v1

    .line 183
    .local v1, "oft":I
    if-eq v1, v10, :cond_2

    .line 184
    const-string v6, "DRM/ConnectionChangeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SNTP: synchronization result, utc time offset: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v6, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$client:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v6, v1}, Lcom/mediatek/providers/drm/OmaDrmHelper;->updateClock(Lcom/mediatek/drm/OmaDrmClient;I)I

    move-result v2

    .line 189
    invoke-static {}, Lcom/mediatek/providers/drm/Ntp;->getSentTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    long-to-int v4, v6

    .line 190
    .local v4, "sentSec":I
    iget-object v6, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$client:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v6}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getSecureTimeInSeconds(Lcom/mediatek/drm/OmaDrmClient;)Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "secTime":Ljava/lang/String;
    const-string v6, "invalid"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "invalid-need-synchronization"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 194
    :cond_0
    const-string v6, "DRM/ConnectionChangeReceiver"

    const-string v7, "clock is invalid, continue to sync with server."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    add-int/lit8 v5, v5, 0x1

    .line 196
    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 199
    .local v0, "iSecTime":I
    const-string v6, "DRM/ConnectionChangeReceiver"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "send sync time in seconds is:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    add-int v6, v4, v1

    sub-int/2addr v6, v0

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    const/16 v7, 0x3c

    if-le v6, v7, :cond_4

    .line 201
    const-string v6, "DRM/ConnectionChangeReceiver"

    const-string v7, "time&clock invalid, continue to sync with server."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    iget-object v6, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$client:Lcom/mediatek/drm/OmaDrmClient;

    invoke-static {v6, v10}, Lcom/mediatek/providers/drm/OmaDrmHelper;->updateClock(Lcom/mediatek/drm/OmaDrmClient;I)I

    goto/16 :goto_0

    .line 209
    .end local v0    # "iSecTime":I
    .end local v3    # "secTime":Ljava/lang/String;
    .end local v4    # "sentSec":I
    :cond_2
    add-int/lit8 v5, v2, 0x1

    .line 210
    goto/16 :goto_0

    .line 213
    .end local v1    # "oft":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    .line 214
    goto/16 :goto_0

    .line 221
    .end local v2    # "result":I
    :cond_4
    iget-object v6, p0, Lcom/mediatek/providers/drm/ConnectionChangeReceiver$1;->val$client:Lcom/mediatek/drm/OmaDrmClient;

    invoke-virtual {v6}, Lcom/mediatek/drm/OmaDrmClient;->release()V

    .line 223
    return-void
.end method
