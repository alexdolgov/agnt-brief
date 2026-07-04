// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.27;

import "../../Errors/Errors.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../interfaces/IDelegateStrategy.sol";
import "../../LEZyVault/ILEZyVault.sol";

/// @title NonUnderlyingTokenTransferStrategy
/// @notice Delegate strategy that allows the vault to transfer non-underlying tokens to a specified address.
/// @dev Intended for recovering tokens held by the vault that are not the vault's underlying asset
///      (e.g. airdropped tokens or tokens sent to the vault by mistake).
///
///      OPERATIONAL REQUIREMENT — DEPLOYER RESPONSIBILITY:
///      The on-chain guard only prevents transferring `vault.asset()`. It does NOT prevent transferring
///      tokens that are actively held or relied upon by other deployed delegate strategies (e.g. USDC
///      held inside a Uniswap LP strategy). Deploying this contract with such a token would allow a
///      rebalance admin to drain funds that another strategy depends on, breaking its accounting and
///      potentially causing loss of funds.
///
///      Before deploying, the owner MUST verify that `_token` is not held or depended upon by any
///      active delegate strategy on the target vault. This contract has no visibility into other
///      strategies and cannot enforce this invariant at runtime.
contract NonUnderlyingTokenTransferStrategy is IDelegateStrategy {
    using SafeERC20 for IERC20;

    IERC20 public immutable token;
    address public immutable receiverAddress;

    /// @notice Deploys the strategy with a fixed token and receiver.
    /// @dev IMPORTANT: `_token` must not be held or relied upon by any active delegate strategy on
    ///      the target vault. The runtime check only guards against `vault.asset()`; there is no
    ///      protection against draining tokens that other strategies depend on.
    /// @param _token The ERC20 token to transfer. Must not be the zero address.
    /// @param _receiverAddress The recipient of transferred tokens. Must not be the zero address.
    constructor(IERC20 _token, address _receiverAddress) {
        if (address(_token) == address(0) || _receiverAddress == address(0))
            revert InvalidZeroInput();
        token = _token;
        receiverAddress = _receiverAddress;
    }

    /// @notice Transfers a non-underlying token held by the vault to a specified address.
    /// @dev Reverts if `token` is the vault's underlying asset to prevent accidental draining of vault funds.
    ///      Called via delegatecall from the vault, so `address(this)` is the vault address.
    /// @param amount The amount of tokens to transfer.
    function transferNonUnderlyingToken(uint256 amount) external {
        // Ensure the token being transferred is not the vault's underlying asset
        if (address(token) == ILEZyVault(address(this)).asset()) revert InvalidAsset();
        IERC20(token).safeTransfer(receiverAddress, amount);
    }

    /// @notice Returns the underlying value contributed by this strategy.
    /// @dev Always returns 0 as this strategy holds no positions and contributes no value.
    /// @return 0
    function underlyingValue(address) external view returns (uint256) {
        return 0;
    }
}
