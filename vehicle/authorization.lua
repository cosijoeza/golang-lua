AuthorizeRequest = {
    certificate = ""
    idToken = IdTokenType,
    iso15118CertificateHashData = OCSPRequestDataType
};
AuthorizeResponse = {
    certificateStatus = 
    IdTokenInfo = 
}

IdTokenType = {
    idToken = "",
    type = IdTokenEnumType,
    additionalInfo = AdditionallInfoType
};

IdTokenEnumType = {
    central = "",
    eMAID = "",
    ISO14443 = "",
    ISO15693 = "",
    KeyCode = "",
    Local = "",
    MacAddress = "",
    NoAuthorization = ""
};
OCSPRequestDataType = {
    hashAlgorithm = HashAlgorithmEnumType,
    issuerNameHash = "",
    issuerKeyHash = "",
    serialNumber = "",
    responderURL = ""
}
AdditionallInfoType = {
    additionalIdToken = "",
    type = ""
};

HashAlgorithmEnumType = {
    SHA256 = "",
    SHA384 = "",
    SHA512 = ""
};
AuthorizeCertificateStatusEnumType{
    Accepted = "",
    SignatureError = "",
    CertificateExpired = "",
    CertificateRevoked = "",
    NoCertificateAvailable = "" 
};
