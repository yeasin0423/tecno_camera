.class public final Lcom/transsion/widgetslib/dialog/PromptController;
.super Ljava/lang/Object;
.source "PromptController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/widgetslib/dialog/PromptController$CheckedItemAdapter;,
        Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;
    }
.end annotation


# static fields
.field private static final LIST_ITEM_ID:I

.field private static final LIST_ITEM_LAYOUT:I

.field private static final LIST_ITEM_MULTI_CHOICE_LAYOUT:I

.field private static final LIST_ITEM_SINGLE_CHOICE_LAYOUT:I


# instance fields
.field private mAutoDismiss:Z

.field private mBtnLayout:Landroid/widget/LinearLayout;

.field private final mButtonListener:Landroid/view/View$OnClickListener;

.field private mButtonNegative:Landroid/widget/Button;

.field private mButtonNegativeMessage:Landroid/os/Message;

.field private mButtonNegativeText:Ljava/lang/CharSequence;

.field private mButtonNeutral:Landroid/widget/Button;

.field private mButtonNeutralMessage:Landroid/os/Message;

.field private mButtonNeutralText:Ljava/lang/CharSequence;

.field private mButtonPositive:Landroid/widget/Button;

.field private mButtonPositiveMessage:Landroid/os/Message;

.field private mButtonPositiveText:Ljava/lang/CharSequence;

