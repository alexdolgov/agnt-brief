// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.19;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ERC4626Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC4626Upgradeable.sol";
import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";

import "src/interfaces/venus/VBep20Delegator.sol";
import "src/interfaces/venus/Comptroller.sol";
import "src/interfaces/venus/VenusLens.sol";

import {BaseWrapper} from "src/wrappers/BaseWrapper.sol";

contract WrappedVenus is BaseWrapper {

    using SafeERC20 for IERC20;

    address public COMPTROLLER;
    address public VTOKEN;
    address public UNDERLYING;
    address public XVS;

    function initialize(address vToken_, string memory name_, string memory symbol_, address authority_) public initializer {
        __BaseWrapper_init(vToken_, name_, symbol_, authority_);

        VTOKEN      = vToken_;
        COMPTROLLER = VBep20Delegator(vToken_).comptroller();
        UNDERLYING  = VBep20Delegator(vToken_).underlying();
        XVS         = Comptroller(COMPTROLLER).getXVSAddress();
    }

    function _invest() internal override {
        uint depositAmount = IERC20(UNDERLYING).balanceOf(address(this));
        if (depositAmount == 0) return;

        IERC20(UNDERLYING).forceApprove(address(VTOKEN), depositAmount);

        uint error = VBep20Delegator(VTOKEN).mint(depositAmount);
        require(error == 0, "Mint failed");
    }

    function _redeem(uint lpAmount, address to)
        internal
        override
        returns (address[] memory tokens, uint[] memory amounts)
    {
        uint error = VBep20Delegator(VTOKEN).redeem(lpAmount);
        require(error == 0, "Redeem Failed");

        uint redeemedAmount = IERC20(UNDERLYING).balanceOf(address(this));

        if (redeemedAmount > 0 && to != address(this)) {
            IERC20(UNDERLYING).safeTransfer(to, redeemedAmount);
        }

        tokens = new address[](1);
        tokens[0] = UNDERLYING;

        amounts = new uint[](1);
        amounts[0] = redeemedAmount;
    }

    function _claim(address to) internal override {
        address[] memory vTokens = new address[](1);
        vTokens[0] = VTOKEN;
        Comptroller(COMPTROLLER).claimVenus(address(this), vTokens);
        uint xvsBalance = IERC20(XVS).balanceOf(address(this));
        if (xvsBalance > 0 && to != address(this)) {
            IERC20(XVS).safeTransfer(to, xvsBalance);
        }

        VBep20Delegator(VTOKEN).accrueInterest();
        uint totalSupply_ = totalSupply();
        uint underlyingAssets = _convertToShares(totalAssets(), Math.Rounding.Floor);

        if (underlyingAssets > totalSupply_) {
            uint sharesToClaim = _convertToAssets(underlyingAssets - totalSupply_, Math.Rounding.Floor);
            if (sharesToClaim > 0) {
                _redeem(sharesToClaim, to);
            }
        }

        require(_convertToShares(totalAssets(), Math.Rounding.Floor) >= totalSupply_, "Incorrect state");
    }

    function depositTokens() public override view returns (address[] memory tokens) {
        tokens = new address[](1);
        tokens[0] = UNDERLYING;
    }

    function rewardTokens() public override view returns (address[] memory tokens) {
        tokens = new address[](2);
        tokens[0] = XVS;
        tokens[1] = UNDERLYING;
    }

    function poolTokens() public override view returns (address[] memory tokens) {
        tokens = new address[](1);
        tokens[0] = UNDERLYING;
    }

    function farmingPool() public view returns (address) {
        return VTOKEN;
    }

    /// @dev for offchain use
    function ratios()
        external
        override
        view
        returns (address[] memory tokens, uint[] memory ratio)
    {
        tokens = new address[](1);
        tokens[0] = UNDERLYING;

        ratio  = new uint[](1);
        ratio[0] = 1e18;
    }

    /// @dev for offchain use
    function description() external override view returns (string memory) {
        return string.concat(
            '{"type":"venusSupply","vToken":"',
            Strings.toHexString(VTOKEN),
            '","comptroller":"',
            Strings.toHexString(COMPTROLLER),
            '","underlying":"',
            Strings.toHexString(UNDERLYING),
            '"}'
        );
    }

    function _convertToShares(uint256 assets, uint256 assetsBefore, Math.Rounding rounding) internal override view returns (uint256) {
        return assets * VBep20Delegator(VTOKEN).exchangeRateStored() / 1E18;
    }

    function _convertToShares(uint256 assets, Math.Rounding rounding) internal override view returns (uint256) {
        return assets * VBep20Delegator(VTOKEN).exchangeRateStored() / 1E18;
    }

    function _convertToAssets(uint256 shares, Math.Rounding rounding) internal override view returns (uint256) {
        return shares * 1E18 / VBep20Delegator(VTOKEN).exchangeRateStored();
    }

    function redeemRaw(uint256 shares, address to)
        public
        override
        returns (address[] memory tokens, uint256[] memory amounts)
    {
        VBep20Delegator(VTOKEN).accrueInterest();
        return super.redeemRaw(shares, to);
    }

    function deposit(uint256 assets, address receiver)
        public
        override(ERC4626Upgradeable, IERC4626)
        virtual
        returns (uint256)
    {
        VBep20Delegator(VTOKEN).accrueInterest();
        return super.deposit(assets, receiver);
    }

    function mint(uint256 shares, address receiver)
        public
        override(ERC4626Upgradeable, IERC4626)
        virtual
        returns (uint256)
    {
        VBep20Delegator(VTOKEN).accrueInterest();
        return super.mint(shares, receiver);
    }

    function withdraw(uint256 assets, address receiver, address owner)
        public
        override(ERC4626Upgradeable, IERC4626)
        virtual
        returns (uint256)
    {
        VBep20Delegator(VTOKEN).accrueInterest();
        return super.withdraw(assets, receiver, owner);
    }

    function redeem(uint256 shares, address receiver, address owner)
        public
        override(ERC4626Upgradeable, IERC4626)
        virtual
        returns (uint256)
    {
        VBep20Delegator(VTOKEN).accrueInterest();
        return super.redeem(shares, receiver, owner);
    }

}
