.class Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;
.super Landroid/os/Handler;
.source "AbstractFaceBeautyUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UIHandler"
.end annotation


# instance fields
.field private final mUIReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;-><init>(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 95
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$UIHandler;->mUIReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    if-nez p0, :cond_0

    .line 97
    invoke-static {}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$200()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UIHandler handleMessage faceBeautyUI is null, return. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->w(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_3

    const/16 p1, 0x65

    if-eq v0, p1, :cond_1

    goto :goto_1

    .line 107
    :cond_1
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$400(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 109
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$400(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 110
    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$500(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V

    goto :goto_1

    .line 103
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 104
    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$300(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method
