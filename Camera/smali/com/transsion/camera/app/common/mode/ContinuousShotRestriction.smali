.class Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;
.super Ljava/lang/Object;
.source "ContinuousShotRestriction.java"


# static fields
.field private static final KEY_CONTINUOUS_SHOT:Ljava/lang/String; = "com.transsion.camera.app.common.mode.ContinuousShotRestriction"

.field private static sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 34
    sget-object v1, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->KEY_CONTINUOUS_SHOT:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 35
    sget-object v0, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_focus,key_exposure,key_white_balance"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->KEY_CONTINUOUS_SHOT:Ljava/lang/String;

    const-string v3, "on"

    invoke-direct {v1, v2, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_focus"

    const-string v3, "auto"

    .line 38
    invoke-virtual {v1, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "key_exposure"

    const-string v4, "exposure-lock"

    const-string v5, "true"

    .line 39
    invoke-virtual {v1, v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "key_white_balance"

    const-string v7, "white-balance-lock"

    .line 40
    invoke-virtual {v1, v6, v7, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 41
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 42
    sget-object v0, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v5, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->KEY_CONTINUOUS_SHOT:Ljava/lang/String;

    const-string v8, "off"

    invoke-direct {v1, v5, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 44
    invoke-virtual {v1, v2, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v2, "false"

    .line 45
    invoke-virtual {v1, v3, v4, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 46
    invoke-virtual {v1, v6, v7, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 47
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 51
    sget-object v0, Lcom/transsion/camera/app/common/mode/ContinuousShotRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
