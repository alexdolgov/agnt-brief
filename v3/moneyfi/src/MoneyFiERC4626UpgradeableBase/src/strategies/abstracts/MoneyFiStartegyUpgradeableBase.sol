// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.20;

import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { Pausable } from "@openzeppelin/contracts/utils/Pausable.sol";
import { UUPSUpgradeable } from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { Context } from "@openzeppelin/contracts/utils/Context.sol";
import { ContextUpgradeable } from "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IMoneyFiStartegyUpgradeableBase } from "../../interfaces/IMoneyFiStartegyUpgradeableBase.sol";
import { DefaultAccessControlEnumerable } from "../../security/DefaultAccessControlEnumerable.sol";
import { MoneyFiERC4626UpgradeableBase } from "./MoneyFiERC4626UpgradeableBase.sol";

abstract contract MoneyFiStartegyUpgradeableBase is
    MoneyFiERC4626UpgradeableBase,
    DefaultAccessControlEnumerable,
    Pausable,
    IMoneyFiStartegyUpgradeableBase
{
    using Math for uint256;
    using SafeERC20 for IERC20;

    /*//////////////////////////////////////////////////////////////////////////
                                USER-FACING STORAGE
    //////////////////////////////////////////////////////////////////////////*/

    // Router address
    address public router;

    /*//////////////////////////////////////////////////////////////////////////
                                     CONSTRUCTOR
    //////////////////////////////////////////////////////////////////////////*/

    constructor() {
        _disableInitializers();
    }

    /*//////////////////////////////////////////////////////////////////////////
                                     MODIFIER
    //////////////////////////////////////////////////////////////////////////*/

    modifier onlyRouter() {
        if (msg.sender != router) {
            revert InvalidRouter();
        }
        _;
    }

    /// @dev Set the underlying asset contract. This must be an ERC20-compatible contract (ERC20 or ERC777).
    function _MoneyFiStartegyUpgradeableBase_init(IERC20 asset_, address router_) internal onlyInitializing {
        __MoneyFiERC4626UpgradeableBase_init(asset_);
        router = router_;
    }


    /*//////////////////////////////////////////////////////////////////////////
                        OVERRIDED WRITE FUNCTIONS
    //////////////////////////////////////////////////////////////////////////*/

    /// @dev Override _msgSender() function
    function _msgSender() internal view override(Context, ContextUpgradeable) returns (address) {
        return msg.sender;
    }

    /// @dev Override _msgData() function
    function _msgData() internal pure override(Context, ContextUpgradeable) returns (bytes calldata) {
        return msg.data;
    }

    /// @dev Override _contextSuffixLength() function
    function _contextSuffixLength() internal pure override(Context, ContextUpgradeable) returns (uint256) {
        return 0;
    }

    /// @dev Override _deposit() function - only router can deposit
    function _deposit(address caller, address receiver, uint256 assets, uint256 shares) internal override onlyRouter {
        super._deposit(caller, receiver, assets, shares);
    }

    /// @dev Override _withdraw() function - only router can withdraw
    function _withdraw(
        address caller,
        address receiver,
        address owner,
        uint256 assets,
        uint256 shares
    )
        internal
        override
        onlyRouter
    {
        if (caller != owner && caller != router) {
            _spendAllowance(owner, caller, shares);
        }

        // If ASSET is ERC777, `transfer` can trigger a reentrancy AFTER the transfer happens through the
        // `tokensReceived` hook. On the other hand, the `tokensToSend` hook, that is triggered before the transfer,
        // calls the vault, which is assumed not malicious.
        //
        // Conclusion: we need to do the transfer after the burn so that any reentrancy would happen after the
        // shares are burned and after the assets are transferred, which is a valid state.

        _burn(owner, shares);
        SafeERC20.safeTransfer(ASSET, receiver, assets);

        emit Withdraw(caller, receiver, owner, assets, shares);
    }

    /// @dev Only router can transfer LP strategy asset
    function _update(address from, address to, uint256 value) internal override onlyRouter {
        super._update(from, to, value);
    }

    /// @dev Re calculate user's share when claim reward
    function _reCalculateShare(address userAddress, uint256 curAsset) internal {
        uint256 curUserShare = balanceOf(userAddress);
        uint256 newShare = _convertToShares(curAsset, Math.Rounding.Floor);

        _burn(userAddress, curUserShare);
        _mint(userAddress, newShare);
    }

    /// @dev Internal hook triggered before deposit override from MoneyFiERC4626UpgradeableBase
    function beforeDeposit(uint256 assets, bytes memory) internal virtual override returns (uint256) {
        return assets;
    }

}
