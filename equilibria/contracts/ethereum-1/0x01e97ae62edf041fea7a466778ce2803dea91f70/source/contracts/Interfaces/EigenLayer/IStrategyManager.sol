// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "./IStrategy.sol";

interface IStrategyManager {
    /**
     * @notice Deposits `amount` of `token` into the specified `strategy`, with the resultant shares credited to `msg.sender`
     * @param strategy is the specified strategy where deposit is to be made,
     * @param token is the denomination in which the deposit is to be made,
     * @param amount is the amount of token to be deposited in the strategy by the depositor
     * @return shares The amount of new shares in the `strategy` created as part of the action.
     * @dev The `msg.sender` must have previously approved this contract to transfer at least `amount` of `token` on their behalf.
     * @dev Cannot be called by an address that is 'frozen' (this function will revert if the `msg.sender` is frozen).
     *
     * WARNING: Depositing tokens that allow reentrancy (eg. ERC-777) into a strategy is not recommended.  This can lead to attack vectors
     *          where the token balance and corresponding strategy shares are not in sync upon reentrancy.
     */
    function depositIntoStrategy(
        address strategy,
        address token,
        uint256 amount
    ) external returns (uint256 shares);

    /// @notice Returns the current shares of `user` in `strategy`
    function stakerStrategyShares(
        address user,
        address strategy
    ) external view returns (uint256 shares);

    /**
     * @notice Get all details on the depositor's deposits and corresponding shares
     * @return (depositor's strategies, shares in these strategies)
     */
    function getDeposits(
        address depositor
    ) external view returns (IStrategy[] memory, uint256[] memory);

    /// @notice Used by the DelegationManager to remove a Staker's shares from a particular strategy when entering the withdrawal queue
    function removeShares(
        address staker,
        address strategy,
        uint256 shares
    ) external;

    /// @notice Used by the DelegationManager to convert withdrawn shares to tokens and send them to a recipient
    function withdrawSharesAsTokens(
        address recipient,
        address strategy,
        uint256 shares,
        address token
    ) external;
}
