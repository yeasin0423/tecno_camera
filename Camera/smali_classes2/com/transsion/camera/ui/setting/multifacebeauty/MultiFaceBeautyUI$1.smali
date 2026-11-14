.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;
.super Ljava/lang/Object;
.source "MultiFaceBeautyUI.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->showDialog(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

.field final synthetic val$oldSelectedPostion:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;I)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iput p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->val$oldSelectedPostion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 266
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 268
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string v0, "level2select"

    const-string v1, "reset"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    const-string p2, "custom"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    .line 272
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->val$oldSelectedPostion:I

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$200(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;I)Ljava/lang/String;

    move-result-object p1

    .line 273
    iget p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->val$oldSelectedPostion:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 274
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
