.class public abstract Lcom/google/android/material/picker/MaterialPickerDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "MaterialPickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/DialogFragment;"
    }
.end annotation


# static fields
.field private static final THEME_RESOURCE_ID_KEY:Ljava/lang/String; = "themeResId"


# instance fields
.field private header:Landroid/widget/TextView;

.field private materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end field

.field private selection:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TS;"
        }
    .end annotation
.end field

.field private simpleDateFormat:Ljava/text/SimpleDateFormat;

.field private themeResId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->updateHeader()V

    return-void
.end method

.method static synthetic access$102(Lcom/google/android/material/picker/MaterialPickerDialogFragment;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->selection:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object p0
.end method

.method protected static addThemeToBundle(Landroid/os/Bundle;I)V
    .locals 1

    const-string v0, "themeResId"

    .line 87
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private static getThemeResource(Landroid/content/Context;II)I
    .locals 1

    if-eqz p2, :cond_0

    return p2

    .line 95
    :cond_0
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    .line 96
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    iget p0, p2, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method

.method private updateHeader()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getHeaderText()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected abstract createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation
.end method

.method protected abstract getDefaultThemeAttr()I
.end method

.method protected abstract getHeaderText()Ljava/lang/String;
.end method

.method public final getMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/material/picker/MaterialCalendarView<",
            "+TS;>;"
        }
    .end annotation

    .line 198
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    return-object p0
.end method

.method public final getSelection()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 173
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->selection:Ljava/lang/Object;

    return-object p0
.end method

.method public final getSimpleDateFormat()Ljava/text/SimpleDateFormat;
    .locals 0

    .line 187
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-object p0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 102
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    new-instance p1, Ljava/text/SimpleDateFormat;

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$string;->mtrl_picker_date_format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getDefaultThemeAttr()I

    move-result v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "themeResId"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 107
    invoke-static {p1, v0, v1}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->getThemeResource(Landroid/content/Context;II)I

    move-result p1

    iput p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    .line 109
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->createMaterialCalendarView()Lcom/google/android/material/picker/MaterialCalendarView;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    .line 110
    new-instance v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$1;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 122
    new-instance p1, Landroid/app/Dialog;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    iget p0, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->themeResId:I

    invoke-direct {p1, v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 131
    sget p3, Lcom/google/android/material/R$layout;->mtrl_picker_dialog:I

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 132
    sget p2, Lcom/google/android/material/R$id;->date_picker_header_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->header:Landroid/widget/TextView;

    .line 133
    sget p2, Lcom/google/android/material/R$id;->date_picker_calendar_view_frame:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    .line 134
    iget-object p3, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->materialCalendarView:Lcom/google/android/material/picker/MaterialCalendarView;

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 135
    sget p2, Lcom/google/android/material/R$id;->confirm_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    .line 136
    sget p3, Lcom/google/android/material/R$id;->cancel_button:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Button;

    .line 138
    new-instance v0, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$2;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    new-instance p2, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;

    invoke-direct {p2, p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment$3;-><init>(Lcom/google/android/material/picker/MaterialPickerDialogFragment;)V

    invoke-virtual {p3, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    invoke-direct {p0}, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->updateHeader()V

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 160
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 164
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final setSimpleDateFormat(Ljava/text/SimpleDateFormat;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialPickerDialogFragment;->simpleDateFormat:Ljava/text/SimpleDateFormat;

    return-void
.end method
