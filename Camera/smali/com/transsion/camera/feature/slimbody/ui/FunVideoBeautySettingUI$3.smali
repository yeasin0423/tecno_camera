.class Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;
.super Ljava/lang/Object;
.source "FunVideoBeautySettingUI.java"

# interfaces
.implements Lcom/transsion/camera/feature/slimbody/ui/SettingTopLayout$BarClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public barOnClick(I)V
    .locals 1

    .line 120
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->face_beauty_bar:I

    if-ne p1, v0, :cond_0

    .line 121
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;I)Z

    goto :goto_0

    .line 122
    :cond_0
    sget v0, Lcom/transsion/camera/feature/slimbody/R$id;->slimbody_bar:I

    if-ne p1, v0, :cond_1

    .line 123
    iget-object p0, p0, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI$3;->this$0:Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;->access$200(Lcom/transsion/camera/feature/slimbody/ui/FunVideoBeautySettingUI;I)Z

    :cond_1
    :goto_0
    return-void
.end method
