.class public Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyRestriction;
.super Ljava/lang/Object;
.source "VideoMultiFaceBeautyRestriction.java"


# static fields
.field private static mMultiFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 18
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyRestriction;->mMultiFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_video_facebeauty"

    .line 21
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 22
    sget-object v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyRestriction;->mMultiFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v2, "key_anti_video,key_video_portrait,key_video_quality,key_tran_plugin"

    invoke-virtual {v0, v2}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 23
    sget-object v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyRestriction;->mMultiFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v2, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "video_facebeauty_on"

    invoke-direct {v2, v1, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "key_anti_video"

    const-string v3, "off"

    const-string v4, "off,on"

    .line 25
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v1, "key_video_portrait"

    .line 26
    invoke-virtual {v2, v1, v3, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const/4 v1, 0x5

    .line 27
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "key_video_quality"

    const-string v4, "null"

    invoke-virtual {v2, v3, v1, v4}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 28
    invoke-virtual {v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method static getMultiFaceBeautyRelation()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 33
    sget-object v0, Lcom/transsion/camera/feature/setting/multifacebeauty/VideoMultiFaceBeautyRestriction;->mMultiFaceBeautyRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
