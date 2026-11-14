.class public Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
.super Ljava/lang/Object;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/widgetslib/widget/tablayout/TabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Tab"
.end annotation


# instance fields
.field private contentDesc:Ljava/lang/CharSequence;

.field private customView:Landroid/view/View;

.field private icon:Landroid/graphics/drawable/Drawable;

.field private labelVisibilityMode:I

.field public parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

.field private position:I

.field private text:Ljava/lang/CharSequence;

.field public view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1820
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 1807
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    const/4 v0, 0x1

    .line 1810
    iput v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return-void
.end method

.method static synthetic access$000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 0

    .line 1787
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$100(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)Ljava/lang/CharSequence;
    .locals 0

    .line 1787
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)I
    .locals 0

    .line 1787
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return p0
.end method


# virtual methods
.method public getCustomView()Landroid/view/View;
    .locals 0

    .line 1850
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1896
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getPosition()I
    .locals 0

    .line 1906
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    return p0
.end method

.method public getTabLabelVisibility()I
    .locals 0

    .line 2062
    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->labelVisibilityMode:I

    return p0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 0

    .line 1920
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public isSelected()Z
    .locals 1

    .line 2075
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_1

    .line 2078
    invoke-virtual {v0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->getSelectedTabPosition()I

    move-result v0

    iget p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    .line 2076
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    .line 2135
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    .line 2136
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 2138
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 2139
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 2140
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    const/4 v1, -0x1

    .line 2141
    iput v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    .line 2142
    iput-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    return-void
.end method

.method public select()V
    .locals 1

    .line 2067
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    if-eqz v0, :cond_0

    .line 2070
    invoke-virtual {v0, p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->selectTab(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;)V

    return-void

    .line 2068
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tab not attached to a TabLayout"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 0

    .line 2109
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    .line 2110
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setCustomView(I)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 3

    .line 1885
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1886
    iget-object v1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;

    return-object p0
.end method

.method public setCustomView(Landroid/view/View;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 0

    .line 1866
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->customView:Landroid/view/View;

    .line 1867
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 2

    .line 1931
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->icon:Landroid/graphics/drawable/Drawable;

    .line 1932
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    iget v0, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->tabGravity:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget p1, p1, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->mode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1933
    :cond_0
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->parent:Lcom/transsion/widgetslib/widget/tablayout/TabLayout;

    invoke-virtual {p1, v1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout;->updateTabViews(Z)V

    .line 1935
    :cond_1
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    .line 1936
    sget-boolean p1, Lcom/google/android/material/badge/BadgeUtils;->USE_COMPAT_PARENT:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 1937
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$300(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    .line 1938
    invoke-static {p1}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->access$400(Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;)Lcom/google/android/material/badge/BadgeDrawable;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/material/badge/BadgeDrawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1940
    iget-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->invalidate()V

    :cond_2
    return-object p0
.end method

.method setPosition(I)V
    .locals 0

    .line 1910
    iput p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->position:I

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;
    .locals 1

    .line 1970
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->contentDesc:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1973
    iget-object v0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1976
    :cond_0
    iput-object p1, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->text:Ljava/lang/CharSequence;

    .line 1977
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->updateView()V

    return-object p0
.end method

.method updateView()V
    .locals 0

    .line 2129
    iget-object p0, p0, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$Tab;->view:Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;

    if-eqz p0, :cond_0

    .line 2130
    invoke-virtual {p0}, Lcom/transsion/widgetslib/widget/tablayout/TabLayout$TabView;->update()V

    :cond_0
    return-void
.end method
