.class Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;
.super Ljava/lang/Object;
.source "MultiFaceBeautyUI.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;
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

    .line 736
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFBItemOnClick(Ljava/lang/String;II)V
    .locals 7

    .line 739
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {v2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v2

    const-string v3, "oldSelected"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 740
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x8

    const/4 v3, 0x1

    const-string v5, "aiv2"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "threedimensional"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "reset"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v0, "nose"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_3
    const-string v0, "hair"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_4
    const-string v0, "face"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_5
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_6
    const-string v0, "eye"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_7
    const-string v0, "cuttingface"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_8
    const-string v0, "whiten"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v0, "soften"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_a
    const-string v0, "makeup"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/16 v6, 0x66

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_3

    .line 770
    :pswitch_0
    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p2, p2, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    invoke-virtual {p2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 771
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    .line 772
    iput v6, p2, Landroid/os/Message;->what:I

    .line 773
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne p3, v3, :cond_1

    .line 775
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object v0, p3, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f0f0139

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1400(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Ljava/lang/String;)V

    .line 776
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p3, p3, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p3, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 778
    :cond_1
    iget-object p3, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p3, p3, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    invoke-virtual {p3, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 780
    :goto_2
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p0, p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 749
    :pswitch_1
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_2

    .line 750
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 751
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1, v4}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Z)V

    .line 753
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 754
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p1, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mUIHandler:Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI$UIHandler;

    invoke-virtual {p1, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 756
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1300(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)V

    .line 757
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p2, p1, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mResources:Landroid/content/res/Resources;

    const p3, 0x7f0f0138

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1400(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Ljava/lang/String;)V

    .line 758
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p2}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p2

    invoke-virtual {p2}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p2

    const-string p3, "level2select"

    invoke-virtual {p1, p3, v5, p2, v4}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 759
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/AbstractMultiFaceBeautyUI;->mDeviceSetting:Lcom/transsion/camera/app/common/setting/ISetting;

    invoke-interface {p0, v5}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_3

    .line 742
    :pswitch_2
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-ne p1, v2, :cond_4

    .line 743
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1000(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;)Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 744
    iget-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p1, v3}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1100(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;Z)V

    .line 746
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI$11;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;

    invoke-static {p0, p2, p3}, Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;->access$1200(Lcom/transsion/camera/ui/setting/multifacebeauty/MultiFaceBeautyUI;II)V

    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4076aef7 -> :sswitch_a
        -0x357661ad -> :sswitch_9
        -0x2f04469b -> :sswitch_8
        -0x10f4dd73 -> :sswitch_7
        0x18a31 -> :sswitch_6
        0x2db0a4 -> :sswitch_5
        0x2fd65d -> :sswitch_4
        0x30bfe2 -> :sswitch_3
        0x33afd3 -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x6c5d03b3 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
