.class public interface abstract Lcom/transsion/camera/feature/setting/focus/IFocus$Listener;
.super Ljava/lang/Object;
.source "IFocus.java"


# virtual methods
.method public abstract autoFocus()V
.end method

.method public abstract isFocusCanDo()Z
.end method

.method public abstract overrideFocusMode(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract resetAutoFocusTriggered()V
.end method

.method public abstract restoreContinue()V
.end method

.method public abstract updateFocusArea(Ljava/util/List;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;",
            "Ljava/util/List<",
            "Lcom/transsion/camera/utils/SettingInfo$Area;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateFocusCallback()V
.end method

.method public abstract updateFocusMode(Ljava/lang/String;)Z
.end method
