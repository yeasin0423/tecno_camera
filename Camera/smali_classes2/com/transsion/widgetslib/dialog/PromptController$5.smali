.class Lcom/transsion/widgetslib/dialog/PromptController$5;
.super Landroid/widget/ArrayAdapter;
.source "PromptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/Context;II[Ljava/lang/CharSequence;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 274
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 275
    iget-object p3, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object v0, p3, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/transsion/widgetslib/dialog/PromptController;->access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ListView;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 276
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$5;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iget-object p3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 278
    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ListView;

    move-result-object p0

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
