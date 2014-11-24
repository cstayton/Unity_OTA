.class public Lcom/unityota/unityotaActivity$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "unityotaActivity.java"

# interfaces
.implements Landroid/app/ActionBar$TabListener;
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/unityota/unityotaActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final mActionBar:Landroid/app/ActionBar;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/support/v4/view/ViewPager;)V
    .locals 1

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->ctx:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    iput-object p2, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v0, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    iget-object v0, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    return-void
.end method


# virtual methods
.method public addTab(Landroid/app/ActionBar$Tab;Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/ActionBar$Tab;",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    new-instance v0, Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;

    invoke-direct {v0, p2}, Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    invoke-virtual {p1, p0}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    iget-object v1, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, p1}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    invoke-virtual {p0}, Lcom/unityota/unityotaActivity$TabsAdapter;->notifyDataSetChanged()V

    iget-object v1, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 3

    iget-object v1, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;

    iget-object v1, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->ctx:Landroid/content/Context;

    #getter for: Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;->access$200(Lcom/unityota/unityotaActivity$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    return-object v1
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    iget-object v0, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    return-void
.end method

.method public onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_0

    iget-object v2, p0, Lcom/unityota/unityotaActivity$TabsAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V
    .locals 0

    return-void
.end method
