.class final Lcom/igaworks/adbrix/IgawAdbrix$11;
.super Ljava/lang/Object;
.source "IgawAdbrix.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igaworks/adbrix/IgawAdbrix;->setCustomCohort(Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cohort:Ljava/lang/String;

.field final synthetic val$cohortVariable:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;


# direct methods
.method constructor <init>(Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 218
    iput-object p1, p0, Lcom/igaworks/adbrix/IgawAdbrix$11;->val$cohortVariable:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    iput-object p2, p0, Lcom/igaworks/adbrix/IgawAdbrix$11;->val$cohort:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 222
    # invokes: Lcom/igaworks/adbrix/IgawAdbrix;->framework()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;
    invoke-static {}, Lcom/igaworks/adbrix/IgawAdbrix;->access$000()Lcom/igaworks/adbrix/interfaces/ADBrixInterface;

    move-result-object v0

    iget-object v1, p0, Lcom/igaworks/adbrix/IgawAdbrix$11;->val$cohortVariable:Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;

    iget-object v2, p0, Lcom/igaworks/adbrix/IgawAdbrix$11;->val$cohort:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/igaworks/adbrix/interfaces/ADBrixInterface;->setCustomCohort(Lcom/igaworks/adbrix/interfaces/ADBrixInterface$CohortVariable;Ljava/lang/String;)V

    .line 223
    return-void
.end method
