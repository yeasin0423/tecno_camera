.class Lcom/transsion/camera/app/ui/ApertureUI$2;
.super Ljava/lang/Object;
.source "ApertureUI.java"

# interfaces
.implements Lcom/opensource/svgaplayer/SVGAParser$ParseCompletion;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/camera/app/ui/ApertureUI;->startSwitchCameraAnim(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/camera/app/ui/ApertureUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/ApertureUI;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/transsion/camera/app/ui/ApertureUI$2;->this$0:Lcom/transsion/camera/app/ui/ApertureUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/opensource/svgaplayer/SVGAVideoEntity;)V
    .locals 2

    .line 79
    iget-object p0, p0, Lcom/transsion/camera/app/ui/ApertureUI$2;->this$0:Lcom/transsion/camera/app/ui/ApertureUI;

    iget-object v0, p0, Lcom/transsion/camera/app/ui/AbstractApertureUI;->mDoubleApertureProgressView:Lcom/opensource/svgaplayer/SVGAImageView;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1, v1}, Lcom/transsion/camera/app/ui/AbstractApertureUI;->doSvgaAnimation(Lcom/opensource/svgaplayer/SVGAImageView;Lcom/opensource/svgaplayer/SVGAVideoEntity;ZI)V

    return-void
.end method

.method public onError()V
    .locals 1

    .line 84
    invoke-static {}, Lcom/transsion/camera/app/ui/ApertureUI;->access$100()Lcom/transsion/camera/utils/debug/Log$Tag;

    move-result-object p0

    const-string v0, "load svga resource error"

    invoke-static {p0, v0}, Lcom/transsion/camera/utils/debug/Log;->i(Lcom/transsion/camera/utils/debug/Log$Tag;Ljava/lang/String;)V

    return-void
.end method
