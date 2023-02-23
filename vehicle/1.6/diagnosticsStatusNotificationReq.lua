-- DIAGNOSTICS STATUS NOTIFICATION

-- This contains the field definition of the DiagnosticsStatusNotification.req PDU sent by the Charge Point to the
-- Central System
request = {
    -- This contains the status of the diagnostics upload.
    status = {
        -- Charge Point is not performing diagnostics related tasks.
        idle = "",
        -- Diagnostics information has been uploaded.
        upload = "",
        -- Uploading of diagnostics failed.
        uploadFailed = "",
        -- File is being uploaded.
        uploading = ""
    }
}