-- STATUS NOTIFICATION REQ
-- A Charge Point sends a notification to the Central System to inform the Central System about a status change or
-- an error within the Charge Point.
request = {
    -- The id of the connector for which the status is reported.
    conectorId = 00,
    -- This contains the error code reported by the Charge Point.
    errorCode = {
        -- Failure to lock or unlock connector.
        "connectorLockFailure",
        -- This is not a real error in the sense that the Charge Point doesn’t need to go to the faulted state.
        "evCommunicationError",
        -- Ground fault circuit interrupter has been activated.
        "groundFailure",
        -- Temperature inside Charge Point is too high.
        "highTemperature",
        -- Error in internal hard- or software component.
        "internalError",
        -- The authorization information received from the Central System is in conflict with the LocalAuthorizationList.
        "localListConflict",
        -- No error to report.
        "noError",
        -- Other type of error. More information in vendorErrorCode.
        "OtherError",
        -- Over current protection device has tripped.
        "OverCurrentFailure",
        -- Voltage has risen above an acceptable level.
        "OverVoltage",
        -- Failure to read electrical/energy/power meter.
        "PowerMeterFailure",
        -- Failure to control power switch.
        "PowerSwitchFailure",
        -- Failure with idTag reader.
        "ReaderFailure",
        -- Unable to perform a reset.
        "ResetFailure",
        -- Voltage has dropped below an acceptable level.
        "UnderVoltage",
        -- Wireless communication device reports a weak signal.
        "WeakSignal"
    },
    info = "",
    status = {
        -- When a Connector becomes available for a new user (Operative)
        "Available",
        -- When a Connector becomes no longer available for a new user but there is no ongoing Transaction (yet).
        "Preparing",
        -- When the contactor of a Connector closes, allowing the vehicle to charge.
        "Charging",
        -- When the EV is connected to the EVSE but the EVSE is not offering energy to the EV, e.g. due to a smart charging restriction,
        -- local supply power constraints, or as the result of StartTransaction.conf indicating that charging is not allowed etc.
        "SuspendedEVSE",
        -- When the EV is connected to the EVSE and the EVSE is offering energy but the EV is not taking any energy.
        "SuspendedEV",
        "Finishing",
        "Reserved",
        "Unavailable",
        "Faulted"
    },

    timestamp = "",
    vendorId = "",
    vendorErrorCode = ""
}