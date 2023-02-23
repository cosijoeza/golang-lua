-- METER VALUES

-- This contains the field definition of the MeterValues.req PDU 
-- sent by the Charge Point to the Central System.
request = {
    -- This contains a number (>0) designating a connector of the Charge
    -- Point.‘0’ (zero) is used to designate the main powermeter.
    connectorId = "",
    -- The transaction to which these meter samples are related.
    transactionId = "",
    -- The transaction to which these meter samples are related.
    meterValue = "PENDING"
}