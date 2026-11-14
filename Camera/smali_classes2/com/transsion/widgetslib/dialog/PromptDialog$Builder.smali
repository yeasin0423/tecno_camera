.class public Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
.super Ljava/lang/Object;
.source "PromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/dialog/PromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field public final P:Lcom/transsion/widgetslib/dialog/PromptParams;

.field public dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 107
    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$000(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    .line 108
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$000(Landroid/content/Context;I)I

    move-result p1

    invoke-direct {v0, v1, p1}, Lcom/transsion/widgetslib/dialog/PromptDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-void
.end method


# virtual methods
.method public create()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-static {v1}, Lcom/transsion/widgetslib/dialog/PromptDialog;->access$100(Lcom/transsion/widgetslib/dialog/PromptDialog;)Lcom/transsion/widgetslib/dialog/PromptController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptParams;->apply(Lcom/transsion/widgetslib/dialog/PromptController;)V

    .line 357
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-boolean v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 358
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-boolean v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 359
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 360
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v1, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 361
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    .line 362
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    iget-boolean v3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelable:Z

    iget-boolean v0, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCancelOutSide:Z

    invoke-static {v1, v2, v3, v0}, Lcom/transsion/widgetslib/util/Utils;->setDialogWindowBackGround(Landroid/content/Context;Landroid/app/Dialog;ZZ)V

    .line 367
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->dialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mMessage:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 185
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 191
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iget-object v1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 157
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p2, p1, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 163
    iput-object p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 307
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mItems:[Ljava/lang/CharSequence;

    .line 308
    iput p2, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mCheckedItem:I

    .line 309
    iput-object p3, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 p1, 0x1

    .line 310
    iput-boolean p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mIsSingleChoice:Z

    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;
    .locals 1

    .line 336
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->P:Lcom/transsion/widgetslib/dialog/PromptParams;

    iput-object p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mView:Landroid/view/View;

    const/4 p1, 0x0

    .line 337
    iput p1, v0, Lcom/transsion/widgetslib/dialog/PromptParams;->mViewLayoutResId:I

    return-object p0
.end method

.method public show()Lcom/transsion/widgetslib/dialog/PromptDialog;
    .locals 0

    .line 371
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object p0

    .line 372
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-object p0
.end method
