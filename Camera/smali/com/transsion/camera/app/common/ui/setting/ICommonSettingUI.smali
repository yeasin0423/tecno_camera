.class public interface abstract Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
.super Ljava/lang/Object;
.source "ICommonSettingUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;
.implements Lcom/transsion/camera/app/common/ui/setting/ISettingUI;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IPreviewGestureListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IOrientationListener;
.implements Lcom/transsion/camera/app/common/IAppUIListener$IShutterResponseListener;


# virtual methods
.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
.end method

.method public abstract createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewStub;)Landroid/view/View;
.end method

.method public abstract getEntryRootView()Landroid/view/ViewGroup;
.end method

.method public abstract getEntryView()Landroid/view/View;
.end method

.method public abstract hideEntryView()V
.end method

.method public abstract onBackPressed()Z
.end method

.method public abstract overrideClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract restoreInteractiveView()V
.end method

.method public abstract setApertureUIControl(Lcom/transsion/camera/app/common/IAppUIControl$IApertureUIControl;)V
.end method

.method public abstract setBatteryStatus(II)V
.end method

.method public abstract setFilterControl(Lcom/transsion/camera/app/common/IAppUIControl$IFilterControl;)V
.end method

.method public abstract setPhysicalKeyControl(Lcom/transsion/camera/app/common/IAppUIControl$IPhysicalKeyControl;)V
.end method

.method public abstract setSettingStatusListener(Lcom/transsion/camera/app/common/IApp$ModeAndSettingStatusListener;)V
.end method

.method public abstract setTopOffset(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setWideCameraControl(Lcom/transsion/camera/app/common/IAppUIControl$IWideCameraControl;)V
.end method

.method public abstract setupEntryView()V
.end method

.method public abstract updateCameraState(I)V
.end method

.method public abstract updatePreviewRect(Landroid/graphics/Rect;)V
.end method
