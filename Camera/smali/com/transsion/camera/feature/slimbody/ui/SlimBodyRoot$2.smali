.class Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;
.super Ljava/lang/Object;
.source "SlimBodyRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/listener/RvListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClickSelectedItem(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 115
    instance-of p1, p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    if-eqz p1, :cond_0

    .line 116
    check-cast p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    .line 117
    iget p1, p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->presetMode:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_0

    .line 118
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-virtual {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->featureRvScrollIn()V

    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/view/View;Ljava/lang/Object;II)V
    .locals 1

    .line 86
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    instance-of p1, p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    if-eqz p1, :cond_4

    .line 87
    check-cast p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;

    .line 88
    iget-object p1, p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->value:Ljava/lang/String;

    .line 89
    iget p3, p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->presetMode:I

    const/4 p4, 0x5

    if-ne p3, p4, :cond_1

    .line 90
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)I

    move-result p3

    if-nez p3, :cond_0

    .line 91
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    const-string p3, "key_slimbody_custom"

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 92
    :cond_0
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$100(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)I

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    .line 93
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p1

    const-string p3, "key_video_slimbody_custom"

    invoke-interface {p1, p3}, Lcom/transsion/camera/app/common/setting/ISetting;->queryValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 96
    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$000(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p3

    invoke-interface {p3, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 99
    iget p1, p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->presetMode:I

    if-nez p1, :cond_2

    .line 100
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    move-result-object p0

    invoke-interface {p0, p4}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    return-void

    .line 103
    :cond_2
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$200(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;

    move-result-object p1

    const/4 p3, 0x4

    invoke-interface {p1, p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$SlimBodyInfoListener;->updateStateForUI(I)V

    .line 107
    :cond_3
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    iget-object p3, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p3}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$300(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    iget p2, p2, Lcom/transsion/camera/feature/slimbody/data/SBPresetInfo;->titleId:I

    invoke-virtual {p3, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setMessage(Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/transsion/camera/app/common/ui/HintInfo;->setHighlight(Z)V

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot$2;->this$0:Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$400(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;)Lcom/transsion/camera/app/common/ui/HintInfo;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;->access$500(Lcom/transsion/camera/feature/slimbody/ui/SlimBodyRoot;Lcom/transsion/camera/app/common/ui/HintInfo;)V

    :cond_4
    return-void
.end method
