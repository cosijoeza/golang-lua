-- BOOT NOTIFICATION CONF

-- This contains the field definition of the BootNotification.conf PDU sent by the Central System to the Charge Point
-- in response to a BootNotification.req PDU.
request = {
    -- This contains the Central System’s current time.
    currentTime = "",
    -- When RegistrationStatus is Accepted, this contains the heartbeat interval in seconds. If the Central System returns something other than
    -- Accepted, the value of the interval field indicates the minimum wait time before
    -- sending a next BootNotification request.
    interval = "",
    -- This contains whether the Charge Point has been registered within the System Central.
    status = {
        -- Charge point is accepted by Central System.
        accepted = "",
        -- Central System may send messages to retrieve information or prepare the Charge Point.
        pending = "",
        -- Charge point is not accepted by Central System. This may happen when the Charge Point id is not known by Central System.
        reject = ""
    }

}