.field public mCheckedItems:[Z

.field private mContainer:Landroid/widget/LinearLayout;

.field private final mContext:Landroid/content/Context;

.field private final mDialogInterface:Landroid/content/DialogInterface;

.field private mFrameContainer:Landroid/widget/FrameLayout;

.field private mHandler:Landroid/os/Handler;

.field private mHasNegativeButton:Z

.field private mHasNeutralButton:Z

.field private mHasPositiveButton:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mIsAlert:Z

.field private mIsButtonVertical:Z

.field private mListView:Landroid/widget/ListView;

.field private mScrollMessageView:Landroid/widget/ScrollView;

.field private mTitleView:Landroid/widget/LinearLayout;

.field private mTopTitleView:Landroid/widget/TextView;

.field private mView:Landroid/widget/FrameLayout;

.field private final mWindow:Landroid/view/Window;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list_item:I

    sput v0, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_LAYOUT:I

    .line 46
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list_singlechoice_item:I

    sput v0, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_SINGLE_CHOICE_LAYOUT:I

    .line 48
    sget v0, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list_multichoice_item:I

    sput v0, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_MULTI_CHOICE_LAYOUT:I

    .line 49
    sget v0, Lcom/transsion/widgetslib/R$id;->text_list_item:I

    sput v0, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 68
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    .line 88
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptController$1;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/PromptController$1;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    .line 113
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;

    .line 115
    iput-object p3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    .line 116
    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;

    invoke-direct {v1, p2}, Lcom/transsion/widgetslib/dialog/PromptController$ButtonHandler;-><init>(Landroid/content/DialogInterface;)V

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    .line 117
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    .line 118
    invoke-virtual {p3, v0}, Landroid/view/Window;->requestFeature(I)Z

    const/16 p1, 0x50

    .line 119
    invoke-virtual {p3, p1}, Landroid/view/Window;->setGravity(I)V

    .line 123
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget p2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_container:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    .line 124
    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$2;

    invoke-direct {p2, p0}, Lcom/transsion/widgetslib/dialog/PromptController$2;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 130
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/widgetslib/R$id;->mContainer:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    .line 131
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    sget p2, Lcom/transsion/widgetslib/R$id;->btnLayout:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$1000()I
    .locals 1

    .line 41
    sget v0, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_ID:I

    return v0
.end method

.method static synthetic access$1100()I
    .locals 1

    .line 41
    sget v0, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_MULTI_CHOICE_LAYOUT:I

    return v0
.end method

.method static synthetic access$1200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/view/LayoutInflater;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ScrollView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$300(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$400(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/Button;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$500(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Message;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralMessage:Landroid/os/Message;

    return-object p0
.end method

.method static synthetic access$600(Lcom/transsion/widgetslib/dialog/PromptController;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    return p0
.end method

.method static synthetic access$700(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/content/DialogInterface;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mDialogInterface:Landroid/content/DialogInterface;

    return-object p0
.end method

.method static synthetic access$800(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lcom/transsion/widgetslib/dialog/PromptController;)Landroid/widget/ListView;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method private addScrollChangeListener()V
    .locals 2

    .line 651
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 652
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    new-instance v1, Lcom/transsion/widgetslib/dialog/PromptController$8;

    invoke-direct {v1, p0}, Lcom/transsion/widgetslib/dialog/PromptController$8;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    :cond_0
    return-void
.end method

.method static canTextInput(Landroid/view/View;)Z
    .locals 5

    .line 547
    invoke-virtual {p0}, Landroid/view/View;->onCheckIsTextEditor()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 551
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 555
    :cond_1
    check-cast p0, Landroid/view/ViewGroup;

    .line 556
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 559
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 560
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private dealCheckItems([Ljava/lang/CharSequence;[Z)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 291
    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_1

    .line 292
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    goto :goto_2

    .line 294
    :cond_1
    array-length v0, p1

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    const/4 v0, 0x0

    move v1, v0

    .line 295
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 296
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mCheckedItems:[Z

    array-length v3, p2

    if-ge v1, v3, :cond_2

    aget-boolean v3, p2, v1

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v0

    :goto_1
    aput-boolean v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;
    .locals 3

    .line 350
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_list:I

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    .line 351
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ListView;

    .line 352
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 353
    invoke-virtual {p0, p2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x0

    .line 354
    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    return-object p0
.end method

.method private hasPickView(Landroid/view/View;)Z
    .locals 5

    .line 450
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/transsion/widgetslib/widget/timepicker/OSDateTimePicker;

    if-eqz v0, :cond_0

    return v1

    .line 454
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 458
    :cond_1
    check-cast p1, Landroid/view/ViewGroup;

    .line 459
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    :cond_2
    if-lez v0, :cond_3

    add-int/lit8 v0, v0, -0x1

    .line 462
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 463
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, v3}, Lcom/transsion/widgetslib/dialog/PromptController;->hasPickView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v1

    :cond_3
    return v2
.end method

.method private setIconContent(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 632
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->iconImg:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    .line 634
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 635
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method private setMultiChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 1

    .line 334
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$7;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$7;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    const/4 p0, 0x2

    .line 346
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setChoiceMode(I)V

    return-void
.end method

.method private setupButtons(Z)V
    .locals 5

    .line 480
    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 484
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-static {p1}, Lcom/transsion/widgetslib/dialog/PromptController;->canTextInput(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 485
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    sget v1, Lcom/transsion/widgetslib/R$style;->OsInputDialogAnimStyle:I

    invoke-virtual {p1, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 486
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    goto :goto_0

    .line 488
    :cond_1
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_dialog_horizontal_divider:I

    invoke-virtual {v1, v2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 489
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    const/high16 v1, 0x20000

    invoke-virtual {p1, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 493
    :goto_0
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_vertical:I

    goto :goto_1

    :cond_2
    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_buttons_horizontal:I

    :goto_1
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 499
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_positive:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    .line 500
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    const/16 v3, 0x8

    if-eqz v2, :cond_3

    .line 501
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 503
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAlert:Z

    if-eqz v1, :cond_4

    .line 506
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositive:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v4, Lcom/transsion/widgetslib/R$color;->os_dialog_positive_btn_alert_color:I

    .line 507
    invoke-static {v2, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    .line 506
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_2

    .line 510
    :cond_3
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 516
    :cond_4
    :goto_2
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_negative:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    .line 517
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    if-eqz v2, :cond_5

    .line 518
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegative:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 521
    :cond_5
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 524
    :goto_3
    sget v1, Lcom/transsion/widgetslib/R$id;->btn_neutral:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    .line 525
    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    if-eqz v2, :cond_6

    .line 526
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralText:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 527
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutral:Landroid/widget/Button;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_4

    .line 529
    :cond_6
    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 535
    :goto_4
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 536
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_9

    .line 537
    iget-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/transsion/widgetslib/R$dimen;->os_dialog_button_height:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    .line 538
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    if-eqz v1, :cond_7

    .line 539
    iget-boolean v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    mul-int/2addr v1, p1

    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    mul-int/2addr v2, p1

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    mul-int/2addr p1, v2

    add-int/2addr p1, v1

    .line 541
    :cond_7
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 542
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_8

    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_divider_margin_10:I

    goto :goto_5

    :cond_8
    sget p0, Lcom/transsion/widgetslib/R$dimen;->os_dialog_divider_margin:I

    :goto_5
    invoke-virtual {v2, p0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    add-int/2addr p1, p0

    .line 541
    invoke-virtual {v1, v0, v0, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    :cond_9
    return-void
.end method

.method private setupView()V
    .locals 10

    .line 373
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 374
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 376
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 377
    :goto_0
    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 378
    :goto_1
    iget-object v4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :cond_2
    move v4, v2

    .line 379
    :goto_2
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    if-eqz v0, :cond_4

    .line 382
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    if-eqz v3, :cond_7

    if-eqz v0, :cond_5

    .line 387
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v2, v6, v2, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    goto :goto_4

    :cond_5
    if-eqz v4, :cond_6

    .line 389
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_top:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    invoke-virtual {v5, v2, v2, v2, v6}, Landroid/widget/ScrollView;->setPadding(IIII)V

    goto :goto_4

    .line 391
    :cond_6
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/widget/ScrollView;->setPadding(IIII)V

    .line 393
    :goto_4
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_7
    if-eqz v1, :cond_8

    if-nez v3, :cond_8

    .line 397
    iget-object v5, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_8
    if-eqz v1, :cond_9

    if-eqz v0, :cond_9

    .line 404
    invoke-virtual {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->getTitleView()Landroid/widget/TextView;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 406
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v7, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {v6, v7}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 407
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_body_font:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-virtual {v5, v2, v6}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 408
    sget v6, Lcom/transsion/widgetslib/R$style;->os_regular_fontweight:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 409
    iget-object v6, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 411
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iget-object v8, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    .line 412
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/transsion/widgetslib/R$dimen;->os_dialog_message_padding_bottom:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v8, v8

    .line 409
    invoke-virtual {v5, v6, v2, v7, v8}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_9
    if-eqz v1, :cond_a

    if-nez v0, :cond_a

    .line 417
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_a
    if-eqz v4, :cond_e

    const/4 v0, 0x0

    const/4 v5, -0x2

    if-eqz v3, :cond_b

    .line 422
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    .line 423
    invoke-virtual {v1}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 424
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 425
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 426
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    :cond_b
    if-eqz v1, :cond_c

    .line 428
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    .line 429
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 430
    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 431
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 432
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5

    .line 433
    :cond_c
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->hasPickView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 434
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_d

    .line 435
    sget v1, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_d

    .line 437
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_body_font:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 438
    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/transsion/widgetslib/R$dimen;->os_dialog_padding_left_right:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v3, v1

    const/high16 v5, 0x3fc00000    # 1.5f

    div-float/2addr v3, v5

    float-to-int v3, v3

    .line 439
    invoke-virtual {v0, v1, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 443
    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 446
    :cond_e
    invoke-direct {p0, v4}, Lcom/transsion/widgetslib/dialog/PromptController;->setupButtons(Z)V

    return-void
.end method


# virtual methods
.method public getTitleView()Landroid/widget/TextView;
    .locals 1

    .line 583
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_0

    .line 584
    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public installContent()V
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mWindow:Landroid/view/Window;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mView:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 136
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->setupView()V

    return-void
.end method

.method public onPrepareListView(Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;)V
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    if-eqz p0, :cond_0

    .line 360
    invoke-interface {p1, p0}, Lcom/transsion/widgetslib/dialog/PromptParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    :cond_0
    return-void
.end method

.method public setAutoDismiss(Z)V
    .locals 0

    .line 715
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mAutoDismiss:Z

    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V
    .locals 1

    .line 185
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p4, :cond_1

    if-eqz p3, :cond_1

    .line 190
    iget-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p4, p1, p3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p4

    :cond_1
    const/4 p3, -0x3

    const/4 v0, 0x1

    if-eq p1, p3, :cond_4

    const/4 p3, -0x2

    if-eq p1, p3, :cond_3

    const/4 p3, -0x1

    if-ne p1, p3, :cond_2

    .line 195
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveText:Ljava/lang/CharSequence;

    .line 196
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonPositiveMessage:Landroid/os/Message;

    .line 197
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasPositiveButton:Z

    goto :goto_0

    .line 210
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Button does not exist"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 200
    :cond_3
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeText:Ljava/lang/CharSequence;

    .line 201
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNegativeMessage:Landroid/os/Message;

    .line 202
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNegativeButton:Z

    goto :goto_0

    .line 205
    :cond_4
    iput-object p2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralText:Ljava/lang/CharSequence;

    .line 206
    iput-object p4, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mButtonNeutralMessage:Landroid/os/Message;

    .line 207
    iput-boolean v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mHasNeutralButton:Z

    :goto_0
    return-void
.end method

.method public setButtonVertical(Z)V
    .locals 0

    .line 719
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsButtonVertical:Z

    return-void
.end method

.method public setCheckedItem(I)V
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 367
    invoke-virtual {v0, p1, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 368
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, p1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 620
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIcon:Landroid/graphics/drawable/Drawable;

    if-ne v0, p1, :cond_0

    if-eqz p1, :cond_2

    .line 621
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 622
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setIconContent(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 624
    :cond_1
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 625
    invoke-direct {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setIconContent(Landroid/graphics/drawable/Drawable;)V

    .line 627
    :goto_0
    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIcon:Landroid/graphics/drawable/Drawable;

    :cond_2
    return-void
.end method

.method public setIsAlert(Z)V
    .locals 0

    .line 594
    iput-boolean p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mIsAlert:Z

    return-void
.end method

.method public setList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .line 233
    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_LAYOUT:I

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v4, v3

    new-array v5, v0, [I

    sget p2, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_ID:I

    aput p2, v5, v3

    const/4 v6, 0x2

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 236
    invoke-virtual {p0, v7, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 220
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$3;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$3;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    return-void
.end method

.method public setList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 215
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_LAYOUT:I

    sget v3, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_ID:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 216
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->setList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setMessageView(Ljava/lang/CharSequence;)V
    .locals 4

    .line 164
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_message:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mScrollMessageView:Landroid/widget/ScrollView;

    .line 166
    sget v1, Lcom/transsion/widgetslib/R$id;->text_message:I

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 167
    invoke-direct {p0}, Lcom/transsion/widgetslib/dialog/PromptController;->addScrollChangeListener()V

    .line 168
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setMultiChoiceList(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 8

    .line 304
    new-instance v7, Lcom/transsion/widgetslib/dialog/PromptController$6;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/transsion/widgetslib/dialog/PromptController$6;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/Context;Landroid/database/Cursor;ZLjava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v7, p4}, Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public setMultiChoiceList([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)V
    .locals 6

    .line 269
    invoke-direct {p0, p1, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->dealCheckItems([Ljava/lang/CharSequence;[Z)V

    .line 270
    new-instance p2, Lcom/transsion/widgetslib/dialog/PromptController$5;

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_MULTI_CHOICE_LAYOUT:I

    sget v4, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_ID:I

    move-object v0, p2

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/transsion/widgetslib/dialog/PromptController$5;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 284
    invoke-direct {p0, p2, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setMultiChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)V

    return-void
.end method

.method public setSingleChoiceList(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 8

    .line 261
    new-instance v7, Landroid/widget/SimpleCursorAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_SINGLE_CHOICE_LAYOUT:I

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v4, v3

    new-array v5, v0, [I

    sget p2, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_ID:I

    aput p2, v5, v3

    const/4 v6, 0x2

    move-object v0, v7

    move-object v3, p1

    invoke-direct/range {v0 .. v6}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    .line 264
    invoke-virtual {p0, v7, p3}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1

    .line 248
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$4;

    invoke-direct {v0, p0, p2}, Lcom/transsion/widgetslib/dialog/PromptController$4;-><init>(Lcom/transsion/widgetslib/dialog/PromptController;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-direct {p0, p1, v0}, Lcom/transsion/widgetslib/dialog/PromptController;->generateListView(Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)Landroid/widget/ListView;

    move-result-object p1

    iput-object p1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mListView:Landroid/widget/ListView;

    const/4 p0, 0x1

    .line 256
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setChoiceMode(I)V

    return-void
.end method

.method public setSingleChoiceList([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 241
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptController$CheckedItemAdapter;

    iget-object v1, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v2, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_SINGLE_CHOICE_LAYOUT:I

    sget v3, Lcom/transsion/widgetslib/dialog/PromptController;->LIST_ITEM_ID:I

    invoke-direct {v0, v1, v2, v3, p1}, Lcom/transsion/widgetslib/dialog/PromptController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    .line 243
    invoke-virtual {p0, v0, p2}, Lcom/transsion/widgetslib/dialog/PromptController;->setSingleChoiceList(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 599
    sget p0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 600
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/dialog/PromptController;->setTitleView(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public setTitleView(Ljava/lang/CharSequence;)V
    .locals 4

    .line 140
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v0, Lcom/transsion/widgetslib/R$id;->text_title:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 145
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setTopTitle(Ljava/lang/CharSequence;)V
    .locals 4

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_title:I

    iget-object v3, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTitleView:Landroid/widget/LinearLayout;

    sget v2, Lcom/transsion/widgetslib/R$id;->text_top_title:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTopTitleView:Landroid/widget/TextView;

    .line 155
    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContext:Landroid/content/Context;

    sget v3, Lcom/transsion/widgetslib/R$color;->os_text_tertiary_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 156
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTopTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mTopTitleView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setView(ILandroid/view/View;)V
    .locals 4

    if-nez p1, :cond_0

    if-eqz p2, :cond_2

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/transsion/widgetslib/R$layout;->os_prompt_dialog_view:I

    iget-object v2, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mContainer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mFrameContainer:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_1

    .line 176
    iget-object p0, p0, Lcom/transsion/widgetslib/dialog/PromptController;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p0, p1, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 178
    :cond_1
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
