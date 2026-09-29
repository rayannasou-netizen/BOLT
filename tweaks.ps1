# ============================================================
#  Windows Tweak & Optimization Suite - Launcher
#  Usage:
#    iwr -useb https://raw.githubusercontent.com/rayannasou-netizen/BOLT/main/launch.ps1 | iex
#
#  Before using, replace USER and REPO with your GitHub username
#  and repository name. If using GitHub Pages with a custom domain,
#  replace the entire URL below.
# ============================================================

# >>> REPLACE THIS URL WITH YOUR GITHUB PAGES URL <<<
$AppUrl = "https://rayannasou-netizen.github.io/BOLT/"

$Banner = @"
  _      _ _____ __  __   ____                   _   _       _ _
 | |    (_)  ___|  \/  | | __ )  __ _ ___  ___  | | | |_ __ (_) |_
 | |    | | |_  | |\/| | |  _ \ / _  / __|/ _ \ | | | | '_ \| | __|
 | |___ | |  _| | |  | | | |_) | (_| \__ \  __/ | |_| | |_) | | |_
 |_____||_|_|   |_|  |_| |____/ \__,_|___/\___|  \___/| .__/|_|\__|
                                                      |_|
"@

Write-Host $Banner -ForegroundColor Cyan
Write-Host ""
Write-Host "  Windows Tweak & Optimization Suite" -ForegroundColor White
Write-Host "  -----------------------------------" -ForegroundColor DarkGray
Write-Host ""
Write-Host "  يفتح التطبيق في المتصفح الافتراضي..." -ForegroundColor Yellow
Write-Host ""

# Open the web app in the default browser
try {
    Start-Process $AppUrl
    Write-Host "  [OK] تم فتح التطبيق في المتصفح" -ForegroundColor Green
} catch {
    Write-Host "  [!] تعذر فتح المتصفح تلقائياً" -ForegroundColor Red
    Write-Host "  افتح الرابط يدوياً: $AppUrl" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "  إذا لم يفتح المتصفح، انسخ الرابط التالي:" -ForegroundColor DarkGray
Write-Host "  $AppUrl" -ForegroundColor Cyan
Write-Host ""
Read-Host "  اضغط Enter للإغلاق"
