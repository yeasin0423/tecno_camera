.class Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;
.super Ljava/lang/Object;
.source "FeatureLayout.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->showResetDialog(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

.field final synthetic val$oldPostion:I


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)V
    .locals 0

    .line 599
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iput p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 602
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    .line 603
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 604
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p1

    const-string p2, "white"

    const/4 v0, 0x0

    const-string v1, "key_slimbody_custom"

    if-eqz p1, :cond_7

    .line 605
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const-string p2, "2"

    if-nez p1, :cond_3

    .line 606
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 607
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    const-string v2, "{\"bodySlim\":96,\"buttPlump\":-100,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":27,\"waistSlim\":79}"

    invoke-static {p1, v2, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V

    .line 608
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 611
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 614
    :cond_1
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    const-string v2, "{\"bodySlim\":50,\"buttPlump\":50,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-83,\"waistSlim\":42}"

    invoke-static {p1, v2, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V

    .line 615
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 616
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 618
    :cond_2
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 623
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    const-string v2, "{\"bodySlim\":80,\"buttPlump\":0,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":71,\"legSlim\":40,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":50,\"waistSlim\":63}"

    invoke-static {p1, v2, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V

    .line 624
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 625
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 627
    :cond_4
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 630
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    const-string v2, "{\"bodySlim\":50,\"buttPlump\":50,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-83,\"waistSlim\":42}"

    invoke-static {p1, v2, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V

    .line 631
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 632
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 634
    :cond_6
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->getDefaultSkin()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 640
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    const-string v2, "{\"bodySlim\":50,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":0,\"legSlim\":0,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    invoke-static {p1, v2, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V

    .line 641
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 642
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 644
    :cond_8
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 647
    :cond_9
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    iget p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->val$oldPostion:I

    const-string v2, "{\"bodySlim\":50,\"buttPlump\":-31,\"chestPlump\":0,\"waistUpper\":20,\"headShrink\":88,\"legLengthen\":57,\"legSlim\":20,\"bellySlim\":100,\"armSlim\":0,\"presetMode\":5,\"shoulderSlim\":-84,\"waistSlim\":42}"

    invoke-static {p1, v2, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;I)V

    .line 648
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 649
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, v2, p0, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 651
    :cond_a
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, v2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
