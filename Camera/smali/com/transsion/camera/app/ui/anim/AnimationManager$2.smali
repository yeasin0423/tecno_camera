.class Lcom/transsion/camera/app/ui/anim/AnimationManager$2;
.super Ljava/lang/Object;
.source "AnimationManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/anim/AnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/transsion/common/blur/GaussianBlur;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/anim/AnimationManager;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/transsion/common/blur/GaussianBlur;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$300(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/transsion/common/blur/GaussianBlur;

    iget-object p0, p0, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;->this$0:Lcom/transsion/camera/app/ui/anim/AnimationManager;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager;->access$300(Lcom/transsion/camera/app/ui/anim/AnimationManager;)Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/transsion/common/blur/GaussianBlur;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 75
    invoke-virtual {p0}, Lcom/transsion/camera/app/ui/anim/AnimationManager$2;->call()Lcom/transsion/common/blur/GaussianBlur;

    move-result-object p0

    return-object p0
.end method
