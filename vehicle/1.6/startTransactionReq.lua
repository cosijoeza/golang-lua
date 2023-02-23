-- START TRANSACTION REQ 

-- This section contains the field definition of the StartTransaction.req PDU sent by the Charge Point to the Central
-- System.
request = {
    -- This identifies which connector of the Charge Point is used.
    connectorId = "",
    -- This contains the identifier for which a transaction has to be started.
    idTag = "idToken",
    -- This contains the meter value in Wh for the connector at start of the transaction.
    meterStart = "",
    -- This contains the id of the reservation that terminates as a result of this transaction.
    reservationId = "",
    -- This contains the date and time on which the transaction is started.
    timestamp = "dateTime"
}