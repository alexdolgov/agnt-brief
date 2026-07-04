// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.8;

// From prev version
interface IWhitelist {
    function signaturesRequiredForValidation() external view returns (uint8);

    function registry() external view returns (address);

    function setSignaturesRequiredForValidation(uint8 signaturesRequiredForValidation_) external;

    function isAddressWhitelisted(
        bytes calldata dataToSign_,
        bytes[] calldata signatures_,
        address[] calldata signers_
    ) external view returns (bool);

    event SetSignaturesRequiredForValidation(address indexed sender, uint8 signaturesRequiredForValidation);
}
