// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

interface IDomfiVerifier {
    struct VerifierResponse {
        uint64 timestamp;
        int192 price;
        bytes32 reportFeedId;
    }

    event AuthorizedSignerAdded(address indexed newAddr);
    event AuthorizedSignerRemoved(address indexed newAddr);

    error WrongParams();
    error NotGov(address caller);
    error NotAuthorizedSigner(address caller);
    error AlreadyAuthorizedSigner(address signer);

    function isAuthorizedSigner(address signer) external view returns (bool);
    function verify(bytes calldata signedReport) external returns (VerifierResponse memory);

    // only gov
    function registerAuthorizedSigner(address signerAddress) external;
    function unregisterAuthorizedSigner(address signerAddress) external;
    function registerAuthorizedSignersArray(address[] calldata signerAddresses) external;
    function unregisterAuthorizedSignersArray(address[] calldata signerAddresses) external;
}
