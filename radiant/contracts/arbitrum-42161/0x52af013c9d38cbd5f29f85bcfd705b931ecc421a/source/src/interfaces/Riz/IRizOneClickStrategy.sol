// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.8.12;

import { ILendingPool } from "@radiant-v2-core/interfaces/ILendingPool.sol";
import { IRizLendingPoolAddressesProvider } from "./IRizLendingPoolAddressesProvider.sol";

/**
 * @title IRizOneClickStrategy interface
 * @notice Interface for the RizOneClickStrategy.
 * @author Radiant
 * @dev implement this interface to develop a flashloan-compatible flashLoanReceiver contract
 *
 */
interface IRizOneClickStrategy {
    event LoopedMultiAsset(
        address indexed initiator, address providingAsset, address indexed leverageAsset, uint256 indexed totalDeposit
    );

    error Unauthorized();
    error InvalidArrayLength(uint256 expected, uint256 actual);
    error InvalidCollateralAsset();

    function executeOperation(
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata premiums,
        address initiator,
        bytes calldata params
    ) external returns (bool);

    function LENDING_POOL() external view returns (ILendingPool);
}
