.class Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$1;
.super Ljava/lang/Object;
.source "FaceBeautyRoot.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/adapter/FaceBeautyAdapter$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/view/View;Lcom/transsion/camera/feature/slimbody/data/FBItemData;I)V
    .locals 0

    if-eqz p2, :cond_0

    .line 30
    iget-object p1, p2, Lcom/transsion/camera/feature/slimbody/data/FBItemData;->effectId:Ljava/lang/String;

    .line 31
    iget-object p2, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-static {p2}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 32
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot$1;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;

    invoke-static {p0}, Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;->access$000(Lcom/transsion/camera/feature/slimbody/ui/FaceBeautyRoot;)Lcom/transsion/camera/app/common/setting/ISetting;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/setting/ISetting;->onValueChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
