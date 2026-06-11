// SPDX-License-Identifier: MIT

pragma solidity 0.6.11;

import "../Dependencies/SafeMath.sol";
import "../Dependencies/LiquidLoansMath.sol";
import "../Dependencies/IERC20.sol";
import "../Interfaces/IBorrowerOperations.sol";
import "../Interfaces/IVaultManager.sol";
import "../Interfaces/IStabilityPool.sol";
import "../Interfaces/IPriceFeed.sol";
import "../Interfaces/ILOANStaking.sol";
import "./BorrowerOperationsScript.sol";
import "./ETHTransferScript.sol";
import "./LOANStakingScript.sol";
import "../Dependencies/console.sol";


contract BorrowerWrappersScript is BorrowerOperationsScript, ETHTransferScript, LOANStakingScript {
    using SafeMath for uint;

    string constant public NAME = "BorrowerWrappersScript";

    IVaultManager immutable vaultManager;
    IStabilityPool immutable stabilityPool;
    IPriceFeed immutable priceFeed;
    IERC20 immutable usdlToken;
    IERC20 immutable loanToken;
    ILOANStaking immutable loanStaking;

    constructor(
        address _borrowerOperationsAddress,
        address _vaultManagerAddress,
        address _loanStakingAddress
    )
        BorrowerOperationsScript(IBorrowerOperations(_borrowerOperationsAddress))
        LOANStakingScript(_loanStakingAddress)
        public
    {
        checkContract(_vaultManagerAddress);
        IVaultManager vaultManagerCached = IVaultManager(_vaultManagerAddress);
        vaultManager = vaultManagerCached;

        IStabilityPool stabilityPoolCached = vaultManagerCached.stabilityPool();
        checkContract(address(stabilityPoolCached));
        stabilityPool = stabilityPoolCached;

        IPriceFeed priceFeedCached = vaultManagerCached.priceFeed();
        checkContract(address(priceFeedCached));
        priceFeed = priceFeedCached;

        address usdlTokenCached = address(vaultManagerCached.usdlToken());
        checkContract(usdlTokenCached);
        usdlToken = IERC20(usdlTokenCached);

        address loanTokenCached = address(vaultManagerCached.loanToken());
        checkContract(loanTokenCached);
        loanToken = IERC20(loanTokenCached);

        ILOANStaking loanStakingCached = vaultManagerCached.loanStaking();
        require(_loanStakingAddress == address(loanStakingCached), "BorrowerWrappersScript: Wrong LOANStaking address");
        loanStaking = loanStakingCached;
    }

    function claimCollateralAndOpenVault(uint _maxFee, uint _USDLAmount, address _upperHint, address _lowerHint) external payable {
        uint balanceBefore = address(this).balance;

        // Claim collateral
        borrowerOperations.claimCollateral();

        uint balanceAfter = address(this).balance;

        // already checked in CollSurplusPool
        assert(balanceAfter > balanceBefore);

        uint totalCollateral = balanceAfter.sub(balanceBefore).add(msg.value);

        // Open vault with obtained collateral, plus collateral sent by user
        borrowerOperations.openVault{ value: totalCollateral }(_maxFee, _USDLAmount, _upperHint, _lowerHint);
    }

    function claimSPRewardsAndRecycle(uint _maxFee, address _upperHint, address _lowerHint) external {
        uint collBalanceBefore = address(this).balance;
        uint loanBalanceBefore = loanToken.balanceOf(address(this));

        // Claim rewards
        stabilityPool.withdrawFromSP(0);

        uint collBalanceAfter = address(this).balance;
        uint loanBalanceAfter = loanToken.balanceOf(address(this));
        uint claimedCollateral = collBalanceAfter.sub(collBalanceBefore);

        // Add claimed ETH to vault, get more USDL and stake it into the Stability Pool
        if (claimedCollateral > 0) {
            _requireUserHasVault(address(this));
            uint USDLAmount = _getNetUSDLAmount(claimedCollateral);
            borrowerOperations.adjustVault{ value: claimedCollateral }(_maxFee, 0, USDLAmount, true, _upperHint, _lowerHint);
            // Provide withdrawn USDL to Stability Pool
            if (USDLAmount > 0) {
                stabilityPool.provideToSP(USDLAmount, address(0));
            }
        }

        // Stake claimed LOAN
        uint claimedLOAN = loanBalanceAfter.sub(loanBalanceBefore);
        if (claimedLOAN > 0) {
            loanStaking.stake(claimedLOAN);
        }
    }

    function claimStakingGainsAndRecycle(uint _maxFee, address _upperHint, address _lowerHint) external {
        uint collBalanceBefore = address(this).balance;
        uint usdlBalanceBefore = usdlToken.balanceOf(address(this));
        uint loanBalanceBefore = loanToken.balanceOf(address(this));

        // Claim gains
        loanStaking.unstake(0);

        uint gainedCollateral = address(this).balance.sub(collBalanceBefore); // stack too deep issues :'(
        uint gainedUSDL = usdlToken.balanceOf(address(this)).sub(usdlBalanceBefore);

        uint netUSDLAmount;
        // Top up vault and get more USDL, keeping ICR constant
        if (gainedCollateral > 0) {
            _requireUserHasVault(address(this));
            netUSDLAmount = _getNetUSDLAmount(gainedCollateral);
            borrowerOperations.adjustVault{ value: gainedCollateral }(_maxFee, 0, netUSDLAmount, true, _upperHint, _lowerHint);
        }

        uint totalUSDL = gainedUSDL.add(netUSDLAmount);
        if (totalUSDL > 0) {
            stabilityPool.provideToSP(totalUSDL, address(0));

            // Providing to Stability Pool also triggers LOAN claim, so stake it if any
            uint loanBalanceAfter = loanToken.balanceOf(address(this));
            uint claimedLOAN = loanBalanceAfter.sub(loanBalanceBefore);
            if (claimedLOAN > 0) {
                loanStaking.stake(claimedLOAN);
            }
        }

    }

    function _getNetUSDLAmount(uint _collateral) internal returns (uint) {
        uint price = priceFeed.fetchPrice();
        uint ICR = vaultManager.getCurrentICR(address(this), price);

        uint USDLAmount = _collateral.mul(price).div(ICR);
        uint borrowingRate = vaultManager.getBorrowingRateWithDecay();
        uint netDebt = USDLAmount.mul(LiquidLoansMath.DECIMAL_PRECISION).div(LiquidLoansMath.DECIMAL_PRECISION.add(borrowingRate));

        return netDebt;
    }

    function _requireUserHasVault(address _depositor) internal view {
        require(vaultManager.getVaultStatus(_depositor) == 1, "BorrowerWrappersScript: caller must have an active vault");
    }
}
// 2025 Liquid Loans