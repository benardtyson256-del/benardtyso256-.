# Driver Connect Uganda — Android starter

This is a starter Android WebView project and GitHub Actions workflow. It can build a **debug/test APK**; it is not a finished production service.

## Build from an Android phone
1. Create a private GitHub repository named `driver-connect-uganda`.
2. Upload the **contents** of this folder, including the hidden `.github/workflows/android-apk.yml` folder, to the repository's `main` branch.
3. Open the repository's **Actions** tab.
4. Select **Build Driver Connect Uganda APK** and tap **Run workflow** (or push a commit to `main` to trigger it).
5. Wait for the workflow to finish successfully. Open the run and download the artifact `driver-connect-uganda-debug-apk`.
6. Extract the downloaded artifact ZIP. The file inside is `app-debug.apk`. Install it on your Android phone.

## Important limitations
- The included screens are a starter demonstration. The forms do not yet save data.
- The SQL file is only a starting schema. Secure row-level security policies, admin authentication, verification workflows, and matching still need implementation and testing.
- Do not use this APK to collect real customer or driver data yet.
- Never put a Supabase `service_role` key, admin password, or other secret in the app or GitHub repository.
- A debug APK is for testing, not a signed Play Store release.
