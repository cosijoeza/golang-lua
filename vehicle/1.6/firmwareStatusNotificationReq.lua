-- FIRMWARE STATUS NOTIFICATION REQ

-- This contains the field definition of the FirmwareStatusNotifitacion.req PDU sent by the Charge Point to the
-- Central System.
request = {
    -- This contains the progress status of the firmware installation.
    status = {
        -- New firmware has been downloaded by Charge Point.
        downloaded = "",
        -- Charge point failed to download firmware.
        downloadedFailed = "",
        -- Firmware is being downloaded.
        downloading = "",
        -- Charge Point is not performing firmware update related tasks. Status Idle SHALL only be used as in a
        -- FirmwareStatusNotification.req that was triggered by a TriggerMessage.req
        idle = "",
        -- Installation of new firmware has failed
        installationFailed = "",
        -- Firmware is being installed.
        installing = "",
        -- New firmware has successfully been installed in charge point.
        installed = ""
    }
}