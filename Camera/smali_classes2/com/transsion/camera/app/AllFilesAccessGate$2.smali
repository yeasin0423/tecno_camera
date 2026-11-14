.class public Lcom/transsion/camera/app/AllFilesAccessGate$2;
.super Ljava/lang/Object;
.implements Landroid/view/View$OnClickListener;
.source "AllFilesAccessGate.java"

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/camera/app/AllFilesAccessGate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "2"
.end annotation


# instance fields
.field final synthetic mActivity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/transsion/camera/app/AllFilesAccessGate$2;->mActivity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 8
    invoke-static {}, Lcom/transsion/camera/app/AllFilesAccessGate;->markChoiceDone()V

    iget-object v0, p0, Lcom/transsion/camera/app/AllFilesAccessGate$2;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->recreate()V

    return-void
.end method
