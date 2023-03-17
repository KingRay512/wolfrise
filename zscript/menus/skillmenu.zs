class SkillMenu : ListMenu
{
    void SpawnMenu()
    {
        super.SpawnMenu();
        SetMenuTitle("SkillMenu");
        SetOptionSelector("M_SKULL1", 24, 3);
        AddStaticPatch(76, 32, "M_TOUGH");
        SetPosition(32, 80);
        AddStaticPatch(0, 0, "M_BOX");
        SetLineSpacing(16);
    }
}