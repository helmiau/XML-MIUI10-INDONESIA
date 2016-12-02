.class Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wallpaper/RenderScriptWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderScriptEngine"
.end annotation


# instance fields
.field private mRenderer:Lcom/android/wallpaper/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mRs:Landroid/renderscript/RenderScriptGL;

.field final synthetic this$0:Lcom/android/wallpaper/RenderScriptWallpaper;


# direct methods
.method private destroyRenderer()V
    .locals 3

    .prologue
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 51
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->stop()V

    .line 53
    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v1, v2, v2}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 57
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->destroy()V

    .line 58
    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 60
    :cond_1
    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 7
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "z"    # I
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "resultRequested"    # Z

    .prologue
    .line 113
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/wallpaper/RenderScriptScene;->onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v0

    .line 116
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "surfaceHolder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 39
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->setTouchEventsEnabled(Z)V

    .line 41
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 42
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 46
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 47
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 48
    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 1
    .param p1, "xOffset"    # F
    .param p2, "yOffset"    # F
    .param p3, "xStep"    # F
    .param p4, "yStep"    # F
    .param p5, "xPixels"    # I
    .param p6, "yPixels"    # I

    .prologue
    .line 92
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0, p1, p2, p5, p6}, Lcom/android/wallpaper/RenderScriptScene;->setOffset(FFII)V

    .line 93
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 4
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 76
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 77
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, p1, p3, p4}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-nez v0, :cond_1

    .line 81
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v0, p3, p4}, Lcom/android/wallpaper/RenderScriptWallpaper;->createScene(II)Lcom/android/wallpaper/RenderScriptScene;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    .line 82
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-virtual {v2}, Lcom/android/wallpaper/RenderScriptWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->isPreview()Z

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/wallpaper/RenderScriptScene;->init(Landroid/renderscript/RenderScriptGL;Landroid/content/res/Resources;Z)V

    .line 83
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    .line 87
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0, p3, p4}, Lcom/android/wallpaper/RenderScriptScene;->resize(II)V

    goto :goto_0
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 97
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 99
    new-instance v0, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v0}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 100
    .local v0, "sc":Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    new-instance v1, Landroid/renderscript/RenderScriptGL;

    iget-object v2, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->this$0:Lcom/android/wallpaper/RenderScriptWallpaper;

    invoke-direct {v1, v2, v0}, Landroid/renderscript/RenderScriptGL;-><init>(Landroid/content/Context;Landroid/renderscript/RenderScriptGL$SurfaceConfig;)V

    iput-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    .line 101
    iget-object v1, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRs:Landroid/renderscript/RenderScriptGL;

    sget-object v2, Landroid/renderscript/RenderScript$Priority;->LOW:Landroid/renderscript/RenderScript$Priority;

    invoke-virtual {v1, v2}, Landroid/renderscript/RenderScriptGL;->setPriority(Landroid/renderscript/RenderScript$Priority;)V

    .line 102
    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 106
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 107
    invoke-direct {p0}, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->destroyRenderer()V

    .line 108
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 64
    .local p0, "this":Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;, "Lcom/android/wallpaper/RenderScriptWallpaper<TT;>.RenderScriptEngine;"
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    if-eqz v0, :cond_0

    .line 66
    if-eqz p1, :cond_1

    .line 67
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->start()V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;->mRenderer:Lcom/android/wallpaper/RenderScriptScene;

    invoke-virtual {v0}, Lcom/android/wallpaper/RenderScriptScene;->stop()V

    goto :goto_0
.end method
