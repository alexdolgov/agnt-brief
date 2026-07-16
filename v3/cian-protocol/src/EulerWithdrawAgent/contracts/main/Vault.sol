// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./libraries/Errors.sol";
import "./common/Constants.sol";
import "./vault/VaultYieldBasic.sol";

/**
 * @title Vault contract
 * @author Naturelab
 * @dev This contract is the logical implementation of the vault,
 * and its main purpose is to provide users with a gateway for depositing
 * and withdrawing funds and to manage user shares.
 *
 */
contract Vault is VaultYieldBasic, Constants {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    string public constant VERSION = "1.0";

    constructor(uint256 _minMarketCapacity) VaultYieldBasic(1e18, _minMarketCapacity) {}

    function optionalDeposit(address _token, uint256 _assets, address _receiver, address _referral)
        public
        payable
        virtual
        override
        nonReentrant
        whenNotPaused
        returns (uint256 shares_)
    {
        if (!tokens.contains(_token)) revert Errors.UnsupportedToken();

        if (_assets == type(uint256).max) {
            _assets = IERC20(_token).balanceOf(msg.sender);
        }

        IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);

        uint256 maxAssets = maxDeposit(address(0));
        if (_assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(_receiver, _assets, maxAssets);
        }
        shares_ = previewDeposit(_assets);

        if (vaultParams.maxPriceUpdatePeriod < block.timestamp - vaultState.lastUpdatePriceTime) {
            revert Errors.PriceNotUpdated();
        }

        _mint(_receiver, shares_);

        emit OptionalDeposit(msg.sender, _token, _assets, _receiver, _referral);
    }
}
