.class public Lcom/inca/security/Tracker/TrackerWrapperFragmentActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "jb"


# instance fields
.field private synthetic IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 31
    iput-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperFragmentActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "arg0"    # Landroid/os/Bundle;

    .prologue
    .line 162
    invoke-virtual {p0}, Lcom/inca/security/Tracker/TrackerWrapperFragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inca/security/Tracker/Tracker;->getInstance(Landroid/content/Context;)Lcom/inca/security/Tracker/Tracker;

    move-result-object v0

    iput-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperFragmentActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    .line 72
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperFragmentActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperFragmentActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    invoke-virtual {v0, p0}, Lcom/inca/security/Tracker/Tracker;->pause(Landroid/content/Context;)V

    .line 44
    :cond_0
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 106
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 96
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 58
    iget-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperFragmentActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/inca/security/Tracker/TrackerWrapperFragmentActivity;->IiIiIiiIii:Lcom/inca/security/Tracker/Tracker;

    invoke-virtual {v0, p0}, Lcom/inca/security/Tracker/Tracker;->resume(Landroid/content/Context;)V

    .line 97
    :cond_0
    return-void
.end method