// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

/**
 * @custom:version 7
 * @dev Interface of deprecated GNSTrading contract, used for state copy
 */
interface IGNSTrading_Prev {
    function delegations(address) external view returns (address);
}
