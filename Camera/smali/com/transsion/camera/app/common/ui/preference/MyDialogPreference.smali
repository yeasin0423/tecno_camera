.class public Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;
.super Landroid/preference/DialogPreference;
.source "MyDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;
    }
.end annotation


# instance fields
.field private mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

.field private mContext:Landroid/content/Context;

.field private mCurrentCount:I

.field private mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

.field private mDialogListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

.field private mIsDebugPreference:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 29
    iput-boolean v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mIsDebugPreference:Z

    .line 31
    iput v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mCurrentCount:I

    .line 43
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method private closeDeveloperMode()V
    .locals 1

    .line 119
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_developer_mode"

    invoke-interface {p0, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private getLanguage()Ljava/lang/String;
    .locals 0

    .line 123
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    .line 124
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$onClick$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x1

    .line 78
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->onDialogClosed(Z)V

    .line 79
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private synthetic lambda$onClick$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p2, 0x0

    .line 82
    invoke-virtual {p0, p2}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->onDialogClosed(Z)V

    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method

.method private openDeveloperMode()V
    .locals 2

    .line 114
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "key_developer_mode"

    const-string v1, "on"

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public hideDialog()V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object p0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$onClick$0$MyDialogPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->lambda$onClick$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public synthetic lambda$onClick$1$MyDialogPreference(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->lambda$onClick$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method protected onClick()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 71
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getPositiveButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 72
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pt"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "OK"

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mBuilder:Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 76
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getDialogMessage()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    new-instance v2, Lcom/transsion/camera/app/common/ui/preference/-$$Lambda$MyDialogPreference$eLaSrKRmJslkXCKqLJl0eDExhQ8;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/ui/preference/-$$Lambda$MyDialogPreference$eLaSrKRmJslkXCKqLJl0eDExhQ8;-><init>(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;)V

    .line 77
    invoke-virtual {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 81
    invoke-virtual {p0}, Landroid/preference/DialogPreference;->getNegativeButtonText()Ljava/lang/CharSequence;

    move-result-object v0

    new-instance v2, Lcom/transsion/camera/app/common/ui/preference/-$$Lambda$MyDialogPreference$dYcCC-JFYpjQm5sjB0LHwjN8Nfk;

    invoke-direct {v2, p0}, Lcom/transsion/camera/app/common/ui/preference/-$$Lambda$MyDialogPreference$dYcCC-JFYpjQm5sjB0LHwjN8Nfk;-><init>(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;)V

    invoke-virtual {v1, v0, v2}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;

    .line 85
    invoke-virtual {v1}, Lcom/transsion/widgetslib/dialog/PromptDialog$Builder;->create()Lcom/transsion/widgetslib/dialog/PromptDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialog:Lcom/transsion/widgetslib/dialog/PromptDialog;

    .line 86
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialogListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;->onDialogClosed(Z)V

    .line 94
    :cond_0
    iget-boolean v0, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mIsDebugPreference:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 96
    iget p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mCurrentCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mCurrentCount:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    .line 98
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->openDeveloperMode()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 101
    iput p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mCurrentCount:I

    .line 102
    invoke-direct {p0}, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->closeDeveloperMode()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setDialogListener(Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mDialogListener:Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference$DialogListener;

    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1

    .line 60
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->setKey(Ljava/lang/String;)V

    const-string v0, "key_restore_settings"

    .line 61
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/transsion/camera/app/common/ui/preference/MyDialogPreference;->mIsDebugPreference:Z

    return-void
.end method
