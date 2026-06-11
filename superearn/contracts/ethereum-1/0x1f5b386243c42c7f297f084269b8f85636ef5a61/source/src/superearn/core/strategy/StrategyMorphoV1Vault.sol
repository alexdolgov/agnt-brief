// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.29 <0.9.0;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Math } from "@openzeppelin/contracts/utils/math/Math.sol";
import { EnumerableSet } from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import { BaseCooldownStrategy } from "@superearn/core/strategy/BaseCooldownStrategy.sol";
import { IMetaMorpho } from "@metamorpho/src/interfaces/IMetaMorpho.sol";

// https://docs.morpho.org/get-started/resources/contracts/morpho-vaults/
// https://github.com/morpho-org/metamorpho

/**
 * @title StrategyMorphoV1Vault
 */
contract StrategyMorphoV1Vault is BaseCooldownStrategy {
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.UintSet;

    // Custom errors
    error RedeemAmountMismatch();

    // Constants
    uint256 private immutable MAX_SUPPLY_THRESHOLD;

    // State variables
    IMetaMorpho public immutable metaMorpho;
    uint256 private immutable oneUsdt;
    uint256 private immutable oneERC4626;
    uint256 private lastRedeemIndex;
    mapping(uint256 => uint256) public redeemAmounts;

    /**
     * @notice Initializes the StrategyMorphoV1Vault with MetaMorphoVaultV1 integration
     * @param _vault Address of the Yearn vault that will manage this strategy
     * @dev Sets up the MetaMorphoVaultV1 instance and configures strategy parameters
     */
    constructor(
        address _vault,
        address _metaMorpho
    )
        BaseCooldownStrategy(_vault, address(_metaMorpho), address(IMetaMorpho(_metaMorpho).asset()))
    {
        // Initialize MetaMorphoVaultV1
        metaMorpho = IMetaMorpho(_metaMorpho);
        AMOUNT_TO_SHARE_BUFFER = 0;

        minReportDelay = 0;
        maxReportDelay = 7 days;

        // externalUnderlyingToken should be USDT
        oneERC4626 = 10 ** IERC20Metadata(address(externalShareToken)).decimals();
        oneUsdt = 10 ** IERC20Metadata(address(externalUnderlyingToken)).decimals();

        MAX_SUPPLY_THRESHOLD = 1_000_000_000 * oneUsdt;
    }

    /**
     * @notice Strategy name
     */
    function name() external view override returns (string memory) {
        return string.concat("StrategyMorphoV1Vault ", IERC20Metadata(address(metaMorpho)).name());
    }

    // ============================================
    // ABSTRACT FUNCTION IMPLEMENTATIONS
    // ============================================

    function getCooldownPeriod() public view virtual override returns (uint256 cooldownPeriod) {
        cooldownPeriod = 0;
    }

    function requestDeposit(uint256 assets)
        internal
        virtual
        override
        returns (bool success, uint256 shares, uint256 filledAssets)
    {
        if (!beforeExternalDeposit(assets)) return (false, 0, 0);

        uint256 beforeUnderlyingBalance = externalUnderlyingToken.balanceOf(address(this));
        uint256 beforeShareBalance = externalShareToken.balanceOf(address(this));

        externalUnderlyingToken.forceApprove(address(metaMorpho), assets);
        try metaMorpho.deposit(assets, address(this)) {
            success = true;
            shares = externalShareToken.balanceOf(address(this)) - beforeShareBalance;
            filledAssets = beforeUnderlyingBalance - externalUnderlyingToken.balanceOf(address(this));
        } catch {
            success = false; // assign explicitly
        }
    }

    function requestRedeem(uint256 shares)
        internal
        virtual
        override
        returns (bool success, uint256 redeemId, uint256 redeemUnderlyingAmount, uint256 cooldownPeriod)
    {
        if (!beforeExternalRedeem(shares)) return (false, 0, 0, 0);

        // don't need to approve; it will be burned
        uint256 balanceDelta = externalUnderlyingToken.balanceOf(address(this));
        try metaMorpho.redeem(shares, address(this), address(this)) returns (uint256 redeemAmount) {
            success = true;
            redeemAmounts[++lastRedeemIndex] = redeemAmount;
            (redeemId,,, redeemUnderlyingAmount,) = getRedeemDetail(getLastRedeemIndex());

            balanceDelta = externalUnderlyingToken.balanceOf(address(this)) - balanceDelta;
            if (balanceDelta != redeemAmount) {
                revert RedeemAmountMismatch();
            }
        } catch {
            success = false; // assign explicitly
        }

        cooldownPeriod = getCooldownPeriod();
    }

    /**
     * @dev Cannot reach here for ERC4626
     */
    function requestClaim(uint256 /* redeemIndex */ ) internal virtual override returns (bool, uint256) {
        assert(false);
    }

    /**
     * @dev see ERC4626
     */
    function previewDeposit(uint256 assets) public view virtual override returns (uint256 shares) {
        return metaMorpho.previewDeposit(assets);
    }

    /**
     * @dev see ERC4626
     */
    function previewMint(uint256 shares) public view virtual override returns (uint256 assets) {
        return metaMorpho.previewMint(shares);
    }

    /**
     * @dev see ERC4626
     */
    function previewWithdraw(uint256 assets) public view virtual override returns (uint256 shares) {
        return metaMorpho.previewWithdraw(assets);
    }

    /**
     * @dev see ERC4626
     */
    function previewRedeem(uint256 shares) public view virtual override returns (uint256 assets) {
        return metaMorpho.previewRedeem(shares);
    }

    /**
     * @dev The redeemIndex in metaMorpho starts from 1 and indicates the last valid registered index.
     *      When set to 0, it means there are no redeems. Therefore, redeemIndex can also be viewed as redeemLength.
     */
    function getLastRedeemIndex() internal view virtual override returns (uint256) {
        return lastRedeemIndex;
    }

    function getRedeemDetail(uint256 redeemIndex)
        public
        view
        virtual
        override
        returns (
            uint256 redeemId,
            uint256 redeemTimestamp,
            address redeemUser,
            uint256 redeemUnderlyingAmount,
            bool redeemIsDone
        )
    {
        redeemId = redeemIndex;
        // redeemTimestamp = 0;
        redeemUser = address(this);
        redeemUnderlyingAmount = redeemAmounts[redeemId];
        redeemIsDone = redeemId > 0;
    }

    function getSupplyCap() public view virtual override returns (uint256 supplyAssetsCap, uint256 availableAssets) {
        supplyAssetsCap = metaMorpho.maxDeposit(address(this));
        availableAssets = Math.min(supplyAssetsCap, MAX_SUPPLY_THRESHOLD);
    }

    function isPredepositAlreadyClaimed(uint256 predepositId) external view virtual override returns (bool isClaimed) {
        uint256 redeemIndex = externalRedeemIndexes[predepositId];
        if (redeemIndex == 0) return false;
        (,,,, isClaimed) = getRedeemDetail(redeemIndex);
    }

    function predepositDebtRetrievable(uint256 predepositId)
        external
        view
        virtual
        override
        returns (bool isRetrievable)
    {
        isRetrievable = false;
    }

    function ethToWant(uint256 /* _amtInWei */ ) public view virtual override returns (uint256) {
        return 0;
    }

    function beforeExternalDeposit(uint256 assets) internal view virtual override returns (bool valid) {
        valid = metaMorpho.previewDeposit(assets) > 0;
    }

    function beforeExternalRedeem(uint256 shares) internal view virtual override returns (bool valid) {
        valid = metaMorpho.previewRedeem(shares) > 0;
    }

    // ============================================
    // YEARN STRATEGY FUNCTIONS
    // ============================================

    function prepareReturn(uint256 _debtOutstanding)
        internal
        virtual
        override
        returns (uint256 _profit, uint256 _loss, uint256 _debtPayment)
    {
        // 1. Calculate current total assets
        uint256 totalAssets = estimatedTotalAssets();
        uint256 totalDebt = getStrategyParams().totalDebt;

        // 2. Estimate debt repayment and profit/loss
        _debtPayment = Math.min(_debtOutstanding, totalAssets);
        totalAssets -= _debtPayment;
        totalDebt -= _debtPayment;

        if (totalAssets > totalDebt) {
            _profit = totalAssets - totalDebt;
            // _loss = 0;
        } else {
            // _profit = 0;
            _loss = totalDebt - totalAssets;
        }

        // 3. Actual repayment: Since the expected and actual repayment amounts may differ during liquidation,
        // recalculate accurately based on the realizable amount

        // yVault enforces: want.balanceOf(address(this)) >= _profit + _debtPayment
        (uint256 toReturn,) = liquidatePosition(_profit + _debtPayment);

        totalAssets = estimatedTotalAssets();
        totalDebt = getStrategyParams().totalDebt;

        _debtPayment = Math.min(_debtPayment, toReturn);
        totalAssets -= _debtPayment;
        totalDebt -= _debtPayment;
        if (totalAssets > totalDebt) {
            _profit = Math.min(toReturn - _debtPayment, totalAssets - totalDebt);
            _loss = 0;
        } else {
            _profit = 0;
            _loss = totalDebt - totalAssets;
        }
    }

    function liquidatePosition(uint256 _amountNeeded)
        internal
        virtual
        override
        nonReentrant
        returns (uint256 _liquidatedAmount, uint256 _loss)
    {
        // pendingInvested is the asset waiting to be invested and is already liquidated
        uint256 pendingInvested = want.balanceOf(address(this));
        if (pendingInvested >= _amountNeeded) {
            return (_amountNeeded, 0);
        }

        // The shortage is additionally liquidated from invested shares
        (,, uint256 lossShares) = premintCooldownVault(_amountNeeded - pendingInvested);

        // should `_liquidatedAmount + _loss <= _amountNeeded`
        uint256 available = want.balanceOf(address(this));
        if (_amountNeeded > available) {
            _liquidatedAmount = available;
            _loss = Math.min(_amountNeeded - available, lossShares);
        } else {
            _liquidatedAmount = _amountNeeded;
            // _loss = 0;
        }
    }

    function liquidateAllPositions() internal virtual override nonReentrant returns (uint256 _amountFreed) {
        _redepositUnderlyingSurplus();
        premintCooldownVault(estimatedTotalAssets() + oneUsdt);
        _amountFreed = want.balanceOf(address(this));
    }

    function adjustPosition(uint256 _debtOutstanding) internal virtual override nonReentrant {
        if (emergencyExit) return;

        uint256 pendingInvested = want.balanceOf(address(this));
        if (_debtOutstanding >= pendingInvested) return;

        uint256 toInvestShares;
        unchecked {
            uint256 _free = cooldownVault.maxInstantRedeem(address(this));
            uint256 _maxInvest = pendingInvested - _debtOutstanding;
            toInvestShares = Math.min(_free, _maxInvest);
            (, uint256 _availableUsdt) = getSupplyCap();
            toInvestShares = Math.min(toInvestShares, cooldownVault.previewDeposit(_availableUsdt));
        }

        uint256 toInvestAssets = cooldownVault.instantRedeem(toInvestShares);
        if (remainingPredepositDebt > shortfallTolerance) {
            toInvestAssets = 0;
        }

        (,, uint256 filledAssets) = requestDeposit(toInvestAssets);
        uint256 unfilledAssets = toInvestAssets - filledAssets;

        if (unfilledAssets > 0) {
            externalUnderlyingToken.forceApprove(address(cooldownVault), unfilledAssets);
            cooldownVault.deposit(unfilledAssets, address(this));
        }

        emit AdjustPosition(this.getUtilizationRate(), filledAssets, unfilledAssets, estimatedTotalAssets());
    }

    function prepareMigration(address _newStrategy) internal virtual override {
        _requireNoOutstandingDebt();
        externalShareToken.safeTransfer(_newStrategy, externalShareToken.balanceOf(address(this)));
        externalUnderlyingToken.safeTransfer(_newStrategy, externalUnderlyingToken.balanceOf(address(this)));
    }

    function protectedTokens() internal view virtual override returns (address[] memory) {
        address[] memory protected = new address[](2);
        protected[0] = address(externalShareToken); // ERC4626
        protected[1] = address(externalUnderlyingToken);
        return protected;
    }

    function tendTrigger(uint256 /* callCostInWei */ ) public view virtual override returns (bool) {
        if (emergencyExit) return false;

        // Additional investment is possible when utilizationRate is not 100%
        uint256 pendingInvested = want.balanceOf(address(this));
        if (pendingInvested == 0) return false;

        // Check if there are actually tokens available for investment
        uint256 idleBalance = cooldownVault.idleBalance();
        return beforeExternalDeposit(Math.min(idleBalance, pendingInvested));
    }

    function harvestTrigger(uint256 callCostInWei) public view virtual override returns (bool) {
        bool trigger = super.harvestTrigger(callCostInWei);
        uint256 lastReport = getStrategyParams().lastReport;
        if (trigger) {
            if (forceHarvestTriggerOnce) return true;
            if ((block.timestamp - lastReport) >= maxReportDelay) return true;
        } else {
            return false;
        }
        if (block.timestamp == lastReport) return false;

        // 1. Calculate current total assets
        uint256 totalAssets = estimatedTotalAssets();
        uint256 totalDebt = getStrategyParams().totalDebt;
        uint256 credit = vault.creditAvailable();

        // 2. Estimate debt repayment and profit/loss
        uint256 _debtPayment = 0;
        uint256 _debtOutstanding = vault.debtOutstanding();
        if (totalAssets > _debtOutstanding) {
            _debtPayment = _debtOutstanding;
        } else {
            _debtPayment = totalAssets;
        }
        totalAssets -= _debtPayment;
        totalDebt -= _debtPayment;

        uint256 _profit = 0;
        if (totalAssets > totalDebt) {
            _profit = totalAssets - totalDebt;
        }

        uint256 halfCreditThreshold = creditThreshold >> 1;
        uint256 totalAvail = _debtPayment + _profit;
        if (totalAvail < credit) {
            // receive want from vault
            return (credit - totalAvail) >= halfCreditThreshold;
        } else if (totalAvail > credit) {
            // send want to vault
            return (totalAvail - credit) >= halfCreditThreshold;
        }

        return false;
    }
}
