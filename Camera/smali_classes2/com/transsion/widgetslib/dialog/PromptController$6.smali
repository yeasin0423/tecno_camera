.class Lcom/transsion/widgetslib/dialog/PromptController$6;
.super Landroid/widget/CursorAdapter;
.source "PromptController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mIsCheckedIndex:I

.field private final mLabelIndex:I

.field final synthetic this$0:Lcom/transsion/widgetslib/dialog/PromptController;

.field final synthetic val$isCheckedColumn:Ljava/lang/String;

.field final synthetic val$labelColumn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    iput-object p5, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$labelColumn:Ljava/lang/String;

    iput-object p6, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$isCheckedColumn:Ljava/lang/String;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 309
    invoke-virtual {p0}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 310
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$labelColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->mLabelIndex:I

    .line 311
    iget-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->val$isCheckedColumn:Ljava/lang/String;

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->mIsCheckedIndex:I

    return-void
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 0

    .line 316
    invoke-static {}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1000()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckedTextView;

    .line 317
    iget p2, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->mLabelIndex:I

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ListView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 319
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ListView;

    move-result-object p1

    .line 320
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result p2

    iget p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->mIsCheckedIndex:I

    invoke-interface {p3, p0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0

    const/4 p3, 0x1

    if-ne p0, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 319
    :goto_0
    invoke-virtual {p1, p2, p3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_1
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    .line 326
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController$6;->this$0:Lcom/transsion/widgetslib/dialog/PromptController;

    invoke-static {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-static {}, Lcom/transsion/widgetslib/dialog/PromptController;->access$1100()I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method
