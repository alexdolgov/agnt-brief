// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.25;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "./common/Constants.sol";
import "./vault/VaultYieldBasic.sol";

/**
 * @title Vault contract
 * @author Naturelab
 * @dev This contract is the logical implementation of the vault,
 * and its main purpose is to provide users with a gateway for depositing
 * and withdrawing funds and to manage user shares.
 */
contract Vault is VaultYieldBasic {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    string public constant VERSION = "1.0";

    mapping(address => bool) public whiteList;

    event AddWhiteList(address user);
    event RemoveWhiteList(address user);

    constructor(uint256 _minMarketCapacity) VaultYieldBasic(1e8, _minMarketCapacity) {}

    /**
     * @dev  Ensure that this method is only called by authorized portfolio managers.
     */
    modifier onlyWhiteList() {
        if (!whiteList[msg.sender]) revert Errors.CallerNotWhiteList();
        _;
    }

    function addWhiteList(address _user) external onlyOwner {
        if (_user == address(0) || whiteList[_user]) revert Errors.UnSupportedOperation();
        whiteList[_user] = true;

        emit AddWhiteList(_user);
    }

    function removeWhiteList(address _user) external onlyOwner {
        if (!whiteList[_user]) revert Errors.UnSupportedOperation();
        whiteList[_user] = false;

        emit RemoveWhiteList(_user);
    }

    /**
     * @dev Optional deposit function allowing deposits in different token types.
     * @param _token The address of the token to deposit.
     * @param _assets The amount of assets to deposit.
     * @param _receiver The address of the receiver of the shares.
     * @param _referral  Address of the referrer.
     * @return shares_ The amount of shares issued.
     */
    function optionalDeposit(address _token, uint256 _assets, address _receiver, address _referral)
        public
        payable
        override
        nonReentrant
        onlyWhiteList
        whenNotPaused
        returns (uint256 shares_)
    {
        if (vaultParams.maxPriceUpdatePeriod < block.timestamp - vaultState.lastUpdatePriceTime) {
            revert Errors.PriceNotUpdated();
        }
        if (!tokens.contains(_token)) revert Errors.UnsupportedToken();
        uint256 maxAssets = maxDeposit(_receiver);
        if (_assets > maxAssets) {
            revert ERC4626ExceededMaxDeposit(_receiver, _assets, maxAssets);
        }
        shares_ = previewDeposit(_assets);
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _assets);
        _mint(_receiver, shares_);

        emit OptionalDeposit(msg.sender, _token, _assets, _receiver, _referral);
    }

    /**
     * @dev The deposit method of ERC4626, with the parameter being the amount of assets.
     * @param _assets The amount of asset being deposited.
     * @param _receiver The recipient of the share tokens.
     * @return shares_ The amount of share tokens obtained.
     */
    function deposit(uint256 _assets, address _receiver)
        public
        override
        nonReentrant
        onlyWhiteList
        whenNotPaused
        returns (uint256 shares_)
    {
        if (vaultParams.maxPriceUpdatePeriod < block.timestamp - vaultState.lastUpdatePriceTime) {
            revert Errors.PriceNotUpdated();
        }

        if (_assets == type(uint256).max) {
            _assets = IERC20(asset()).balanceOf(msg.sender);
        }
        shares_ = super.deposit(_assets, _receiver);
    }

    /**
     * @dev The deposit method of ERC4626, with the parameter being the amount of share tokens.
     * @param _shares The amount of share tokens to be minted.
     * @param _receiver The recipient of the share tokens.
     * @return assets_ The amount of assets consumed.
     */
    function mint(uint256 _shares, address _receiver)
        public
        override
        nonReentrant
        onlyWhiteList
        whenNotPaused
        returns (uint256 assets_)
    {
        if (vaultParams.maxPriceUpdatePeriod < block.timestamp - vaultState.lastUpdatePriceTime) {
            revert Errors.PriceNotUpdated();
        }

        assets_ = super.mint(_shares, _receiver);
    }
}
