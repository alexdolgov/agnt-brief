// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.20;

/**
 * @title ICCTPTokenMessenger
 * @notice Interface for CCTP V2 TokenMessenger (depositForBurn and localMinter).
 * @custom:source https://github.com/circlefin/evm-cctp-contracts/blob/4061786a5726bc05f99fcdb53b0985599f0dbaf7/src/v2/TokenMessengerV2.sol
 * @custom:source https://github.com/circlefin/evm-cctp-contracts/blob/4061786a5726bc05f99fcdb53b0985599f0dbaf7/src/v2/BaseTokenMessenger.sol#L99
 */
interface ICCTPTokenMessenger {
    function localMinter() external view returns (address);

    function depositForBurn(
        uint256 amount,
        uint32 destinationDomain,
        bytes32 mintRecipient,
        address burnToken,
        bytes32 destinationCaller,
        uint256 maxFee,
        uint32 minFinalityThreshold
    ) external;
}
