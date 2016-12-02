.class public abstract Lcom/android/wallpaper/RenderScriptWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "RenderScriptWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wallpaper/RenderScriptWallpaper$1;,
        Lcom/android/wallpaper/RenderScriptWallpaper$RenderScriptEngine;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/android/wallpaper/RenderScriptScene;",
        ">",
        "Landroid/service/wallpaper/WallpaperService;"
    }
.end annotation


# virtual methods
.method protected abstract createScene(II)Lcom/android/wallpaper/RenderScriptScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation
.end method
