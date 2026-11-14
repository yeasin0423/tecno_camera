.class public Lcom/transsion/camera/ui/setting/zoom/FirstZoomSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "FirstZoomSettingUIEntry.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "key_camera_zoom"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createWideCameraItemUI()Lcom/transsion/camera/app/common/ui/setting/IWideCameraItemUI;
    .locals 3

    .line 20
    new-instance v0, Lcom/transsion/camera/ui/setting/zoom/FirstZoomItemUI;

    new-instance v1, Lcom/transsion/camera/ui/setting/zoom/FirstZoomItemUISpec;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    const-string v2, "key_camera_zoom"

    invoke-direct {v1, v2, p0}, Lcom/transsion/camera/ui/setting/zoom/FirstZoomItemUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    invoke-direct {v0, v1}, Lcom/transsion/camera/ui/setting/zoom/FirstZoomItemUI;-><init>(Lcom/transsion/camera/app/common/ui/setting/SettingUISpec;)V

    return-object v0
.end method
