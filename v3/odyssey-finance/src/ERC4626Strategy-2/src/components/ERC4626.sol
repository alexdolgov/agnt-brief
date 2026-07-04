// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {Helpers} from "src/libraries/Helpers.sol";
import {Address} from "@openzeppelin/contracts/utils/Address.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

/// @title Component delegate calls wrapper
library ERC4626DelegateCalls {
    using Address for address;

    function delegateDeposit(ERC4626 erc4626_, IERC4626 vault_, uint256 assets_) internal returns (uint256 _shares) {
        bytes memory _ret = address(erc4626_).functionDelegateCall(
            abi.encodeWithSelector(ERC4626.deposit.selector, vault_, assets_)
        );
        return abi.decode(_ret, (uint256));
    }

    function delegateMint(ERC4626 erc4626_, IERC4626 vault_, uint256 shares_) internal returns (uint256 _assets) {
        bytes memory _ret = address(erc4626_).functionDelegateCall(
            abi.encodeWithSelector(ERC4626.mint.selector, vault_, shares_)
        );
        return abi.decode(_ret, (uint256));
    }

    function delegateRedeem(ERC4626 erc4626_, IERC4626 vault_, uint256 shares_) internal returns (uint256 _assets) {
        bytes memory _ret = address(erc4626_).functionDelegateCall(
            abi.encodeWithSelector(ERC4626.redeem.selector, vault_, shares_)
        );
        return abi.decode(_ret, (uint256));
    }

    function delegateWithdraw(ERC4626 erc4626_, IERC4626 vault_, uint256 assets_) internal returns (uint256 _shares) {
        bytes memory _ret = address(erc4626_).functionDelegateCall(
            abi.encodeWithSelector(ERC4626.withdraw.selector, vault_, assets_)
        );
        return abi.decode(_ret, (uint256));
    }
}

/// @title ERC4626 vault component
contract ERC4626 {
    using SafeERC20 for IERC20;

    error AmountIsZero();
    error AddressIsNull();

    /// @notice Deposit
    /// @param vault_ The ERC4626 vault
    /// @param assets_ The amount of assets to deposit
    /// @return _shares The amount of shares received
    function deposit(IERC4626 vault_, uint256 assets_) external returns (uint256 _shares) {
        IERC20 _asset = IERC20(vault_.asset());
        assets_ = Helpers.amountOrAllBalanceIfMax(_asset, assets_);

        if (assets_ == 0) revert AmountIsZero();

        _asset.forceApprove(address(vault_), assets_);
        _shares = vault_.deposit(assets_, address(this));
        _asset.forceApprove(address(vault_), 0);
    }

    /// @notice Mint
    /// @param vault_ The ERC4626 vault
    /// @param shares_ The amount of shares to mint
    /// @return _assets The amount of assets minted
    function mint(IERC4626 vault_, uint256 shares_) external returns (uint256 _assets) {
        IERC20 _asset = IERC20(vault_.asset());
        _assets = vault_.previewMint(shares_);
        _asset.forceApprove(address(vault_), _assets);
        vault_.mint(shares_, address(this));
        _asset.forceApprove(address(vault_), 0);
    }

    /// @notice Redeem
    /// @param vault_ The ERC4626 vault
    /// @param shares_ The amount of shares to redeem
    /// @return _assets The amount of assets received
    function redeem(IERC4626 vault_, uint256 shares_) external returns (uint256 _assets) {
        shares_ = Helpers.amountOrAllBalanceIfMax(vault_, shares_);
        _assets = vault_.redeem(shares_, address(this), address(this));
    }

    /// @notice Withdraw
    /// @param vault_ The ERC4626 vault
    /// @param assets_ The amount of assets to withdraw
    /// @return _shares The amount of shares burnt
    function withdraw(IERC4626 vault_, uint256 assets_) external returns (uint256 _shares) {
        if (assets_ == type(uint256).max) {
            assets_ = vault_.convertToAssets(vault_.balanceOf(address(this)));
        }

        if (assets_ == 0) revert AmountIsZero();
        _shares = vault_.withdraw(assets_, address(this), address(this));
    }
}
