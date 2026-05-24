// SPDX-License-Identifier: MIT

pragma solidity 0.8.28;

import {Constants} from "./lib/Constants.sol";
import {Errors} from "./lib/Errors.sol";
import {IController} from "./interfaces/IController.sol";
import {IERC20Mintable} from "./interfaces/IERC20Mintable.sol";

import {IERC20} from "openzeppelin-contracts/contracts/interfaces/IERC20.sol";

import {ERC20Upgradeable} from "openzeppelin-contracts-upgradeable/contracts/token/ERC20/ERC20Upgradeable.sol";
import {ERC4626Upgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {AccessControlUpgradeable} from
    "openzeppelin-contracts-upgradeable/contracts/access/AccessControlUpgradeable.sol";
import {Math} from "openzeppelin-contracts/contracts/utils/math/Math.sol";

contract Vault is ERC4626Upgradeable, AccessControlUpgradeable {
    using Math for uint256;

    uint256 public constant BASIS_POINTS = 10_000;
    uint8 public constant DECIMALS_OFFSET = 12;

    /// @notice `Controller` contract pointer
    IController public _controller;

    /// @notice mock asset contract pointer
    IERC20Mintable public _mUSDC;

    function initialize(
        address USDC,
        address ownerAddress,
        address controller,
        address mUSDCAddress,
        string memory name,
        string memory symbol
    ) public initializer {
        __AccessControl_init();
        __ERC20_init(name, symbol);
        __ERC4626_init(IERC20(USDC));
        _controller = IController(controller);
        _mUSDC = IERC20Mintable(mUSDCAddress);
        _grantRole(DEFAULT_ADMIN_ROLE, ownerAddress);
        _grantRole(Constants.CONTROLLER_ROLE, controller);
        _setRoleAdmin(Constants.CONTROLLER_ROLE, DEFAULT_ADMIN_ROLE);
    }

    /// @notice get the address of the mock asset contract
    /// @return the address of the mock asset contract
    function mUSDC() external view returns (address) {
        return address(_mUSDC);
    }

    /// @notice get total AUM
    /// @return AUM
    function totalAssets() public view override(ERC4626Upgradeable) returns (uint256) {
        return _mUSDC.balanceOf(address(this));
    }

    /// @notice Gets the maximum amount that can be deposited.
    /// @return Maximum depositable amount
    function maxDeposit(address) public view override(ERC4626Upgradeable) returns (uint256) {
        (, uint256 totalDepositsInCurrentEpoch) = _controller._totalDeposits();

        return _controller._depositLimit() - totalDepositsInCurrentEpoch;
    }

    /// @notice Gets the maximum amount of shares that can be redeemed by an owner.
    /// @param owner Address of the owner.
    /// @return Maximum redeemable shares.
    function maxRedeem(address owner) public view override(ERC4626Upgradeable) returns (uint256) {
        uint256 availableForRedeem = _controller._redeemLimit() - _controller._totalRedeemRequests();
        uint256 balance = balanceOf(owner);

        return balance > availableForRedeem ? availableForRedeem : balance;
    }

    /// @notice Deposits assets with slippage control. Access restricted to `CONTROLLER_ROLE` ie. the `Controller` contract.
    /// @param assets Amount of assets to deposit.
    /// @param minShares Minimum shares to receive.
    /// @param receiver Address of the receiver.
    /// @return Shares received for the deposit.
    function deposit(uint256 assets, uint256 minShares, address receiver)
        external
        onlyRole(Constants.CONTROLLER_ROLE)
        returns (uint256)
    {
        uint256 shares = previewDeposit(assets);

        if (shares < minShares) revert Errors.ExcessiveSlippage();
        if (assets > maxDeposit(receiver)) revert Errors.ExcessiveAmountRequested();

        _deposit(_msgSender(), receiver, assets, shares);
        _mUSDC.mint(address(this), assets);

        return shares;
    }

    /// @notice Redeems shares for assets, including fees. Access restricted to `CONTROLLER_ROLE` ie. the `Controller` contract.
    /// @param shares Amount of shares to redeem.
    /// @param receiver Address of the receiver.
    /// @param owner Address of the owner of shares.
    /// @return Assets received for the redeemed shares.
    function redeem(uint256 shares, address receiver, address owner)
        public
        override
        onlyRole(Constants.CONTROLLER_ROLE)
        returns (uint256)
    {
        uint256 maxShares = maxRedeem(owner);

        if (shares > maxShares) {
            revert ERC4626ExceededMaxRedeem(owner, shares, maxShares);
        }

        uint256 assets =
            previewRedeemParametrized(shares, _controller._totalSupplySnapshot(), _controller._totalAssetsSnapshot());
        uint256 fees;

        {
            uint256 totalSharesInPreviousEpoch = _controller.totalSharesInPreviousEpoch(owner);
            (uint256 twtSharesInPreviousEpoch,) = _controller.twtShares(owner);
            (uint256 swaPricePreviousEpoch,) = _controller.swaPrice(owner);

            uint256 factor = twtSharesInPreviousEpoch.mulDiv(
                BASIS_POINTS,
                totalSharesInPreviousEpoch * (_controller._epochStartedAt() - _controller._previousEpochStartedAt())
            );
            uint256 profit =
                assets > swaPricePreviousEpoch ? factor.mulDiv(assets - swaPricePreviousEpoch, BASIS_POINTS) : 0;

            uint256 actualAssets = assets < swaPricePreviousEpoch ? assets : swaPricePreviousEpoch + profit;

            uint256 gainsFeeBp = profit > 0 ? _controller._gainsFeeBp().mulDiv(actualAssets, BASIS_POINTS) : 0;
            gainsFeeBp = gainsFeeBp > profit ? profit : gainsFeeBp;
            uint256 withdrawFeeBp = _controller._withdrawFeeBp().mulDiv(actualAssets, BASIS_POINTS);
            fees = gainsFeeBp + withdrawFeeBp;
            actualAssets -= fees;
            uint256 profitDelta = fees < assets - actualAssets ? assets - actualAssets - fees : 0;
            fees += profitDelta;
            assets = actualAssets;
        }

        _withdraw(owner, receiver, owner, assets, shares);
        _withdraw(owner, _controller._treasury(), owner, fees, 0);
        _mUSDC.burn(address(this), assets + fees);

        return assets;
    }

    function _convertToAssetsParametrized(
        uint256 shares,
        uint256 totalSupply,
        uint256 totalAssets_,
        Math.Rounding rounding
    ) internal pure returns (uint256) {
        return shares.mulDiv(totalAssets_ + 1, totalSupply + 10 ** _decimalsOffset(), rounding);
    }

    function _decimalsOffset() internal pure override returns (uint8) {
        return DECIMALS_OFFSET;
    }

    function previewRedeemParametrized(uint256 shares, uint256 totalSupply_, uint256 totalAssets_)
        public
        pure
        returns (uint256)
    {
        return _convertToAssetsParametrized(shares, totalSupply_, totalAssets_, Math.Rounding.Floor);
    }

    /// @notice Transfers raw assets to a recipient. Access is restricted to the `CONTROLLER_ROLE` ie. the `Controller` contract.
    /// @param assets Amount of assets to transfer.
    /// @param recipient Address of the recipient.
    function rawWithdraw(uint256 assets, address recipient) external onlyRole(Constants.CONTROLLER_ROLE) {
        IERC20Mintable(asset()).transfer(recipient, assets);
    }

    /// @notice Transfers raw assets from an owner to a recipient. Access is restricted to the `CONTROLLER_ROLE` ie. the `Controller` contract.
    /// @param owner Address of the owner.
    /// @param recipient Address of the recipient.
    /// @param assets Amount of assets to transfer.
    function rawDeposit(address owner, address recipient, uint256 assets)
        external
        onlyRole(Constants.CONTROLLER_ROLE)
    {
        IERC20Mintable(asset()).transferFrom(owner, recipient, assets);
    }

    function deposit(uint256, address) public pure override(ERC4626Upgradeable) returns (uint256) {
        revert Errors.FunctionalityDisabled();
    }

    function withdraw(uint256, address, address) public pure override(ERC4626Upgradeable) returns (uint256) {
        revert Errors.FunctionalityDisabled();
    }

    function mint(uint256, address) public pure override(ERC4626Upgradeable) returns (uint256) {
        revert Errors.FunctionalityDisabled();
    }

    function _update(address from, address to, uint256 value) internal override(ERC20Upgradeable) {
        if (from != address(0) && to != address(0)) revert Errors.FunctionalityDisabled();
        ERC20Upgradeable._update(from, to, value);
    }

    /// @notice Sets the controller contract.
    /// @param controllerAddress Address of the new `Controller` contract.
    function setController(address controllerAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        _controller = IController(controllerAddress);
    }
}
