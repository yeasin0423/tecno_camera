.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$6;
.super Ljava/lang/Object;
.source "MultiFaceBeautyVideoUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->createEntryView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Lcom/transsion/camera/app/common/interactive/CommonInteractive;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)V
    .locals 0

    .line 378
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$6;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 381
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$6;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$400(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p1

    const-string v0, "mMultiFaceBeautyIcon onClick"

    invoke-static {p1, v0}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 382
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI$6;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;->access$1000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyVideoUI;)V

    return-void
.end method
