AuthorizeRequest = {
    -- Optional. The X.509 certificated presented by EV and encoded in PEM format.
    certificate = "",
    -- Required. This contains the identifier that needs to be authorized.
    idToken = IdTokenType,
    -- Optional. Contains the information needed to verify the EV Contract Certificate via OCSP.
    iso15118CertificateHashData = OCSPRequestDataType
};

AuthorizeResponse = {
    -- Optional. Certificate status information. - if all certificates are valid: return 'Accepted'. - if one of the certificates was
    -- revoked, return 'CertificateRevoked'.
    certificateStatus = AuthorizeCertificateStatusEnumType, 
    -- Required. This contains information about authorization status, expiry and group id.
    IdTokenInfo = IdTokenInfo
};

IdTokenType = {
    -- Required. IdToken is case insensitive. Might hold the hidden id of an RFID tag, but can for example also
    -- contain a UUID.
    idToken = "",
    -- Required. Enumeration of possible idToken types.
    type = IdTokenEnumType,
    -- Optional. AdditionalInfo can be used to send extra information which can be validated by the CSMS in
    -- addition to the regular authorization with IdToken.
    additionalInfo = AdditionallInfoType
};

IdTokenEnumType = {
    --A centrally, in the CSMS (or other server) generated id (for example used for a remotely started transaction
    --that is activated by SMS). No format defined, might be a UUID.
    "central",
    --Electro-mobility account id as defined in ISO 15118
    "emaid",
    --ISO 14443 UID of RFID card. It is represented as an array of 4 or 7 bytes in hexadecimal representation.
    "iso14443",
    --ISO 15693 UID of RFID card. It is represented as an array of 8 bytes in hexadecimal representation.
    "iso15693",
    --User use a private key-code to authorize a charging transaction. For example: Pin-code.
    "keyCode",
    --A locally generated id (e.g. internal id created by the Charging Station). No format defined, might be a UUID
    "local_",
    "macAddress",
    --Transaction is started and no authorization possible. Charging Station only has a start button or mechanical
    --key etc. IdToken field SHALL be left empty.
    noAuthorization = ""
};
OCSPRequestDataType = {
    --Required. Used algorithms for the hashes provided.
    hashAlgorithm = HashAlgorithmEnumType,
    --Required. Hashed value of the Issuer DN (DistinguishedName).
    issuerNameHash = "",
    --Required. Hashed value of the issuers public key
    issuerKeyHash = "",
    --Required. The serial number of the certificate.
    serialNumber = "",
    --Required. This contains the responder URL (Caseinsensitive).
    responderURL = ""
}
AdditionallInfoType = {
    --Required. This field specifies the additional IdToken.
    additionalIdToken = "",
    --Required. This defines the type of the additionalIdToken. 
    --This is a custom type, so the implementation needs to be
    --agreed upon by all involved parties.
    type = ""
};

HashAlgorithmEnumType = {
    --SHA-256 hash algorithm.
    sha256 = "",
    --SHA-384 hash algorithm.
    sha384 = "",
    -- SHA-512 hash algorithm.
    sha512 = ""
};
AuthorizeCertificateStatusEnumType = {
    -- Positive response
    accepted = "",
    -- If the validation of the Security element in the message header failed.
    signatureError = "",
    -- If the OEMProvisioningCert in the CertificateInstallationReq, the Contract Certificate in the
    -- CertificateUpdateReq, or the ContractCertificate in the PaymentDetailsReq is expired.
    certificateExpired = "",
    -- Used when the SECC or CSMS matches the ContractCertificate contained in a CertificateUpdateReq or
    --PaymentDetailsReq with a CRL and the Contract Certificate is marked as revoked, OR when the SECC or
    --CSMS matches the OEM Provisioning Certificate contained in a CertificateInstallationReq with a CRL and the
    --OEM Provisioning Certificate is marked as revoked.
    --The revocation status can alternatively be obtained through an OCSP responder.
    certificateRevoked = "",
    -- If the new certificate cannot be retrieved from secondary actor within the specified timeout
    noCertificateAvailable = "",
    -- If the ContractSignatureCertChain contained in the CertificateInstallationReq message is not valid.
    certChainError = "",
    -- If the EMAID provided by EVCC during CertificateUpdateReq is not accepted by secondary actor.
    contractCancelled = ""
};
local random = math.random
local function uuid()
    local template ='xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'
    return string.gsub(template, '[xy]', function (c)
        local v = (c == 'x') and random(0, 0xf) or random(8, 0xb)
        return string.format('%x', v)
    end)
end

function initAuthorizeRequest()
    AuthorizeRequest["certificate"] = uuid()
    return AuthorizeRequest
end

test = initAuthorizeRequest()
print(test["certificate"])