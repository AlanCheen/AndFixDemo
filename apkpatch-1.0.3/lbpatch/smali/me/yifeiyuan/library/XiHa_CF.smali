.class public Lme/yifeiyuan/library/XiHa_CF;
.super Ljava/lang/Object;
.source "XiHa.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XiHa"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static xiha()V
    .locals 2
    .annotation runtime Lcom/alipay/euler/andfix/annotation/MethodReplace;
        method = "xiha"
        clazz = "me.yifeiyuan.library.XiHa"
    .end annotation

    .prologue
    .line 36
    const-string v0, "XiHa"

    const-string v1, "after fix "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method
