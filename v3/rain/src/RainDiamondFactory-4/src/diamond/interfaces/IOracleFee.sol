// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IRainDeployer } from "../../interfaces/IRainDeployer.sol";

/**
 * @title IOracleFee
 * @author Rain Team
 * @notice Interface for the resolution facet.
 * @dev Defines the external functions for claiming rewards within the Diamond architecture.
 */
interface IOracleFee {
    /* ===================================== FUNCTIONS ===================================== */

    /**
     * @notice Calculates the oracle fixed fee denominated in the base token.
     * @dev Uses the provided token routing data to quote the equivalent amount
     *      of the base token for a given oracle fixed fee.
     * @param oracleFixedFee The oracle fixed fee amount denominated in USDT.
     * @param baseTokenAddress The address of the base token used for the fee payment.
     * @param tokenData The configuration data of the base token, including pool type,
     *        router addresses, and swap paths.
     * @return baseTokenFee The calculated oracle fixed fee amount in base token units.
     */
    function calculateBaseTokenOracleFixedFee(
        uint256 oracleFixedFee,
        address baseTokenAddress,
        IRainDeployer.TokenData calldata tokenData
    ) external returns (uint256);

    /**
     * @notice Swaps the base token oracle fixed fee to USDT.
     * @dev Swaps the entire balance of the base token held by this contract into USDT.
     *      Can only be called by the factory.
     * @param baseToken The address of the base token to be swapped.
     * @param tokenData The configuration data of the base token, including pool type,
     *        router addresses, and swap paths.
     */
    function swapOracleFixedFee(address baseToken, IRainDeployer.TokenData calldata tokenData) external;
}
