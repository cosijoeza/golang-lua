-- BOOT NOTIFICATION REQ 

-- This contains the field definition of the BootNotification.req 
-- PDU sent by the Charge Point to the Central System.
bootNotification = {
    -- This contains a value that identifies the serial number of
    --the Charge Box inside the Charge Point.
    chargeBoxSerialNumber = "",
    -- This contains a value that identifies the model of the ChargePoint.
    chargePointModel = "",
    -- This contains a value that identifies the serial number of the Charge Point.
    chargePointSerialNumber = "",
    -- This contains a value that identifies the vendor of the ChargePoint.
    chargePointVendor = "",
    -- This contains the firmware version of the Charge Point.
    firmawareVersion = "",
    -- This contains the ICCID of the modem’s SIM card.
    iccid = "",
    -- This contains the IMSI of the modem’s SIM card.
    imsi = "",
    -- This contains the serial number of the main electrical meter of the Charge Point.
    meterSerialNumber = "",
    -- This contains the type of the main electrical meter of the Charge Point.
    meterType = ""
}