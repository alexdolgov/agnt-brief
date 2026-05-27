// SPDX-License-Identifier: MIT
pragma solidity 0.8.28;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {FixedPointMathLib} from "@solmate/src/utils/FixedPointMathLib.sol";

import {CoreRoles} from "@libraries/CoreRoles.sol";
import {MultiAssetFarmV2} from "@integrations/MultiAssetFarmV2.sol";

import {ISyrupRouter} from "@interfaces/syrup/ISyrupRouter.sol";
import {IMaplePoolLike} from "@interfaces/syrup/IMaplePoolLike.sol";
import {IMaplePoolManagerLike} from "@interfaces/syrup/IMaplePoolManagerLike.sol";
import {IWithdrawalManagerLike} from "@interfaces/syrup/IWithdrawalManagerLike.sol";

/// @title MapleFarm
/// @notice Farm integration that deploys USDC into maple's syrupUSDC pool and tracks pending redemptions.
/// @dev First deposit has to be authorized (vaultAuthorizeAndDeposit), follow-ups can be done with
/// vaultDepositAuthorized. After the farm is authorized, it can also request redemptions (vaultRequestRedeem).
/// The Maple contracts have a limitation where only one redeem request can be pending at any time, so calling
/// vaultRequestRedeem while a redemption is pending will revert.
contract MapleFarm is MultiAssetFarmV2 {
    using SafeERC20 for IERC20;
    using FixedPointMathLib for uint256;

    // immutable references to external contracts
    address public immutable usdc;
    address public immutable syrupUsdc;
    address public immutable syrupRouter;

    // forge-lint: disable-next-line(unsafe-typecast)
    bytes32 public constant _DEPOSIT_DATA = bytes32(bytes("0:infinifi"));

    constructor(address _core, address _accounting, address _usdc, address _syrupUsdc, address _syrupRouter)
        MultiAssetFarmV2(_core, _usdc, _accounting)
    {
        usdc = _usdc;
        syrupUsdc = _syrupUsdc;
        syrupRouter = _syrupRouter;

        _enableAsset(_usdc);
        _enableAsset(_syrupUsdc);

        // tolerate at most a rounding down to the 6th decimal
        maxSlippage = 0.999999e18;
    }

    /// @notice used to check slippage on vault operations
    modifier checkSlippage() {
        uint256 assetsBefore = assets();
        _;
        uint256 assetsAfter = assets();
        uint256 minAssetsAfter = assetsBefore.mulWadDown(maxSlippage);
        require(assetsAfter >= minAssetsAfter, SlippageTooHigh(minAssetsAfter, assetsAfter));
    }

    /// @inheritdoc MultiAssetFarmV2
    /// @dev Small override because MultiAssetFarmV2.assets() includes the balance of the
    /// USDC & syrupUSDC, but not the syrupUSDC that is pending redemption.
    function assets() public view override returns (uint256) {
        address poolManager = IMaplePoolLike(syrupUsdc).manager();
        address withdrawalManager = IMaplePoolManagerLike(poolManager).withdrawalManager();

        uint256 userEscrowedShares = IWithdrawalManagerLike(withdrawalManager).userEscrowedShares(address(this));
        uint256 assetsPendingRedemption = 0;
        if (userEscrowedShares != 0) {
            assetsPendingRedemption += IMaplePoolLike(syrupUsdc).convertToExitAssets(userEscrowedShares);
        }

        return super.assets() + assetsPendingRedemption;
    }

    function vaultAuthorizeAndDeposit(
        uint256 _amount,
        uint256 _bitmap,
        uint256 _deadline,
        uint8 _v,
        bytes32 _r,
        bytes32 _s
    ) external whenNotPaused checkSlippage onlyCoreRole(CoreRoles.FARM_SWAP_CALLER) returns (uint256) {
        IERC20(usdc).forceApprove(syrupRouter, _amount);
        return ISyrupRouter(syrupRouter).authorizeAndDeposit(_bitmap, _deadline, _v, _r, _s, _amount, _DEPOSIT_DATA);
    }

    /// @notice Deposit USDC held by the farm into syrupUSDC via the Maple router.
    /// @param _amount The amount of USDC to deposit.
    /// @return The number of syrupUSDC shares minted to the farm.
    function vaultDepositAuthorized(uint256 _amount)
        external
        whenNotPaused
        checkSlippage
        onlyCoreRole(CoreRoles.FARM_SWAP_CALLER)
        returns (uint256)
    {
        IERC20(usdc).forceApprove(syrupRouter, _amount);
        return ISyrupRouter(syrupRouter).deposit(_amount, _DEPOSIT_DATA);
    }

    /// @notice Request redemption of syrupUSDC shares back to USDC through the Maple withdrawal queue.
    /// @param _shares The amount of syrupUSDC shares to request for redemption.
    /// @return The amount of shares escrowed in the withdrawal manager for processing.
    function vaultRequestRedeem(uint256 _shares)
        external
        whenNotPaused
        checkSlippage
        onlyCoreRole(CoreRoles.FARM_SWAP_CALLER)
        returns (uint256)
    {
        return IMaplePoolLike(syrupUsdc).requestRedeem(_shares, address(this));
    }
}

