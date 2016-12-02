.class Lcom/mediatek/providers/drm/DrmPushReceiver$1;
.super Ljava/lang/Thread;
.source "DrmPushReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/providers/drm/DrmPushReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/providers/drm/DrmPushReceiver;

.field final synthetic val$contextRef:Landroid/content/Context;

.field final synthetic val$rightData:[B

.field final synthetic val$rightMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mediatek/providers/drm/DrmPushReceiver;[BLandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->this$0:Lcom/mediatek/providers/drm/DrmPushReceiver;

    iput-object p2, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->val$rightData:[B

    iput-object p3, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->val$contextRef:Landroid/content/Context;

    iput-object p4, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->val$rightMimeType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 57
    const-string v8, "DRM/DrmPushReceiver"

    const-string v9, "onReceive : received drm rights object via WAP PUSH."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    const/4 v7, 0x0

    .line 60
    .local v7, "tmpFile":Ljava/io/File;
    const/4 v3, 0x0

    .line 62
    .local v3, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    const-string v8, "rights"

    const-string v9, "tmp"

    invoke-static {v8, v9}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    .line 63
    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .local v4, "fos":Ljava/io/FileOutputStream;
    :try_start_1
    iget-object v8, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->val$rightData:[B

    invoke-virtual {v4, v8}, Ljava/io/FileOutputStream;->write([B)V

    .line 65
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 73
    if-eqz v4, :cond_0

    .line 75
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 83
    :cond_0
    :goto_0
    :try_start_3
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    iget-object v8, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->val$contextRef:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 84
    .local v0, "client":Lcom/mediatek/drm/OmaDrmClient;
    new-instance v1, Landroid/drm/DrmRights;

    iget-object v8, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->val$rightMimeType:Ljava/lang/String;

    invoke-direct {v1, v7, v8}, Landroid/drm/DrmRights;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 86
    .local v1, "drmRights":Landroid/drm/DrmRights;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    .line 88
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v0, v1, v8, v9}, Lcom/mediatek/drm/OmaDrmClient;->saveRights(Landroid/drm/DrmRights;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 89
    .local v6, "result":I
    const-string v8, "DRM/DrmPushReceiver"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onReceive : result of saving drm rights object: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v8, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->val$contextRef:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v1, v9}, Lcom/mediatek/drm/OmaDrmClient;->rescanDrmMediaFiles(Landroid/content/Context;Landroid/drm/DrmRights;Lcom/mediatek/drm/OmaDrmUtils$OnDrmScanCompletedListener;)I

    move-result v6

    .line 93
    invoke-virtual {v0}, Lcom/mediatek/drm/OmaDrmClient;->release()V

    .line 94
    const/4 v0, 0x0

    .line 96
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 97
    .local v5, "intent":Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.providers.drm"

    const-string v10, "com.android.providers.drm.DrmService"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    const-string v8, "saveRights-result"

    invoke-virtual {v5, v8, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 101
    iget-object v8, p0, Lcom/mediatek/providers/drm/DrmPushReceiver$1;->val$contextRef:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-object v3, v4

    .line 106
    .end local v0    # "client":Lcom/mediatek/drm/OmaDrmClient;
    .end local v1    # "drmRights":Landroid/drm/DrmRights;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .end local v5    # "intent":Landroid/content/Intent;
    .end local v6    # "result":I
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    :goto_1
    return-void

    .line 76
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "DRM/DrmPushReceiver"

    const-string v9, "onReceive: IO error occurs when close file strem."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 66
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v2

    .line 67
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_4
    const-string v8, "DRM/DrmPushReceiver"

    const-string v9, "onReceive: tmp rights object file not found for output."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 73
    if-eqz v3, :cond_1

    .line 75
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_1

    .line 76
    :catch_2
    move-exception v2

    .line 77
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "DRM/DrmPushReceiver"

    const-string v9, "onReceive: IO error occurs when close file strem."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 69
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 70
    .restart local v2    # "e":Ljava/io/IOException;
    :goto_3
    :try_start_6
    const-string v8, "DRM/DrmPushReceiver"

    const-string v9, "onReceive: IO error occurs when accessing tmp rights object file."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 73
    if-eqz v3, :cond_1

    .line 75
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_1

    .line 76
    :catch_4
    move-exception v2

    .line 77
    const-string v8, "DRM/DrmPushReceiver"

    const-string v9, "onReceive: IO error occurs when close file strem."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 73
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v8

    :goto_4
    if-eqz v3, :cond_2

    .line 75
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 78
    :cond_2
    :goto_5
    throw v8

    .line 76
    :catch_5
    move-exception v2

    .line 77
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v9, "DRM/DrmPushReceiver"

    const-string v10, "onReceive: IO error occurs when close file strem."

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 102
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_6
    move-exception v2

    .line 103
    .restart local v2    # "e":Ljava/io/IOException;
    const-string v8, "DRM/DrmPushReceiver"

    const-string v9, "onReceive: IO error occurs when saving rights objects."

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v4

    .line 104
    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .line 73
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v8

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 69
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_7
    move-exception v2

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_3

    .line 66
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v4    # "fos":Ljava/io/FileOutputStream;
    :catch_8
    move-exception v2

    move-object v3, v4

    .end local v4    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    goto :goto_2
.end method
