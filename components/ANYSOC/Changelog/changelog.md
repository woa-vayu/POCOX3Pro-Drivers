## POCO X3 Pro BSP - Version 2408.1 (Chucky)

> [!NOTE]
> Higher thermals in Windows is currently expected and is not dangerous

<details>
  <summary>General information</summary>
  <p>
**Released:** 08/04/2024 11:00 PM UTC+2

**Quality:** Preview

You can view compatibility for this release, along with important information and what works, and what doesn't at this link: https://github.com/woa-vayu/POCOX3Pro-Guides/blob/main/Status-en.md
  </p>
</details>

<details>
  <summary>Important information</summary>
  <p>
- ⚠️ For users who are updating from an earlier release than version 2301.93, please reinstall.

- ⚠️ If you need dual boot, you will have to make your own image. Please follow this guidance: https://github.com/woa-vayu/POCOX3Pro-Guides/blob/main/InstallWindows-en/DualBoot.md

- ⚠️ You need to backup your original boot image for OTAs to work with Android. When you get an OTA, you will want to revert your boot image for the update to work, or you'll have to use an official OTA recovery package.
  </p>
</details>

---

_FFU images will be made available later this week_

---

[▶️ Install POCO X3 Pro UEFI and Drivers for Windows from scratch (Clean Installation)](https://github.com/woa-vayu/POCOX3Pro-Guides/blob/main/InstallWindows-en/InstallWindows.md)


[▶️ Update from an older version of POCO X3 Pro UEFI and Drivers (both got updated with v2408.1)](https://github.com/woa-vayu/POCOX3Pro-Guides/blob/main/Update-en/UpdateDriversAndUEFI.md)

---

### Clean Installation & Update Files

These files are to be used when clean installing Windows on your Surface Duo or updating an existing installation

<details>

<table>
<tr>
<td>Drivers File</td>
<td>UEFI File</td>
<td>Target Device</td>
<td>OS Version</td>
<td>Notes</td>
</tr>
<tr>
<td>

[POCOX3Pro-Drivers-v2408.1-Desktop.7z](https://github.com/woa-vayu/POCOX3Pro-Releases/releases/download/2408.1/POCOX3Pro-Drivers-v2408.1-Desktop.7z)
</td>
<td>

- [UEFI](https://github.com/woa-vayu/POCOX3Pro-Releases/releases/download/2408.1/POCO.X3.Pro.UEFI-v2408.1.img)
</td>
<td>POCO X3 Pro</td>
<td>Windows 10 Version 2004 and higher</td>
<td><details>

N/A
</details></td>
</tr>
</table>

#### If you are clean installing:

- Download the Driver File onto your Computer
- Extract it
- Connect your POCO X3 Pro to your computer in Mass Storage mode
- Double Tap on the `OfflineUpdater.cmd` file
- Enter the Drive Letter for the POCO X3 Pro Windows Partition (See This PC for knowing this)
- Wait til the processes finishes
- Reboot your device
- Boot the device using the new UEFI version linked alongside the Driver File above

#### If you are updating an existing installation:

- Download the Driver File onto your POCO X3 Pro
- Extract it
- Double Tap on the `OnlineUpdater.cmd` file
- Wait til the processes finishes
- Reboot your device
- Boot the device using the new UEFI version linked alongside the Driver File above

In case you're having issues/troubles updating within the OS on the device, you can always put your phone into mass storage, and use `OfflineUpdater.cmd` to update the drivers this way, and then use the new UEFI version linked alongside the Driver File above.

</details>

---

### Full Flash Update Files

We're providing FFU files on [Telegram FFU channel](https://t.me/woavayuffu)

Learn more about FFU files: [FFU Flashing Guide](https://github.com/woa-vayu/POCOX3Pro-Guides/blob/main/InstallWindows-en/FlashingFFU.md)

Unfortunately, FFU files for this very version are not yet available. Download the FFU Files from the previous release alongside the previous release UEFI or come back later to this page for when the files will be uploaded.

---

### Release notes

>[!NOTE]
>This release includes both UEFI packages and Driver packages

- Removes defaultinstall (primitive INF packages) as they are being phased out.

- Default Windows wallpaper now matches the OEM

- Resolves long-standing issues across various Windows versions.

- Adds minimal support for Windows 18363/18362. You need to use a secure boot disabled variant of the UEFI in order to boot these. We yet don't provide any suport for those Windows 10 builds.

- Addresses boot issues on the latest Windows 10 version (VB).

- Fixes broken Vulkan support in GPU driver.

- GPU driver now supports HEVC encoding.

---

- Please download ```POCOX3Pro-Drivers-v2408.1-Desktop.7z``` if you want drivers for POCO X3 Pro

---

<details>
  <summary>Known issues</summary>
  <p>
- The TPM driver is not working for Windows 10 18362/18363. A fix is being worked on for the next release.

- On device speakers are not functional.

- Dongles are not detected correctly when plugged into the USB Type-C port.

- Updating drivers may lead to weird configurations if done on old driver releases.

- MAC addresses do not reflect the real addresses asigned to the device.

- BitLocker drive encryption is not available.

- USB dongles that are not externally powered may not currently work.

- USB-C Billboard devices will not currently work.

- Physical device data is incorrect.

- Flipping the device is not smooth.

- Users upgrading from releases older than the April ones may want to clean install again.

- Booting Windows 10 18362/18363 with Secure Boot enabled is not currently supported and will result in a broken installation.

- Windows Recovery environment lacks drivers unless Windows has performed a Feature Update at least once.

  </p>
</details>

### Dual Boot Information

<details>

*Important!*: The Dual Boot images currently target the following Android OTA update versions from Microsoft. These images _can only be used_ on a phone that had as latest the following OTA versions from microsoft *even if you are currently running a custom android system image*. Using these images will work *with a custom Android System Image* but the device *bootloader and firmware* must be from the same Microsoft OTA version as shipped from the stock Microsoft Android Updates!

| Device Name   | Device Variant                          | Dual Boot Compatible with the following firmware/bootloader version only |
|---------------|-----------------------------------------|--------------------------------------------------------------------------|
| Surface Duo   | United States of America (GEN)          | 2022.902.48  (Latest OTA for Surface Duo (1st Gen) devices)              |
| Surface Duo   | United States of America (AT&T)         | 2022.902.48  (Latest OTA for Surface Duo (1st Gen) devices)              |
| Surface Duo   | Europe (EEA)                            | 2022.902.48  (Latest OTA for Surface Duo (1st Gen) devices)              |
| Surface Duo 2 | United States of America (mmWave)       | 2023.501.202 (Latest OTA for Surface Duo 2 devices)               |
| Surface Duo 2 | Europe (5G NR)                          | 2023.501.202 (Latest OTA for Surface Duo 2 devices)               |

Flashing these images on any other version may brick your phone or render touch unusable! Make backups of your original boot partitions and ALWAYS test before flashing permanently using "fastboot boot image.img"!.

If you do not currently run above firmware versions, please also follow https://github.com/woa-vayu/POCOX3Pro-Guides/blob/main/InstallWindows/DualBoot.md.

For more information on dual boot, manual steps on how to craft such image file, and how to flash it, and use it, please visit https://github.com/woa-vayu/POCOX3Pro-Guides/blob/main/InstallWindows/DualBoot.md.

We do not recommend inexperienced users without advanced knowledge of IT/Command prompts to do this ever. You may find it very hard and mess up your device easily if you do it wrong. Also important to note Android OTAs will not work anymore with a custom boot.img flashed onto the device and you will need to reflash your original backup for them to work or else, you'll be forced to recover with an OTA zip package from https://aka.ms/sri if one is even available for your current version or higher.

<details>
  <summary>Some examples about what above warning means for you when running custom operating systems on your surface duo and if you are willing to run dual boot images</summary>
  <p>
To clarify above bullet point

If for example you flashed the Pixel Experience Android 13 Android System Image on your Surface Duo, and previously you were running Microsoft Stock Android OTA version 2022.123.45, your device firmware and bootloader are still version 2022.123.45 and will not be compatible with these images targeting 2022.902.48

In another example, you flashed the Pixel Experience Android 13 Android System Image on your Surface Duo, and previously you were running Microsoft Stock Android OTA version 2022.902.48, your device firmware and bootloader are still version 2022.902.48 and you are compatible with these images.

You are currently running stock microsoft android version 2022.902.48; you are compatible

You are currently not running stock microsoft android version 2022.902.48; you are not compatible
  </p>
</details>

</details>

---

<details>
  <summary>How to offline update an existing Windows Desktop installation</summary>
  <p>
Please follow the steps detailed at https://github.com/woa-vayu/POCOX3Pro-Guides/blob/main/Update-en/UpdateDriversAndUEFI.md
  </p>
</details>

<details>
  <summary>How to install Windows Desktop on internal Storage</summary>
  <p>
Please follow the steps detailed at https://github.com/woa-vayu/POCOX3Pro-Guides
  </p>
</details>

<details>
  <summary>Bug reporting</summary>
  <p>
This release is a Preview release. Bug exists and may happen. If you notice a bug not present in the following bug list, please report them on our Telegram Group.
  </p>
</details>

---

Seems Faster(TM)

-- The DuoWoA authors
