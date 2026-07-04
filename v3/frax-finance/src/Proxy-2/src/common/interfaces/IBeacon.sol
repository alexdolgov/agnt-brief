// SPDX-License-Identifier: MIT
pragma solidity 0.8.30;

import {ContractType} from "../types/ContractType.sol";

/**
 * @dev Interface for Beacon contract
 */
interface IBeacon {
    /**
     * @dev Returns the implementation address of the Beacon contract
     * @return The implementation address
     */
    function implementation() external view returns (address);

    /**
     * @dev Returns the beacon name
     * @return The beacon name identifying this beacon/logic pair
     */
    function name() external view returns (string memory);

    /**
     * @dev Returns the contract type of this beacon
     * @return contractType The contract type as ContractType enum: NONE (invalid), ERC20Token, ERC721Token, ERC721SoulboundToken, WhitelistComplianceOracle
     */
    function contractType() external view returns (ContractType);
}
