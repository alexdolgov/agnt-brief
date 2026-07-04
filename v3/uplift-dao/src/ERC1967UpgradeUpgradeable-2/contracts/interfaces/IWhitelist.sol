// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.4;

interface IWhitelist {
    event SetSignaturesRequiredForValidation(address indexed sender, uint8 signaturesRequiredForValidation);

    function signaturesRequiredForValidation() external view returns (uint8);

    function registry() external view returns (address);

    function setSignaturesRequiredForValidation(uint8 _signaturesRequiredForValidation) external;

    function isAddressWhitelisted(
        bytes calldata _dataToSign,
        bytes[] calldata _signatures,
        address[] calldata _signers
    ) external view returns (bool);
}
