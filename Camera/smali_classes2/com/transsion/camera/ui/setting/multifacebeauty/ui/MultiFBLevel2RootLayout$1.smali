.class Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout$1;
.super Ljava/lang/Object;
.source "MultiFBLevel2RootLayout.java"

# interfaces
.implements Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;


# direct methods
.method constructor <init>(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFBItemOnClick(Ljava/lang/String;II)V
    .locals 3

    .line 103
    invoke-static {}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FaceBeautyRVListener key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->access$000()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string p1, "there is no need to execute the onclick event"

    invoke-static {p0, p1}, Lcom/transsion/camera/utils/debug/Log;->d(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void

    .line 108
    :cond_0
    iget-object p0, p0, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout$1;->this$0:Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;

    invoke-static {p0}, Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;->access$100(Lcom/transsion/camera/ui/setting/multifacebeauty/ui/MultiFBLevel2RootLayout;)Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/transsion/camera/ui/setting/multifacebeauty/listener/FBItemOnClickListener;->onFBItemOnClick(Ljava/lang/String;II)V

    return-void
.end method
