// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.10;

import { ERC20 } from "solady/tokens/ERC20.sol";

interface ISwapper {
    error OnlyVault();
    error CallFailed();

    /// @notice Immutable address of the vault allowed to execute swaps on this contract.
    function VAULT() external view returns (address);

    /// @notice Expects the immutable `VAULT` address to forward it `amountIn` of `assetIn`, then proceeds
    /// to make arbitrary call(s) encoded in `params` before sending this contract's full balance
    /// of `assetOut` to the vault.
    /// @dev Intended for use in completing swaps.
    /// @return amountOut The amount of `assetOut` returned to the `VAULT` by this contract.
    function executeSwap(
        ERC20 assetIn,
        uint256 amountIn,
        ERC20 assetOut,
        bytes calldata params
    ) external returns (uint256 amountOut);
}
