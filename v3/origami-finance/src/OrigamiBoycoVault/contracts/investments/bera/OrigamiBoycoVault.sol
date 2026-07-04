pragma solidity ^0.8.19;
// SPDX-License-Identifier: AGPL-3.0-or-later
// Origami (investments/bera/OrigamiBoycoVault.sol)

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IOrigamiDelegated4626Vault } from "contracts/interfaces/investments/erc4626/IOrigamiDelegated4626Vault.sol";
import { IOrigamiBoycoManager } from "contracts/interfaces/investments/bera/IOrigamiBoycoManager.sol";
import { ITokenPrices } from "contracts/interfaces/common/ITokenPrices.sol";
import { IOrigamiErc4626 } from "contracts/interfaces/common/IOrigamiErc4626.sol";
import { OrigamiErc4626 } from "contracts/common/OrigamiErc4626.sol";
import { CommonEventsAndErrors } from "contracts/libraries/CommonEventsAndErrors.sol";
import { OrigamiMath } from "contracts/libraries/OrigamiMath.sol";

/**
 * @title Origami Boyco Vault
 * @notice The logic to allocate the assets is delegated to a manager
 */
contract OrigamiBoycoVault is
    OrigamiErc4626,
    IOrigamiDelegated4626Vault
{
    using SafeERC20 for IERC20;

    /// @inheritdoc IOrigamiDelegated4626Vault
    ITokenPrices public override tokenPrices;

    /// @dev The manager of deposits/withdrawals
    IOrigamiBoycoManager private _manager;

    constructor(
        address initialOwner_,
        string memory name_,
        string memory symbol_,
        IERC20 asset_,
        address tokenPrices_
    ) 
        OrigamiErc4626(initialOwner_, name_, symbol_, asset_)
    {
        tokenPrices = ITokenPrices(tokenPrices_);
    }

    /// @inheritdoc IOrigamiDelegated4626Vault
    function setManager(address newManager) external override onlyElevatedAccess {
        if (newManager == address(0)) revert CommonEventsAndErrors.InvalidAddress(address(0));
        emit ManagerSet(newManager);
        _manager = IOrigamiBoycoManager(newManager);
    }

    /// @inheritdoc IOrigamiDelegated4626Vault
    function setTokenPrices(address _tokenPrices) external override onlyElevatedAccess {
        if (_tokenPrices == address(0)) revert CommonEventsAndErrors.InvalidAddress(address(0));
        emit TokenPricesSet(_tokenPrices);
        tokenPrices = ITokenPrices(_tokenPrices);
    }

    /// @inheritdoc IERC4626
    function totalAssets() public view override(IERC4626, OrigamiErc4626) returns (uint256) {
        return _manager.totalAssets();
    }

    /// @inheritdoc IOrigamiErc4626
    function areDepositsPaused() public virtual override(IOrigamiErc4626, OrigamiErc4626) view returns (bool) {
        return _manager.areDepositsPaused();
    }

    /// @inheritdoc IOrigamiErc4626
    function areWithdrawalsPaused() public virtual override(IOrigamiErc4626, OrigamiErc4626) view returns (bool) {
        return _manager.areWithdrawalsPaused();
    }

    /// @inheritdoc IOrigamiDelegated4626Vault
    function manager() external override view returns (address) {
        return address(_manager);
    }

    /// @inheritdoc IOrigamiDelegated4626Vault
    function performanceFeeBps() external override pure returns (uint48) {
        return 0;
    }

    /// @dev Send new deposits into the manager
    function _depositHook(address caller, uint256 assets) internal override {
        SafeERC20.safeTransferFrom(_asset, caller, address(_manager), assets);
        _manager.deposit(assets);
    }

    /// @dev Pull assets from the manager and send to the receiver
    function _withdrawHook(
        uint256 assets,
        address receiver
    ) internal override {
        _manager.withdraw(assets, receiver);
    }

    /// @inheritdoc OrigamiErc4626
    function _maxWithdraw(
        address sharesOwner, 
        uint256 feeBps
    ) internal override view returns (uint256 maxAssets) {
        uint256 userAvailableAssets = super._maxWithdraw(sharesOwner, feeBps);

        // Cap the amount available to the actual assets available in the manager as of now.
        uint256 globalAvailableAssets = _manager.availableAssets();
        maxAssets = userAvailableAssets < globalAvailableAssets ? userAvailableAssets : globalAvailableAssets;
    }

    /// @inheritdoc OrigamiErc4626
    function _maxRedeem(
        address sharesOwner,
        uint256 feeBps
    ) internal override view returns (uint256 maxShares) {
        uint256 userAvailableShares = super._maxRedeem(sharesOwner, feeBps);

        // Cap the amount of shares available based on the actual assets available in the manager as of now.
        // Fees for this vault are always zero so no need to account for them.
        // Round up - since previewRedeem rounds that number of shares down into the assets.
        uint256 globalAvailableShares = _convertToShares(_manager.availableAssets(), OrigamiMath.Rounding.ROUND_UP);
        maxShares = userAvailableShares < globalAvailableShares ? userAvailableShares : globalAvailableShares;
    }
     
    /// @inheritdoc OrigamiErc4626
    function recoverToken(address token, address to, uint256 amount) external override onlyElevatedAccess {
        // The asset token is sent straight to the manager on deposit/withdraw - so it's acceptable to recover from here.
        emit CommonEventsAndErrors.TokenRecovered(to, token, amount);
        IERC20(token).safeTransfer(to, amount);
    }
}
