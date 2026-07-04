// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.20;

/**
 * @title ICCTPMinterView
 * @notice View interface for CCTP minter burn limit lookup.
 * @custom:source https://github.com/circlefin/evm-cctp-contracts/blob/4061786a5726bc05f99fcdb53b0985599f0dbaf7/src/roles/TokenController.sol#L69
 */
interface ICCTPMinterView {
    function burnLimitsPerMessage(address token) external view returns (uint256);
}
