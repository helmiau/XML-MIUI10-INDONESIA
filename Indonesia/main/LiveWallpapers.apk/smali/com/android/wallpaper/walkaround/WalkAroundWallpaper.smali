.class public Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "WalkAroundWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;
    }
.end annotation


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mOwner:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;


# direct methods
.method static synthetic access$000(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;
    .locals 1
    .param p0, "x0"    # Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mOwner:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->stopCamera()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->startCamera()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method private startCamera()V
    .locals 3

    .prologue
    .line 70
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 71
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    .line 82
    :goto_0
    return-void

    .line 74
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->reconnect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    .line 79
    const-string v1, "WalkAround"

    const-string v2, "Error opening the camera"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private stopCamera()V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 87
    :try_start_0
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 93
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    .line 100
    :cond_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    goto :goto_1

    .line 88
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 54
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 56
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_1

    .line 57
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->previewEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v2, v1, :cond_2

    .line 59
    .local v1, "portrait":Z
    :goto_0
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 60
    .local v0, "params":Landroid/hardware/Camera$Parameters;
    const-string v3, "orientation"

    if-eqz v1, :cond_3

    const-string v2, "portrait"

    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 63
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->previewEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->stopPreview()V

    .line 64
    :cond_0
    iget-object v2, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V

    .line 67
    .end local v0    # "params":Landroid/hardware/Camera$Parameters;
    .end local v1    # "portrait":Z
    :cond_1
    return-void

    .line 58
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 60
    .restart local v0    # "params":Landroid/hardware/Camera$Parameters;
    .restart local v1    # "portrait":Z
    :cond_3
    const-string v2, "landscape"

    goto :goto_1
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 49
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 50
    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .prologue
    .line 38
    new-instance v0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;

    invoke-direct {v0, p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;-><init>(Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;)V

    iput-object v0, p0, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->mOwner:Lcom/android/wallpaper/walkaround/WalkAroundWallpaper$WalkAroundEngine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 43
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 44
    invoke-direct {p0}, Lcom/android/wallpaper/walkaround/WalkAroundWallpaper;->stopCamera()V

    .line 45
    return-void
.end method
