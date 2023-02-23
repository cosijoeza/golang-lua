-- AUTHORIZE CONF

--This contains the field definition of the Authorize.conf PDU sent by the Central System to the Charge Point in
--response to a Authorize.req PDU.
request = {
    idTagInfo = {
        expiryDate = "",
        parentIdTag = "",
        status = {
            -- Identifier is allowed for charging.
            "accepted = ",
            -- Identifier has been blocked. Not allowed for charging.
            "blocked",
            -- Identifier has expired. Not allowed for charging.
            "expired",
            -- Identifier is unknown. Not allowed for charging.
            "invalid",
            -- Identifier is already involved in another transaction and multiple transactions are not allowed.
            "concurrentTx"
    }
}