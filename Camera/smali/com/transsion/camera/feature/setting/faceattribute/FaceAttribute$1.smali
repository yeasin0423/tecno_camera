.class Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;
.super Ljava/lang/Object;
.source "FaceAttribute.java"

# interfaces
.implements Lcom/transsion/camera/adapter/CameraProxy$GenderAttributeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGenderAttributeCallback([Lcom/transsion/camera/utils/SettingInfo$CameraFace;Ljava/lang/String;)V
    .locals 3

    .line 37
    iget-object v0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/setting/SettingBase;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 38
    sget-object v0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->TAG:Lcom/transsion/camera/utils/debug/Log$Tag;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[onGenderAttributeCallback] value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 39
    array-length p1, p1

    if-nez p1, :cond_0

    const-string p2, "2"

    .line 42
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute$1;->this$0:Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;

    invoke-virtual {p0, p2}, Lcom/transsion/camera/feature/setting/faceattribute/FaceAttribute;->onValueChanged(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
