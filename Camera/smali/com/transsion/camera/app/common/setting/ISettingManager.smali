.class public interface abstract Lcom/transsion/camera/app/common/setting/ISettingManager;
.super Ljava/lang/Object;
.source "ISettingManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;,
        Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;,
        Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;,
        Lcom/transsion/camera/app/common/setting/ISettingManager$DispatchListener;,
        Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
    }
.end annotation


# virtual methods
.method public abstract createAllSettings()V
.end method

.method public abstract getSettingController()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingController;
.end method

.method public abstract getSettingDeviceConfigurator()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceConfigurator;
.end method

.method public abstract getSettingProvide()Lcom/transsion/camera/app/common/setting/ISettingManager$SettingProvide;
.end method

.method public abstract updateMode(Ljava/lang/String;Lcom/transsion/camera/app/common/mode/ICameraMode;)V
.end method

.method public abstract updateModeDeviceRequester(Lcom/transsion/camera/app/common/setting/ISettingManager$SettingDeviceRequester;)V
.end method
