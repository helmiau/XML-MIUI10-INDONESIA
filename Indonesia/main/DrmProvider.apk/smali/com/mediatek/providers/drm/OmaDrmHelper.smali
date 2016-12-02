.class public Lcom/mediatek/providers/drm/OmaDrmHelper;
.super Ljava/lang/Object;
.source "OmaDrmHelper.java"


# direct methods
.method public static checkClock(Lcom/mediatek/drm/OmaDrmClient;)Z
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 168
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e6

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 171
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "checkClock"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 174
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 175
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, "message":Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkClock : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v3, "valid"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3
.end method

.method public static getSecureTimeInSeconds(Lcom/mediatek/drm/OmaDrmClient;)Ljava/lang/String;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 232
    new-instance v1, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e6

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v1, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 235
    .local v1, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "loadSecureTime"

    invoke-virtual {v1, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    invoke-virtual {p0, v1}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 239
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "time":Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecureTimeInSeconds : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    return-object v2
.end method

.method private static getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;
    .locals 7
    .param p0, "info"    # Landroid/drm/DrmInfo;

    .prologue
    .line 246
    const-string v2, ""

    .line 247
    .local v2, "message":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 248
    const-string v4, "DRM/OmaDrmHelper"

    const-string v5, "getStringFromDrmInfo info is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 262
    .end local v2    # "message":Ljava/lang/String;
    .local v3, "message":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 251
    .end local v3    # "message":Ljava/lang/String;
    .restart local v2    # "message":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Landroid/drm/DrmInfo;->getData()[B

    move-result-object v0

    .line 252
    .local v0, "data":[B
    if-eqz v0, :cond_1

    .line 255
    :try_start_0
    new-instance v2, Ljava/lang/String;

    .end local v2    # "message":Ljava/lang/String;
    const-string v4, "US-ASCII"

    invoke-direct {v2, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .restart local v2    # "message":Ljava/lang/String;
    :cond_1
    :goto_1
    const-string v4, "DRM/OmaDrmHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStringFromDrmInfo : >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .line 262
    .end local v2    # "message":Ljava/lang/String;
    .restart local v3    # "message":Ljava/lang/String;
    goto :goto_0

    .line 256
    .end local v3    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "DRM/OmaDrmHelper"

    const-string v5, "Unsupported encoding type of the returned DrmInfo data"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const-string v2, ""

    .restart local v2    # "message":Ljava/lang/String;
    goto :goto_1
.end method

.method public static loadClock(Lcom/mediatek/drm/OmaDrmClient;)I
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 126
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 129
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "loadClock"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 133
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 134
    .local v1, "message":Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadClock : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static loadDeviceId(Lcom/mediatek/drm/OmaDrmClient;)Ljava/lang/String;
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 188
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e6

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 191
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "loadDeviceId"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 194
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v1

    .line 195
    .local v1, "info":Landroid/drm/DrmInfo;
    invoke-static {v1}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "id":Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadDeviceId : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    return-object v0
.end method

.method public static saveDeviceId(Lcom/mediatek/drm/OmaDrmClient;Ljava/lang/String;)I
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "deviceId"    # Ljava/lang/String;

    .prologue
    .line 209
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 212
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "saveDeviceId"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 214
    const-string v3, "data"

    invoke-virtual {v2, v3, p1}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 217
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "message":Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "saveDeviceId : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static updateClock(Lcom/mediatek/drm/OmaDrmClient;I)I
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;
    .param p1, "offset"    # I

    .prologue
    .line 62
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 65
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "updateClock"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    const-string v3, "data"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 70
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "message":Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateClock : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static updateOffset(Lcom/mediatek/drm/OmaDrmClient;)I
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 105
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 108
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "updateOffset"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 111
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 112
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "message":Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateOffset : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method

.method public static updateTimeBase(Lcom/mediatek/drm/OmaDrmClient;)I
    .locals 6
    .param p0, "client"    # Lcom/mediatek/drm/OmaDrmClient;

    .prologue
    .line 84
    new-instance v2, Landroid/drm/DrmInfoRequest;

    const/16 v3, 0x7e5

    const-string v4, "application/vnd.oma.drm.content"

    invoke-direct {v2, v3, v4}, Landroid/drm/DrmInfoRequest;-><init>(ILjava/lang/String;)V

    .line 87
    .local v2, "request":Landroid/drm/DrmInfoRequest;
    const-string v3, "action"

    const-string v4, "updateTimeBase"

    invoke-virtual {v2, v3, v4}, Landroid/drm/DrmInfoRequest;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/mediatek/drm/OmaDrmClient;->acquireDrmInfo(Landroid/drm/DrmInfoRequest;)Landroid/drm/DrmInfo;

    move-result-object v0

    .line 91
    .local v0, "info":Landroid/drm/DrmInfo;
    invoke-static {v0}, Lcom/mediatek/providers/drm/OmaDrmHelper;->getStringFromDrmInfo(Landroid/drm/DrmInfo;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "message":Ljava/lang/String;
    const-string v3, "DRM/OmaDrmHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateTimeBase : > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string v3, "success"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    return v3

    :cond_0
    const/16 v3, -0x7d0

    goto :goto_0
.end method
