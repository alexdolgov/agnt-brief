// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IDenManager} from "src/interfaces/periphery/beraborrow/IDenManager.sol";
import {ILSTCollateralVault} from "src/interfaces/utils/ILSTCollateralVault.sol";

interface ICollVaultRouter {
    struct OpenDenVaultParams {
        IDenManager denManager;
        ILSTCollateralVault collVault;
        uint256 _maxFeePercentage;
        uint256 _debtAmount;
        uint256 _collAssetToDeposit;
        address _upperHint;
        address _lowerHint;
        uint256 _minSharesMinted;
        uint256 _collIndex;
        bytes _preDeposit;
    }

    /// @dev Avoid stack too deep
    struct AdjustDenVaultParams {
        IDenManager denManager;
        ILSTCollateralVault collVault;
        uint256 _maxFeePercentage;
        uint256 _collAssetToDeposit;
        uint256 _collWithdrawal;
        uint256 _debtChange;
        bool _isDebtIncrease;
        address _upperHint;
        address _lowerHint;
        bool unwrap;
        uint256 _minSharesMinted;
        uint256 _minAssetsWithdrawn;
        uint256 _collIndex;
        bytes _preDeposit;
    }

    /// @dev Avoid stack too deep
    struct RedeemCollateralVaultParams {
        IDenManager denManager;
        ILSTCollateralVault collVault;
        uint256 _debtAmount;
        address _firstRedemptionHint;
        address _upperPartialRedemptionHint;
        address _lowerPartialRedemptionHint;
        uint256 _partialRedemptionHintNICR;
        uint256 _maxIterations;
        uint256 _maxFeePercentage;
        uint256 _minSharesWithdrawn;
        uint256 minAssetsWithdrawn;
        uint256 collIndex;
        bool unwrap;
    }

    struct DepositFromAnyParams {
        ILSTCollateralVault collVault;
        address inputToken;
        uint inputAmount;
        uint minSharesMinted;
        uint outputMin;
        address outputReceiver;
        bytes dexCalldata;
        address swapRouter;
    }

    struct RedeemToOneParams {
        uint shares;
        address receiver;
        address swapRouter;
        ILSTCollateralVault collVault;
        address targetToken;
        uint minTargetTokenAmount;
        bytes[] tokensSwapCalldatas;
    }

    struct SimRedeemVars {
        uint256 netShares;
        uint256 totalSupply;
        address asset;
        address ibgt;
        uint256 earned;
        uint256 assetAmount;
        uint256 performanceFee;
    }

    function openDenVault(
        OpenDenVaultParams memory params
    ) external payable;
    function adjustDenVault(AdjustDenVaultParams calldata params) external payable;
    function closeDenVault(
        IDenManager denManager,
        ILSTCollateralVault collVault,
        uint256 minAssetsWithdrawn,
        uint256 collIndex,
        bool unwrap
    ) external;
    function redeemCollateralVault(
        RedeemCollateralVaultParams calldata params
    ) external;

    function claimLockedTokens(IERC20[] memory tokens, uint[] memory amounts) external;

    function depositFromAny(
        DepositFromAnyParams calldata params
    ) external payable returns (uint shares);

    function redeemToOne(
        RedeemToOneParams calldata params
    ) external;

    function previewRedeemUnderlying(ILSTCollateralVault collVault, uint shares) external view returns (address[] memory tokens, uint[] memory amounts);

    function claimCollateralRouter(
        IDenManager denManager,
        ILSTCollateralVault collVault,
        address receiver,
        uint _collIndex,
        uint minAssetsWithdrawn
    ) external;

    function getOrderedRedeemedTokens(
        ILSTCollateralVault vault
    ) external view returns (address[] memory rewardTokens, ILSTCollateralVault iVault);

    function addWhitelistedSwapper(
        address swapper,
        bool status
    ) external;
}