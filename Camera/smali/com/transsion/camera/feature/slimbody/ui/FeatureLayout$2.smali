.class Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;
.super Ljava/lang/Object;
.source "FeatureLayout.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/listener/RvListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    .line 178
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    iput p2, p1, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    .line 182
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p0, p3}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->resetProgressBarAndSetValue(I)V

    return-void
.end method

.method public onItemSelected(Landroid/view/View;Ljava/lang/Object;II)V
    .locals 6

    .line 105
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object p1

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    .line 106
    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v0

    const-string v1, "key_slimbody_latested_featureid"

    const-string v2, "0"

    .line 105
    invoke-virtual {p1, v1, v2, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->getValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x0

    const/4 v2, 0x1

    if-eq p3, v2, :cond_0

    .line 108
    iget-object v3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v3}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    .line 109
    invoke-static {v5}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/storage/DataStore;

    move-result-object v5

    invoke-virtual {v5}, Lcom/transsion/camera/app/common/storage/DataStore;->getGlobalScope()Ljava/lang/String;

    move-result-object v5

    .line 108
    invoke-virtual {v3, v1, v4, v5, v0}, Lcom/transsion/camera/app/common/storage/DataStore;->setValue(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-nez p4, :cond_1

    .line 112
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v1, v2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$102(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Z)Z

    :cond_1
    if-eq p3, v2, :cond_2

    .line 115
    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v1, v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$102(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Z)Z

    .line 117
    :cond_2
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v0, p3}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$202(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)I

    .line 118
    instance-of v0, p2, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 119
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    check-cast p2, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    invoke-static {v0, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$402(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    .line 120
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$300(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBItemData;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object v1

    iget v1, v1, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    iput v1, v0, Lcom/transsion/camera/feature/slimbody/data/SBItemData;->featureId:I

    .line 121
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-eqz v0, :cond_9

    .line 122
    iget-object v0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {v0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object v0

    iget v0, v0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    const/4 v5, 0x2

    if-ge v0, v4, :cond_6

    .line 123
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p3}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p3

    iget p3, p3, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    if-eqz p3, :cond_5

    if-eq p3, v2, :cond_4

    if-eq p3, v5, :cond_3

    goto/16 :goto_2

    .line 125
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    .line 127
    iget-object p1, p2, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->value:Ljava/lang/String;

    .line 128
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 129
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    move-result-object p1

    invoke-interface {p1, v3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    .line 130
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p3, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_autoAi:I

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$700(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;)V

    .line 131
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$800(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$900(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    goto :goto_2

    .line 141
    :cond_4
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2, p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$202(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)I

    .line 142
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1, p4}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1100(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;I)V

    goto :goto_2

    .line 134
    :cond_5
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$600(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    const-string p2, "{\"bodySlim\":100,\"buttPlump\":100,\"chestPlump\":100,\"waistUpper\":100,\"headShrink\":100,\"legLengthen\":100,\"legSlim\":100,\"bellySlim\":100,\"armSlim\":100,\"presetMode\":0,\"shoulderSlim\":100,\"waistSlim\":100}"

    invoke-interface {p1, p2}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$500(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    move-result-object p1

    invoke-interface {p1, v1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    .line 136
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$800(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$900(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 137
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V

    goto :goto_2

    :cond_6
    if-eqz p1, :cond_8

    if-ne p1, v5, :cond_7

    goto :goto_0

    .line 149
    :cond_7
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1000(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)V

    goto :goto_1

    .line 147
    :cond_8
    :goto_0
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget p4, Lcom/transsion/camera/feature/slimbody/R$string;->slimbody_preset_custom:I

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$700(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Ljava/lang/String;)V

    .line 151
    :goto_1
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$800(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1200(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Landroid/content/Context;

    move-result-object p2

    iget-object p4, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p4}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p4

    iget p4, p4, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->titleId:I

    invoke-virtual {p2, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 152
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$800(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$1300(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    .line 153
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-virtual {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->resetProgressBarAndSetValue(I)V

    .line 158
    :cond_9
    :goto_2
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    if-ne v4, p1, :cond_a

    .line 159
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setBodySlimDone()V

    goto/16 :goto_3

    .line 160
    :cond_a
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    if-ne v3, p1, :cond_b

    .line 161
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setHeadShrinkDone()V

    goto :goto_3

    .line 162
    :cond_b
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p1

    iget p1, p1, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    if-ne v1, p1, :cond_c

    .line 163
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setShoulderSlimDone()V

    goto :goto_3

    :cond_c
    const/4 p1, 0x6

    .line 164
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    if-ne p1, p2, :cond_d

    .line 165
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setWaistSlimDone()V

    goto :goto_3

    :cond_d
    const/4 p1, 0x7

    .line 166
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    if-ne p1, p2, :cond_e

    .line 167
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setButtPlumpDone()V

    goto :goto_3

    :cond_e
    const/16 p1, 0x8

    .line 168
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p2

    iget p2, p2, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    if-ne p1, p2, :cond_f

    .line 169
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLegSlimDone()V

    goto :goto_3

    :cond_f
    const/16 p1, 0x9

    .line 170
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;->access$400(Lcom/transsion/camera/feature/slimbody/ui/FeatureLayout;)Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;

    move-result-object p0

    iget p0, p0, Lcom/transsion/camera/feature/slimbody/data/SBFeatureInfo;->featureId:I

    if-ne p1, p0, :cond_10

    .line 171
    invoke-static {}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->getInstance()Lcom/transsion/camera/utils/analytics/AnalyticsUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/transsion/camera/utils/analytics/AnalyticsUtils;->setLegLengthenDone()V

    :cond_10
    :goto_3
    return-void
.end method
