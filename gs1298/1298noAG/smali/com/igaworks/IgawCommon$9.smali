.class final Lcom/igaworks/IgawCommon$9;
.super Ljava/lang/Object;
.source "IgawCommon.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/IgawCommon;->custom(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/igaworks/IgawCommon$9;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 261
    invoke-static {}, Lcom/igaworks/IgawCommon;->framework()Lcom/igaworks/interfaces/CommonInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/IgawCommon$9;->val$name:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/igaworks/interfaces/CommonInterface;->custom(Ljava/lang/String;)V

    .line 262
    return-void
.end method
