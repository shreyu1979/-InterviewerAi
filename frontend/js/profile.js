/* =========================================
   tobeHired PROFILE
   Loads profile data from the backend and
   updates name + bio from the Edit Profile UI.
========================================= */

const PROFILE_API_URL = "http://localhost:5000/api/profile";

let profileUser = null;

function setText(id, value) {
    const element = document.getElementById(id);
    if (element) element.innerText = value ?? "";
}

function updateProfileUI(user) {
    const name = (user.name || "User").trim();
    const email = user.email || "";
    const bio = user.bio || "Add a short introduction about yourself.";

    setText("dashboardUserName", name);
    setText("profileAvatarInitial", name.charAt(0).toUpperCase() || "U");
    setText("profileName", name);
    setText("profileEmail", email);
    setText("profileDetailName", name);
    setText("profileDetailEmail", email);
    setText("profileDetailBio", bio);
}

function showProfileMessage(message, type = "success") {
    const box = document.getElementById("profileMessage");
    if (!box) return;

    box.className = `profile-message ${type} show`;
    box.innerHTML = `
        <i class="bi ${type === "success" ? "bi-check-circle-fill" : "bi-exclamation-circle-fill"}"></i>
        <span>${message}</span>
    `;

    clearTimeout(window.profileMessageTimer);
    window.profileMessageTimer = setTimeout(() => {
        box.classList.remove("show");
    }, 3500);
}

function getLocalUser() {
    return authService.getCurrentUser();
}

async function loadProfileFromBackend() {
    const currentUser = getLocalUser();

    if (!currentUser) {
        window.location.href = "auth.html";
        return;
    }

    profileUser = { ...currentUser };
    updateProfileUI(profileUser);

    try {
        const response = await fetch(
            `${PROFILE_API_URL}?email=${encodeURIComponent(currentUser.email)}`,
            { method: "GET", headers: { "Accept": "application/json" } }
        );

        if (!response.ok) throw new Error("Profile request failed");

        const data = await response.json();
        const backendUser = data.user || data.profile || data;

        profileUser = {
            ...profileUser,
            ...backendUser,
            email: backendUser.email || currentUser.email
        };

        updateProfileUI(profileUser);

        // Keep the navbar/session data in sync with the database.
        localStorage.setItem("currentUser", JSON.stringify({
            name: profileUser.name || currentUser.name,
            email: profileUser.email || currentUser.email,
            bio: profileUser.bio || ""
        }));
    } catch (error) {
        console.warn("Backend profile load failed. Showing saved session data.", error);
    }
}

function openEditProfile() {
    const modal = document.getElementById("editProfileModal");
    if (!modal || !profileUser) return;

    document.getElementById("editProfileName").value = profileUser.name || "";
    document.getElementById("editProfileBio").value = profileUser.bio || "";
    updateBioCounter();

    modal.classList.add("show");
    modal.setAttribute("aria-hidden", "false");
    document.body.classList.add("profile-modal-open");
    setTimeout(() => document.getElementById("editProfileName")?.focus(), 120);
}

function closeEditProfile() {
    const modal = document.getElementById("editProfileModal");
    if (!modal) return;

    modal.classList.remove("show");
    modal.setAttribute("aria-hidden", "true");
    document.body.classList.remove("profile-modal-open");
}

function updateBioCounter() {
    const bio = document.getElementById("editProfileBio");
    const counter = document.getElementById("bioCharacterCount");
    if (bio && counter) counter.innerText = bio.value.length;
}

async function saveProfile(event) {
    event.preventDefault();

    const currentUser = getLocalUser();
    if (!currentUser) {
        window.location.href = "auth.html";
        return;
    }

    const name = document.getElementById("editProfileName").value.trim();
    const bio = document.getElementById("editProfileBio").value.trim();
    const button = document.getElementById("saveProfileBtn");

    if (!name) {
        showProfileMessage("Name cannot be empty.", "error");
        return;
    }

    const originalButtonHTML = button.innerHTML;
    button.disabled = true;
    button.innerHTML = `<span class="spinner-border spinner-border-sm me-2"></span>Saving...`;

    try {
        const response = await fetch(PROFILE_API_URL, {
            method: "PUT",
            headers: {
                "Content-Type": "application/json",
                "Accept": "application/json"
            },
            body: JSON.stringify({
                email: currentUser.email,
                name,
                bio
            })
        });

        if (!response.ok) {
            let serverMessage = "Unable to update your profile.";
            try {
                const errorData = await response.json();
                serverMessage = errorData.message || serverMessage;
            } catch (_) {}
            throw new Error(serverMessage);
        }

        const data = await response.json();
        const updatedUser = data.user || data.profile || data;

        profileUser = {
            ...profileUser,
            ...updatedUser,
            name: updatedUser.name || name,
            bio: updatedUser.bio ?? bio,
            email: updatedUser.email || currentUser.email
        };

        updateProfileUI(profileUser);

        localStorage.setItem("currentUser", JSON.stringify({
            name: profileUser.name,
            email: profileUser.email,
            bio: profileUser.bio || ""
        }));

        closeEditProfile();
        showProfileMessage("Profile updated successfully.", "success");
    } catch (error) {
        console.error("Profile update error:", error);
        showProfileMessage(error.message || "Could not update profile. Check that the backend is running.", "error");
    } finally {
        button.disabled = false;
        button.innerHTML = originalButtonHTML;
    }
}

document.addEventListener("DOMContentLoaded", function () {
    loadProfileFromBackend();

    document.getElementById("openEditProfileBtn")?.addEventListener("click", openEditProfile);
    document.getElementById("closeEditProfileBtn")?.addEventListener("click", closeEditProfile);
    document.getElementById("cancelEditProfileBtn")?.addEventListener("click", closeEditProfile);
    document.getElementById("closeEditProfileBackdrop")?.addEventListener("click", closeEditProfile);
    document.getElementById("editProfileForm")?.addEventListener("submit", saveProfile);
    document.getElementById("editProfileBio")?.addEventListener("input", updateBioCounter);

    document.addEventListener("keydown", function (event) {
        if (event.key === "Escape") closeEditProfile();
    });
});
