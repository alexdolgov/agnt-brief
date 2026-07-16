// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.24;

import { SafeERC20, IERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "../lendingPool/LendingPool.sol";
import { mulDiv } from "@prb/math/src/Common.sol";
import "../external/blast/IERC20Rebasing.sol";
import "../libraries/Errors.sol";
import "./periphery/BlastGas.sol";
import "../libraries/Roles.sol";
import "./periphery/BlastPoints.sol";

/// @title Juice Lending Pool
/// @notice This contract extends LendingPool to account for Blast native features.
/// @dev Supports gas refunds as well as using either USDB or WETH as the lending asset.
contract JuiceLendingPool is LendingPool, BlastGas, BlastPoints {
    using SafeERC20 for IERC20;
    using Roles for IProtocolGovernor;

    error PublicCompoundingDisabled();

    event AutoCompoundingSet(bool isAutoCompounding);
    event PublicCompoundingSet(bool publicCompoundingEnabled);

    uint256 public constant MINIMUM_COMPOUND_AMOUNT = 1e6;

    struct InitParams {
        address interestRateStrategy;
        address blastPointsOperator;
        string debtTokenName;
        string debtTokenSymbol;
        string liquidityTokenName;
        string liquidityTokenSymbol;
        uint256 minimumOpenBorrow;
        bool isAutoCompounding;
    }

    bool public isAutoCompounding;
    bool public hasPublicCompounding;

    constructor(
        address protocolGovernor_,
        InitParams memory params
    )
        LendingPool(
            protocolGovernor_,
            LendingPool.BaseInitProps({
                interestRateStrategy: params.interestRateStrategy,
                minimumOpenBorrow: params.minimumOpenBorrow,
                debtTokenName: params.debtTokenName,
                debtTokenSymbol: params.debtTokenSymbol,
                liquidityTokenName: params.liquidityTokenName,
                liquidityTokenSymbol: params.liquidityTokenSymbol
            })
        )
    {
        __BlastGas_init(protocolGovernor_);
        __BlastPoints_init(protocolGovernor_, params.blastPointsOperator);
        isAutoCompounding = params.isAutoCompounding;
        IERC20Rebasing(address(reserve.asset)).configure(YieldMode.CLAIMABLE);
    }

    function setAutoCompounding(bool _isAutoCompounding) public onlyOwner {
        isAutoCompounding = _isAutoCompounding;
        emit AutoCompoundingSet(isAutoCompounding);
    }

    function setPublicCompounding(bool _hasPublicCompounding) public onlyOwner {
        hasPublicCompounding = _hasPublicCompounding;
        emit PublicCompoundingSet(hasPublicCompounding);
    }

    /// @notice Accrue asset yield earned from idle reserve assets and distribute it to depositors.
    /// @dev Manual compounding is disabled by default and should be enabled by protocol once pool is sufficiently
    /// large.
    function compound() external nonReentrant returns (uint256 earned) {
        if (!hasPublicCompounding) {
            revert PublicCompoundingDisabled();
        }

        _accrueInterest();
        earned = _compound();
        _updateInterestRate();
    }

    function _compound() internal returns (uint256 earned) {
        IERC20Rebasing asset = IERC20Rebasing(address(reserve.asset));
        earned = asset.getClaimableAmount(address(this));

        // Avoid compounding dust.
        if (earned >= MINIMUM_COMPOUND_AMOUNT) {
            uint256 supplyBalanceBefore = liquidityToken.totalSupply();
            earned = asset.claim(address(this), earned);
            _accrueYield(supplyBalanceBefore, earned);
        }
    }

    function _beforeAction() internal override {
        _accrueInterest();
        if (isAutoCompounding) {
            _compound();
        }
    }

    /// @notice Accrues yield into liquidityIndex.
    function _accrueYield(uint256 supplyBalanceBefore, uint256 yieldClaimed) internal {
        if (supplyBalanceBefore == 0 || yieldClaimed == 0) {
            return;
        }
        reserve.assetBalance += yieldClaimed;
        uint256 supplyBalanceAfter = supplyBalanceBefore + yieldClaimed;
        reserve.liquidityIndex = (ud(supplyBalanceAfter).mul(reserve.liquidityIndex)).div(ud(supplyBalanceBefore));
        emit LiquidityIndexUpdated(reserve.liquidityIndex);
    }
}
