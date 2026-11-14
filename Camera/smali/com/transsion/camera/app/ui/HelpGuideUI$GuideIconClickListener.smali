.class Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;
.super Ljava/lang/Object;
.source "HelpGuideUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/ui/HelpGuideUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GuideIconClickListener"
.end annotation


# instance fields
.field fm:Landroid/app/FragmentManager;

.field layoutId:I

.field pagerIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;


# direct methods
.method constructor <init>(Lcom/transsion/camera/app/ui/HelpGuideUI;Landroid/app/FragmentManager;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/FragmentManager;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p2, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->fm:Landroid/app/FragmentManager;

    .line 82
    iput p3, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->layoutId:I

    .line 83
    iput-object p4, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->pagerIds:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 88
    iget-object p1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->fm:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 89
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->pagerIds:Ljava/util/List;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->newInstance(Ljava/util/List;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/transsion/camera/app/ui/HelpGuideUI;->access$002(Lcom/transsion/camera/app/ui/HelpGuideUI;Lcom/transsion/camera/app/ui/GuidePagerRootFragment;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    .line 90
    iget-object v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-static {v0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->access$000(Lcom/transsion/camera/app/ui/HelpGuideUI;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object v0

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/HelpGuideUI;->access$100(Lcom/transsion/camera/app/ui/HelpGuideUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/ui/GuidePagerRootFragment;->setCameraOperateActionControl(Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;)V

    .line 91
    iget v0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->layoutId:I

    iget-object v1, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-static {v1}, Lcom/transsion/camera/app/ui/HelpGuideUI;->access$000(Lcom/transsion/camera/app/ui/HelpGuideUI;)Lcom/transsion/camera/app/ui/GuidePagerRootFragment;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    const-string v0, "guide_pager_root"

    .line 92
    invoke-virtual {p1, v0}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 93
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 94
    iget-object p0, p0, Lcom/transsion/camera/app/ui/HelpGuideUI$GuideIconClickListener;->this$0:Lcom/transsion/camera/app/ui/HelpGuideUI;

    invoke-static {p0}, Lcom/transsion/camera/app/ui/HelpGuideUI;->access$100(Lcom/transsion/camera/app/ui/HelpGuideUI;)Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;

    move-result-object p0

    const/16 p1, 0x4d

    invoke-interface {p0, p1}, Lcom/transsion/camera/app/common/IAppUIControl$ICameraOperationControl;->notifyRawActionToAppUI(I)V

    return-void
.end method
