.class Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$2;
.super Ljava/lang/Object;
.source "AbstractFaceBeautyUI.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout$LevelChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$2;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(I)V
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$2;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    invoke-virtual {v0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->hideLevelList()V

    .line 174
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$2;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    invoke-static {v0, p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$700(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;I)V

    .line 175
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$2;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    invoke-virtual {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->updateLevel()V

    return-void
.end method
