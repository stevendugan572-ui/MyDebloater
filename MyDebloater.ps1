Add-Type -AssemblyName PresentationFramework

function Show-HomePage {
    $window = New-Object System.Windows.Window
    $window.Title = "My Debloater"
    $window.Width = 400
    $window.Height = 350
    $window.WindowStartupLocation = "CenterScreen"

    $stack = New-Object System.Windows.Controls.StackPanel
    $stack.Margin = "20"
    $window.Content = $stack

    $title = New-Object System.Windows.Controls.TextBlock
    $title.Text = "Choose a category:"
    $title.FontSize = 20
    $title.Margin = "0,0,0,20"
    $stack.Children.Add($title)

    # Delay Button
    $btnDelay = New-Object System.Windows.Controls.Button
    $btnDelay.Content = "Delay Optimization"
    $btnDelay.Margin = "0,0,0,10"
    $btnDelay.Height = 40
    $stack.Children.Add($btnDelay)

    # Debloat Button
    $btnDebloat = New-Object System.Windows.Controls.Button
    $btnDebloat.Content = "Debloat Windows"
    $btnDebloat.Margin = "0,0,0,10"
    $btnDebloat.Height = 40
    $stack.Children.Add($btnDebloat)

    # Game Mode Button
    $btnGame = New-Object System.Windows.Controls.Button
    $btnGame.Content = "Game Mode"
    $btnGame.Margin = "0,0,0,10"
    $btnGame.Height = 40
    $stack.Children.Add($btnGame)

    # Button Actions
    $btnDelay.Add_Click({
        $window.Close()
        Show-DelayPage
    })

    $btnDebloat.Add_Click({
        $window.Close()
        Show-DebloatPage
    })

    $btnGame.Add_Click({
        $window.Close()
        Show-GamePage
    })

    $window.ShowDialog() | Out-Null
}

function Show-DelayPage {
    $window = New-Object System.Windows.Window
    $window.Title = "Delay Optimization"
    $window.Width = 450
    $window.Height = 500
    $window.WindowStartupLocation = "CenterScreen"

    $stack = New-Object System.Windows.Controls.StackPanel
    $stack.Margin = "20"
    $window.Content = $stack

    $title = New-Object System.Windows.Controls.TextBlock
    $title.Text = "Delay Optimization Options"
    $title.FontSize = 18
    $title.Margin = "0,0,0,20"
    $stack.Children.Add($title)

    # Example checkbox
    $chkTelemetry = New-Object System.Windows.Controls.CheckBox
    $chkTelemetry.Content = "Disable Telemetry"
    $chkTelemetry.ToolTip = "Reduces background data collection. Recommended."
    $stack.Children.Add($chkTelemetry)

    # Back button
    $btnBack = New-Object System.Windows.Controls.Button
    $btnBack.Content = "Back"
    $btnBack.Margin = "0,20,0,0"
    $stack.Children.Add($btnBack)

    $btnBack.Add_Click({
        $window.Close()
        Show-HomePage
    })

    $window.ShowDialog() | Out-Null
}

function Show-DebloatPage {
    $window = New-Object System.Windows.Window
    $window.Title = "Debloat Windows"
    $window.Width = 450
    $window.Height = 500
    $window.WindowStartupLocation = "CenterScreen"

    $stack = New-Object System.Windows.Controls.StackPanel
    $stack.Margin = "20"
    $window.Content = $stack

    $title = New-Object System.Windows.Controls.TextBlock
    $title.Text = "Debloat Options"
    $title.FontSize = 18
    $title.Margin = "0,0,0,20"
    $stack.Children.Add($title)

    # Example checkbox
    $chkRemoveXbox = New-Object System.Windows.Controls.CheckBox
    $chkRemoveXbox.Content = "Remove Xbox Apps"
    $chkRemoveXbox.ToolTip = "Removes Xbox-related apps. Safe."
    $stack.Children.Add($chkRemoveXbox)

    # Back button
    $btnBack = New-Object System.Windows.Controls.Button
    $btnBack.Content = "Back"
    $btnBack.Margin = "0,20,0,0"
    $stack.Children.Add($btnBack)

    $btnBack.Add_Click({
        $window.Close()
        Show-HomePage
    })

    $window.ShowDialog() | Out-Null
}

function Show-GamePage {
    $window = New-Object System.Windows.Window
    $window.Title = "Game Mode"
    $window.Width = 450
    $window.Height = 500
    $window.WindowStartupLocation = "CenterScreen"

    $stack = New-Object System.Windows.Controls.StackPanel
    $stack.Margin = "20"
    $window.Content = $stack

    $title = New-Object System.Windows.Controls.TextBlock
    $title.Text = "Game Mode Options"
    $title.FontSize = 18
    $title.Margin = "0,0,0,20"
    $stack.Children.Add($title)

    # Example checkbox
    $chkPowerPlan = New-Object System.Windows.Controls.CheckBox
    $chkPowerPlan.Content = "Enable High Performance Power Plan"
    $chkPowerPlan.ToolTip = "Improves CPU responsiveness. Recommended."
    $stack.Children.Add($chkPowerPlan)

    # Back button
    $btnBack = New-Object System.Windows.Controls.Button
    $btnBack.Content = "Back"
    $btnBack.Margin = "0,20,0,0"
    $stack.Children.Add($btnBack)

    $btnBack.Add_Click({
        $window.Close()
        Show-HomePage
    })

    $window.ShowDialog() | Out-Null
}

Show-HomePage
