// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC4626} from "@openzeppelin/contracts/token/ERC20/extensions/ERC4626.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {FixedPointMathLib} from "@solmate/src/utils/FixedPointMathLib.sol";

import {ICapToken} from "@interfaces/cap/ICapToken.sol";
import {Farm, CoreRoles} from "@integrations/Farm.sol";
import {IMultiAssetWithdrawable} from "@interfaces/IMultiAssetWithdrawable.sol";

contract CapFarm is Farm, IMultiAssetWithdrawable {
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;

    error NotWhitelisted();
    error InsufficientAssets(uint256 _amount, uint256 _maxAmount);

    address public constant CUSD = 0xcCcc62962d17b8914c62D74FfB843d73B2a3cccC;
    address public constant STCUSD = 0x88887bE419578051FF9F4eb6C858A951921D8888;

    constructor(address _core, address _assetToken) Farm(_core, _assetToken) {
        maxSlippage = 0.999999999e18;
    }

    function assets() public view override returns (uint256) {
        uint256 stakedCapBalance = ERC4626(STCUSD).balanceOf(address(this));
        if (stakedCapBalance == 0) return 0;
        return _getBurnAmount(ERC4626(STCUSD).convertToAssets(stakedCapBalance));
    }

    /// Supports both cUSD and stcUSD in case of residual or accidental transfers to this farm.
    function isAssetSupported(address _asset) public pure returns (bool) {
        return _asset == CUSD || _asset == STCUSD;
    }

    function maxDeposit() public view override returns (uint256) {
        return ICapToken(CUSD).getRemainingMintCapacity(assetToken);
    }

    function liquidity() external view override returns (uint256) {
        uint256 maxWithdrawAmount = ERC4626(STCUSD).maxWithdraw(address(this));
        if (maxWithdrawAmount == 0) return 0;
        return _getBurnAmount(maxWithdrawAmount);
    }

    /// @notice Can be called by manual rebalancer to withdraw staked Cap tokens.
    function withdrawSecondaryAsset(address _asset, uint256 _amount, address _to)
        external
        whenNotPaused
        onlyCoreRole(CoreRoles.FARM_MANAGER)
    {
        uint256 assetsBefore = assets();
        IERC20(_asset).safeTransfer(_to, _amount);
        uint256 assetsAfter = assets();

        emit AssetsUpdated(block.timestamp, assetsBefore, assetsAfter);
    }

    function _deposit(uint256 _assetsToDeposit) internal override {
        require(ICapToken(CUSD).whitelisted(address(this)), NotWhitelisted());

        IERC20(assetToken).forceApprove(CUSD, _assetsToDeposit);
        uint256 capAmount = ICapToken(CUSD).mint(assetToken, _assetsToDeposit, 0, address(this), block.timestamp);

        IERC20(CUSD).forceApprove(STCUSD, capAmount);
        ERC4626(STCUSD).deposit(capAmount, address(this));
    }

    function _withdraw(uint256 _amount, address _to) internal virtual override {
        require(ICapToken(CUSD).whitelisted(address(this)), NotWhitelisted());

        // First take the maximum amount of cap usd tokens we can get by unstaking.
        uint256 capTokensToUnstake = ERC4626(STCUSD).maxWithdraw(address(this));
        uint256 maxAssetsOut = _getBurnAmount(capTokensToUnstake);

        require(_amount <= maxAssetsOut, InsufficientAssets(_amount, maxAssetsOut));

        if (_amount < maxAssetsOut) {
            // Proportional inversion of getBurnAmount: ceil(capBalance * _amount / maxAssetsOut).
            // Equivalent to getMintAmount but without the mint-cap gate, so this correctly
            // computes the required CUSD even when remaining mint capacity is zero.
            capTokensToUnstake = capTokensToUnstake.mulDivUp(_amount, maxAssetsOut);
        }

        _unstake(capTokensToUnstake);
        _burn(capTokensToUnstake, _to);
    }

    function _getBurnAmount(uint256 _capTokens) internal view returns (uint256 amountOut) {
        (amountOut,) = ICapToken(CUSD).getBurnAmount(assetToken, _capTokens);
    }

    function _unstake(uint256 _underlyingAmount) internal returns (uint256) {
        return ERC4626(STCUSD).withdraw(_underlyingAmount, address(this), address(this));
    }

    function _burn(uint256 _tokens, address _to) internal returns (uint256) {
        return ICapToken(CUSD).burn(assetToken, _tokens, 0, address(_to), block.timestamp);
    }
}
