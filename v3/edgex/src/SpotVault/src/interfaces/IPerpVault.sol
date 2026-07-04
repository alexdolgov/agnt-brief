// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.20;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

/// @title IPerpVault
/// @notice Interface for PerpVault contract
interface IPerpVault {
    /// @notice Returns the USDT token address
    function USDT_ADDRESS() external view returns (address);

    /// @notice Make a deposit to the Starkware Layer2, after converting funds to USDT.
    /// @param token The ERC20 token to convert from
    /// @param amount The amount in Wei to deposit.
    /// @param starkKey The starkKey of the L2 account to deposit into.
    /// @param positionId The positionId of the L2 account to deposit into.
    /// @param exchangeData Trade parameters for the exchange.
    function deposit(IERC20 token, uint256 amount, uint256 starkKey, uint256 positionId, bytes calldata exchangeData)
        external
        payable
        returns (uint256);

    /// @notice Withdraw ERC20 from this wallet using 2 signers.
    /// @param to the destination address to send an outgoing transaction
    /// @param amount the amount in Wei to be sent
    /// @param token the address of the erc20 token contract
    /// @param expireTime the number of seconds since 1970 for which this transaction is valid
    /// @param orderId the unique order id
    /// @param allSigners all signer who sign the tx
    /// @param signatures the signatures of tx
    function withdrawErc20(
        address to,
        uint256 amount,
        address token,
        uint256 expireTime,
        uint256 orderId,
        address[] memory allSigners,
        bytes[] memory signatures
    ) external;
}
