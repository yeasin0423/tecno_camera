.class Lcom/transsion/widgetslib/dialog/PromptController$8;
.super Ljava/lang/Object;
.source "PromptController.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->addScrollChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;)V
    .locals 0

    .line 652
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$8;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    if-lez p3, :cond_0

    .line 657
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$8;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/ScrollView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_1

    .line 658
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$8;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ScrollView;

    move-result-object p0

    sget p1, Lcom/transsion/widgetslib/R$drawable;->os_dialog_split_top_line:I

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBackgroundResource(I)V

    goto :goto_0

    .line 661
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$8;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ScrollView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/ScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method
