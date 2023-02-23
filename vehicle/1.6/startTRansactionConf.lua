-- START TRANSACTION CONF
-- This contains the field definition of the StartTransaction.conf PDU sent by the Central System to the Charge Point
-- in response to a StartTransaction.req PDU.
request = {
    -- This contains information about authorization status, expiry and parent id.
    idTagInfo = {
        -- 
        expiryDate = "",
        -- 
        parentIdTag = "idtoken",
        -- 
        status = {
            -- Identifier is allowed for charging.
            "accepted =",
            -- Identifier has been blocked. Not allowed for charging.
            "blocked",
            -- Identifier has expired. Not allowed for charging.
            "expired",
            -- Identifier is unknown. Not allowed for charging.
            "invalid",
            -- Identifier is already involved in another transaction and multiple transactions are not allowed.
            "concurrentTx"
        }
    },
    transactionId = 000
}