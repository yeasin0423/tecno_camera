.class public interface abstract Lcom/transsion/camera/app/ui/IModePanelUI;
.super Ljava/lang/Object;
.source "IModePanelUI.java"

# interfaces
.implements Lcom/transsion/camera/app/common/IRootUI;


# virtual methods
.method public abstract hide()V
.end method

.method public abstract inflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.end method

.method public abstract refreshModePanelView()V
.end method

.method public abstract setAppUIRect(Lcom/transsion/camera/app/common/IAppUIControl$IAppUIRect;)V
.end method

.method public abstract setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V
.end method

.method public abstract setModeChangedListener(Lcom/transsion/camera/app/common/IAppUIListener$IModeChangedListener;)V
.end method

.method public abstract setModeList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/app/common/FeatureResource;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setModePanelGuideEnable(Z)V
.end method

.method public abstract setupViews()V
.end method

.method public abstract shrinkModePanel()V
.end method

.method public abstract spreadModePanel()V
.end method

.method public abstract updateCurrentMode(Ljava/lang/String;)V
.end method

.method public abstract updateItemClickable(Z)V
.end method
