// SPDX-License-Identifier: AGPL-3.0
pragma solidity 0.8.13;

import 'lib/openzeppelin-contracts/contracts/utils/introspection/IERC165.sol';

/**
 * @notice IAdapter
 * @author Atlendis Labs
 * @notice Interface Adapter contract
 *         An Adapter is associated to a yield provider.
 *         It implement the logic necessary to deposit, withdraw and compute rewards
 *         the custodian will get when managing its holdings
 */
interface IAdapter is IERC165 {

    
    function previewRewards() external returns (uint256);

    /**
     * @notice Verifies that the yield provider associated with
     * the adapter supports the custodian token
     **/
    function supportsToken(address yieldProvider) external returns(bool);

    /**
     * @notice Deposit tokens to the yield provider
     * Collects pending rewards before depositing
     * @param amount Amount to deposit
     **/
    function deposit(uint256 amount) external;

    /**
     * @notice Withdraw tokens from the yield provider
     * Collects pending rewards before withdrawing
     * @param amount Amount to deposit
     **/
    function withdraw(uint256 amount) external;

    /**
     * @notice Updates the pending rewards accrued by the deposits
     **/
    function collectRewards() external returns (uint256);
}
