-- STOP TRANSACTION

request = {
    idTag = "idtoken",
    meterStop = "",
    timestamp = "",
    transactionId = "",
    reason = {
        "DeAuthorized",
        "EmergencyStop",
        "EVDisconnected",
        "HardReset",
        "Local",
        "Other",
        "PowerLoss",
        "Reboot",
        "Remote",
        "SoftReset",
        "UnlockCommand"
    },
    transactionData = "METERVALUE PENDING"
}