.class Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$1;
.super Ljava/lang/Object;
.source "MultiCustomSeekBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;->access$002(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;Z)Z

    .line 58
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiCustomSeekBar;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
