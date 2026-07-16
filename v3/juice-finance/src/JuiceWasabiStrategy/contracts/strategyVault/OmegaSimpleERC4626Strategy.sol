// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { Errors } from "../libraries/Errors.sol";
import "../strategyVault/StrategyVault.sol";

/// @notice Strategy Vault that deposits the base asset into an underlying ERC4626 vault.
/// @dev It has no zapping functionality.
contract OmegaSimpleERC4626Strategy is StrategyVault {
    using SafeERC20 for IERC20;

    struct InitParams {
        address baseAsset;
        address vault;
        string name;
        string symbol;
    }

    IERC4626 public immutable vault;

    constructor(
        address protocolGovernor_,
        VaultParams memory vaultParams_,
        InitParams memory params
    )
        StrategyVault(
            BaseInitParams({
                protocolGovernor: protocolGovernor_,
                vaultName: params.name,
                vaultSymbol: params.symbol,
                baseAsset: params.baseAsset
            }),
            vaultParams_
        )
    {
        vault = IERC4626(params.vault);
        IERC20(_baseAsset).safeIncreaseAllowance(address(vault), type(uint256).max);
        IERC20(address(vault)).safeIncreaseAllowance(address(vault), type(uint256).max);
    }

    function asset() public view returns (address) {
        return address(_baseAsset);
    }

    function previewDeposit(uint256 assetAmount) public view override returns (uint256 minMintAmount) {
        uint256 fee = (ud(assetAmount) * _vaultParams.depositFee).unwrap();
        return vault.previewDeposit(assetAmount - fee);
    }

    function previewWithdraw(uint256 shareAmount) public view override returns (uint256 minWithdrawAmount) {
        return vault.previewRedeem(shareAmount);
    }

    function _deposit(
        uint256 assets,
        bytes memory,
        address recipient
    )
        internal
        virtual
        override
        returns (uint256 receivedShares)
    {
        receivedShares = vault.deposit(assets, address(this));
        _mint(recipient, receivedShares);
    }

    function _withdraw(
        address caller,
        uint256 shares,
        bytes memory,
        address recipient
    )
        internal
        override
        returns (uint256 receivedAssets)
    {
        _burn(caller, shares);
        receivedAssets = vault.redeem(shares, recipient, address(this));
    }

    /// @dev There is no need to normalize the value because it is denominated in lend asset.
    function getPositionValue(address account) public view virtual override returns (uint256 value) {
        uint256 balance = balanceOf(account);
        return previewWithdraw(balance);
    }
}
