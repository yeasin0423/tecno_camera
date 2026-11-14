.class public Lcom/transsion/camera/ui/setting/macro/FacebeautyMacroSettingUISpec;
.super Lcom/transsion/camera/ui/setting/macro/MacroSettingUISpec;
.source "FacebeautyMacroSettingUISpec.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/res/Resources;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/ui/setting/macro/MacroSettingUISpec;-><init>(Ljava/lang/String;Landroid/content/res/Resources;)V

    return-void
.end method


# virtual methods
.method public needShowEntryView()Z
    .locals 1

    .line 15
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    if-le p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
