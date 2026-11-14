.class public Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;
.super Ljava/lang/Object;
.source "TimeLapseVideoRestriction.java"


# static fields
.field private static final KEY_MODE:Ljava/lang/String;

.field private static final s3aRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

.field private static final sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 12
    const-class v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoModeEntry;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    .line 23
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 24
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->s3aRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 25
    new-instance v0, Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-direct {v0}, Lcom/transsion/camera/app/common/relation/RelationGroup;-><init>()V

    sput-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    .line 28
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "6_60"

    const-string v2, "key_video_quality"

    const-string v3, "key_video_portrait"

    const-string v4, "key_eye_detection"

    const-string v5, "key_screen_flash"

    const-string v6, "key_touch_capture"

    const-string v7, "key_face_detection"

    const-string v8, "on"

    const-string v9, "off"

    const/16 v10, 0x1c

    if-le v0, v10, :cond_0

    .line 29
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v10, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 30
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v10, "key_touch_capture,key_screen_flash,key_distortion_correction,key_location,key_face_detection,key_eye_detection,key_video_portrait,key_video_quality"

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v10, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v11, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v10, v6, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 40
    invoke-virtual {v10, v5, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v5, "key_location"

    .line 41
    invoke-virtual {v10, v5, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 42
    invoke-virtual {v10, v4, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 43
    invoke-virtual {v10, v7, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 44
    invoke-virtual {v10, v3, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 45
    invoke-virtual {v10, v2, v1, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 47
    invoke-virtual {v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    goto :goto_0

    .line 49
    :cond_0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v10, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 50
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v10, "key_touch_capture,key_screen_flash,key_distortion_correction,key_face_detection,key_eye_detection,key_video_portrait,key_video_quality"

    invoke-virtual {v0, v10}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v10, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v11, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v10, v6, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 60
    invoke-virtual {v10, v5, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 61
    invoke-virtual {v10, v4, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 62
    invoke-virtual {v10, v7, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 63
    invoke-virtual {v10, v3, v9, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 64
    invoke-virtual {v10, v2, v1, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 66
    invoke-virtual {v10}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 57
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 71
    :goto_0
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->s3aRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->s3aRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    const-string v1, "key_focus,key_exposure,key_white_balance"

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->s3aRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v1, v2, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key_focus"

    const-string v3, "auto"

    .line 75
    invoke-virtual {v1, v2, v3, v3}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v3, "key_exposure"

    const-string v4, "exposure-lock"

    const-string v5, "true"

    .line 76
    invoke-virtual {v1, v3, v4, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    const-string v6, "key_white_balance"

    const-string v10, "white-balance-lock"

    .line 77
    invoke-virtual {v1, v6, v10, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 78
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 79
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->s3aRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v5, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v1, v5, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 81
    invoke-virtual {v1, v2, v5, v5}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 82
    invoke-virtual {v1, v3, v4, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 83
    invoke-virtual {v1, v6, v10, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 84
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 88
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    sget-object v1, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setHeaderKey(Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    invoke-virtual {v0, v7}, Lcom/transsion/camera/app/common/relation/RelationGroup;->setBodyKeys(Ljava/lang/String;)V

    .line 90
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v2, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v1, v2, v8}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "off,on,gender_indentification"

    .line 91
    invoke-virtual {v1, v7, v9, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 92
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    .line 93
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    new-instance v1, Lcom/transsion/camera/app/common/relation/Relation$Builder;

    sget-object v3, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->KEY_MODE:Ljava/lang/String;

    invoke-direct {v1, v3, v9}, Lcom/transsion/camera/app/common/relation/Relation$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v7, v8, v2}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->addBody(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/transsion/camera/app/common/relation/Relation$Builder;

    .line 95
    invoke-virtual {v1}, Lcom/transsion/camera/app/common/relation/Relation$Builder;->build()Lcom/transsion/camera/app/common/relation/Relation;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lcom/transsion/camera/app/common/relation/RelationGroup;->addRelation(Lcom/transsion/camera/app/common/relation/Relation;)V

    return-void
.end method

.method public static get3aRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 108
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->s3aRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method static getFaceDetectRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 112
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sFaceDetectRelationGroup:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method

.method public static getRestriction()Lcom/transsion/camera/app/common/relation/RelationGroup;
    .locals 1

    .line 99
    sget-object v0, Lcom/transsion/camera/feature/mode/video/TimeLapseVideoRestriction;->sRelation:Lcom/transsion/camera/app/common/relation/RelationGroup;

    return-object v0
.end method
