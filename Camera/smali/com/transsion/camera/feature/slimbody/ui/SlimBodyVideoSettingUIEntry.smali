.class public Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUIEntry;
.super Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;
.source "SlimBodyVideoSettingUIEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;-><init>(Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createCommonUI()Lcom/transsion/camera/app/common/ui/setting/ICommonSettingUI;
    .locals 1

    .line 16
    new-instance v0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;

    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/SettingUIEntryBase;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyVideoSettingUI;-><init>(Landroid/content/res/Resources;)V

    return-object v0
.end method
