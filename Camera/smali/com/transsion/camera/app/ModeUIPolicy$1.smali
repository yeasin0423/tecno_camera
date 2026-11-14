.class Lcom/transsion/camera/app/ModeUIPolicy$1;
.super Ljava/util/ArrayList;
.source "ModeUIPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ModeUIPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const-string v0, "com.transsion.camera.feature.slimbody.mode.SlimBodyModeEntry"

    .line 89
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.transsion.camera.feature.mode.facebeauty.FaceBeautyModeEntry"

    .line 90
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "com.transsion.camera.feature.mode.facebeauty.MultiFaceBeautyModeEntry"

    .line 91
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
