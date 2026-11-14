.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$8;
.super Ljava/lang/Object;
.source "MultiFaceBeautyUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V
    .locals 0

    .line 465
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-wide/16 v0, 0xfa

    .line 468
    invoke-static {v0, v1}, Lcom/transsion/camera/utils/CameraUtil;->isFastDoubleClick(J)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 469
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$800(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "fast click, return !"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 472
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$800(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mMultiFaceBeautyIcon onClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 473
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$8;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$900(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    return-void
.end method
