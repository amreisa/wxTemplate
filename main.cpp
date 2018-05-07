#include "main.h"

#include <wx/string.h>

IMPLEMENT_APP_CONSOLE( MainApp )

MainApp::MainApp()
{
}

MainApp::~MainApp()
{
}

int MainApp::OnExit()
{
    return EXIT_SUCCESS;
}

bool MainApp::OnInit()
{
    wxCmdLineParser parser( wxAppConsole::argc, wxAppConsole::argv );
    if ( !DoParseCommandLine( parser ) )
    {
        return false;
    }

    wxPrintf( wxT( "In the name of Allah, the Most Merciful, the Most Compassionate." ) );

    return true;
}

bool MainApp::DoParseCommandLine( wxCmdLineParser& parser )
{
    wxUnusedVar( parser );
    return true;
}
