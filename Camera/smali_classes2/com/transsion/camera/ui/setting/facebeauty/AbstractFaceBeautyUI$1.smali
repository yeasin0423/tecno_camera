.class Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;
.super Ljava/lang/Object;
.source "AbstractFaceBeautyUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->doCreateEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
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

    .line 137
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 140
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$400(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)Lcom/transsion/camera/ui/setting/facebeauty/FaceBeautyLevelLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 142
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$500(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V

    goto :goto_1

    .line 144
    :cond_1
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;->access$600(Lcom/transsion/camera/ui/setting/facebeauty/AbstractFaceBeautyUI;)V

    :goto_1
    return-void
.end method
