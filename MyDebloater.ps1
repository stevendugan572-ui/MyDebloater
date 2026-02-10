Add-Type -AssemblyName PresentationFramework

# Create window
$window = New-Object System.Windows.Window
$window.Title = "My Custom Debloater"
$window.Width = 400
$window.Height = 300
$window.WindowStartupLocation = "CenterScreen"

# Create a stack panel
$stackPanel = New-Object System.Windows.Controls.StackPanel
$stackPanel.Margin = "10"
$window.Content = $stackPanel

# Title text
$title = New-Object System.Windows.Controls.TextBlock
$title.Text = "Select what you want to debloat:"
$title.FontSize = 16
$title.Margin = "0,0,0,10"
$stackPanel.Children.Add($title)

# Example checkboxes
$chkRemoveXbox = New-Object System.Windows.Controls.CheckBox
$chkRemoveXbox.Content = "Remove Xbox apps"
$stackPanel.Children.Add($chkRemoveXbox)

$chkDisableTelemetry = New-Object System.Windows.Controls.CheckBox
$chkDisableTelemetry.Content = "Disable basic telemetry"
$stackPanel.Children.Add($chkDisableTelemetry)

$chkRemoveOnedrive = New-Object System.Windows.Controls.CheckBox
$chkRemoveOnedrive.Content = "Remove OneDrive (example)"
$stackPanel.Children.Add($chkRemoveOnedrive)

# Apply button
$btnApply = New-Object System.Windows.Controls.Button
$btnApply.Content = "Apply"
$btnApply.Margin = "0,15,0,0"
$btnApply.Width = 80
$stackPanel.Children.Add($btnApply)

# What happens when Apply is clicked
$btnApply.Add_Click({
    if ($chkRemoveXbox.IsChecked) {
        Write-Host "Would remove Xbox apps here"
        # Add your real debloat code here
    }
    if ($chkDisableTelemetry.IsChecked) {
        Write-Host "Would disable telemetry here"
        # Add your real debloat code here
    }
    if ($chkRemoveOnedrive.IsChecked) {
        Write-Host "Would remove OneDrive here"
        # Add your real debloat code here
    }

    [System.Windows.MessageBox]::Show("Debloat actions completed (demo).", "Done")
})

# Show the window
$window.ShowDialog() | Out-Null
