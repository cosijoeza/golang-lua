-- STOP TRANSACTION CONF
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
}