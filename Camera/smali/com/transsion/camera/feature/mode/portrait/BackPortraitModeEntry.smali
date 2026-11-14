.class public Lcom/transsion/camera/feature/mode/portrait/BackPortraitModeEntry;
.super Lcom/transsion/camera/feature/mode/portrait/PortraitModeEntry;
.source "BackPortraitModeEntry.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/feature/mode/portrait/PortraitModeEntry;-><init>(Landroid/content/Context;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public createFeatureResource()Lcom/transsion/camera/app/common/FeatureResource;
    .locals 2

    .line 25
    new-instance v0, Lcom/transsion/camera/app/common/FeatureResource;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/FeatureResource;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/transsion/camera/feature/mode/portrait/BackPortraitModeEntry;->getFeatureName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureName:Ljava/lang/String;

    .line 27
    iget-object p0, p0, Lcom/transsion/camera/app/common/provider/FeatureEntryBase;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0062

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mFeatureTitle:Ljava/lang/String;

    const p0, 0x7f080440

    .line 28
    iput p0, v0, Lcom/transsion/camera/app/common/FeatureResource;->mUnSelectedIconId:I

    return-object v0
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    .line 20
    const-class p0, Lcom/transsion/camera/feature/mode/portrait/BackPortraitModeEntry;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
