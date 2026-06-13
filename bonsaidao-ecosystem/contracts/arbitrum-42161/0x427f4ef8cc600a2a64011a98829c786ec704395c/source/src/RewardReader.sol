// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.25;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IRewardTracker} from "src/interfaces/IRewardTracker.sol";
import {
    TOKEN_WETH,
    TOKEN_GMX,
    HUNDRED_PERCENT,
    GMX_GMX_REWARDS_TRACKER,
    EXT_GMX_REWARDS_TRACKER,
    GMX_GLP_REWARDS_TRACKER
} from "src/Constants.sol";
import {ExitVaultStorage, GmxStream, GlpStream} from "src/ExitVaultStorage.sol";

contract RewardReader {
    struct VaultState {
        uint256 vestingStoppedGmx;
        uint256 vestingStoppedGlp;
        uint256 accumulatedGmxWethPerShare;
        uint256 accumulatedGlpWethPerShare;
        uint256 accumulatedGmxGmxPerShare;
        uint256 protocolFee;
        uint256 donationPartGmx;
        uint256 donationPartGlp;
        uint256 gmxSupply;
        uint256 glpSupply;
    }

    /**
     * @notice Computes pending rewards for a depositor in an ExitVault
     * @param _vault The address of the ExitVault
     * @param _depositor The address of the depositor
     * @return gmx_vestedGmx Pending vested GMX from GMX stream
     * @return gmx_vestedGlp Pending vested GMX from GLP stream
     * @return gmx_stakedGmx Pending staking GMX rewards from GMX stream
     * @return weth_stakedGlp Pending WETH rewards from GLP stream
     * @return weth_stakedGmx Pending WETH rewards from GMX stream
     */
    function getPendingRewards(address _vault, address _depositor) external view returns (
        uint256 gmx_vestedGmx,
        uint256 gmx_vestedGlp,
        uint256 gmx_stakedGmx,
        uint256 weth_stakedGlp,
        uint256 weth_stakedGmx
    ) {
        ExitVaultStorage vault = ExitVaultStorage(_vault);
        (GmxStream memory gmxStream, GlpStream memory glpStream) = vault.userInfo(_depositor);
        
        VaultState memory state;
        
        // Get vault info for reward calculations
        (
            ,  // owner
            ,  // escrow
            state.gmxSupply,
            state.glpSupply,
            ,  // gmxUnlockDate
            ,  // glpUnlockDate
            state.donationPartGmx,
            state.donationPartGlp,
            state.vestingStoppedGmx,
            state.vestingStoppedGlp
        ) = vault.getVaultInfo();

        (
            state.accumulatedGmxWethPerShare,
            state.accumulatedGlpWethPerShare,
            state.accumulatedGmxGmxPerShare
        ) = vault.getVaultAccumulators();

        // Simulate _updateVester to get new accumulated rewards
        (
            uint256 newAccumulatedGmxWethPerShare,
            uint256 newAccumulatedGlpWethPerShare,
            uint256 newAccumulatedGmxGmxPerShare
        ) = _updateVesterSim(_vault, state);

        // Calculate GMX stream rewards
        if (gmxStream.shares > 0) {
            (gmx_vestedGmx, gmx_stakedGmx, weth_stakedGmx) = _calculateGmxStreamRewards(
                gmxStream,
                state,
                newAccumulatedGmxWethPerShare,
                newAccumulatedGmxGmxPerShare
            );
        }
        // Calculate GLP stream rewards
        if (glpStream.shares > 0) {
            (gmx_vestedGlp, weth_stakedGlp) = _calculateGlpStreamRewards(
                glpStream,
                state,
                newAccumulatedGlpWethPerShare
            );
        }
    }

    function _updateVesterSim(
        address _vault, 
        VaultState memory state
    ) internal view returns (
        uint256 accumulatedGmxWethPerShare, 
        uint256 accumulatedGlpWethPerShare, 
        uint256 accumulatedGmxGmxPerShare
    ) {
        
        // Then get claimable amounts from reward trackers
        uint256 stakedGmxClaim = IRewardTracker(GMX_GMX_REWARDS_TRACKER).claimable(address(_vault)); //weth
        uint256 stakedGlpClaim = IRewardTracker(GMX_GLP_REWARDS_TRACKER).claimable(address(_vault)); // weth
        uint256 extGmxClaim = IRewardTracker(EXT_GMX_REWARDS_TRACKER).claimable(address(_vault)); // gmx

        uint256 gmxSide = state.gmxSupply;
        uint256 glpSide = state.glpSupply;

        if (gmxSide > 0) {
           accumulatedGmxWethPerShare = state.accumulatedGmxWethPerShare + stakedGmxClaim * 1e18 / gmxSide;
           accumulatedGmxGmxPerShare = state.accumulatedGmxGmxPerShare + extGmxClaim * 1e18 / gmxSide;
        }
        if (glpSide > 0) {
           accumulatedGlpWethPerShare = state.accumulatedGlpWethPerShare + stakedGlpClaim * 1e18 / glpSide;
        }
    }

    function _calculateGmxStreamRewards(
        GmxStream memory gmxStream,
        VaultState memory state,
        uint256 newAccumulatedGmxWethPerShare,
        uint256 newAccumulatedGmxGmxPerShare
    ) private view returns (
        uint256 vestedGmx,
        uint256 stakedGmx,
        uint256 wethRewards
    ) {
        uint256 cutOff = state.vestingStoppedGmx == 0 ? block.timestamp : state.vestingStoppedGmx;
        
        // Calculate pending vested GMX
        if (gmxStream.lastClaim < cutOff) {
            uint256 pendingGmx = gmxStream.esGmxVest * (cutOff - gmxStream.lastClaim) / 365 days;
            uint256 totalPendingGmx = gmxStream.claimedGmx + pendingGmx >= gmxStream.esGmxVest 
                ? gmxStream.esGmxVest - gmxStream.claimedGmx 
                : pendingGmx;

            // Scale vestedGmx based on user's share proportion
            vestedGmx = state.gmxSupply > 0 
                ? totalPendingGmx * gmxStream.shares / state.gmxSupply 
                : 0;
        }
        // Apply donation part to the scaled vestedGmx
        vestedGmx = vestedGmx * state.donationPartGmx / HUNDRED_PERCENT;
        stakedGmx = gmxStream.shares * newAccumulatedGmxGmxPerShare / 1e18 - gmxStream.gmxRewardDebt;
        wethRewards = gmxStream.shares * newAccumulatedGmxWethPerShare / 1e18 - gmxStream.wethRewardDebt; 
    }
        
    function _calculateGlpStreamRewards(
        GlpStream memory glpStream,
        VaultState memory state,
        uint256 newAccumulatedGlpWethPerShare
    ) private view returns (
        uint256 vestedGmx,
        uint256 wethRewards
    ) {
        uint256 cutOff = state.vestingStoppedGlp == 0 ? block.timestamp : state.vestingStoppedGlp;
        
        // Calculate pending vested GMX
        if (glpStream.lastClaim < cutOff) {
            uint256 pendingGmx = glpStream.esGmxVest * (cutOff - glpStream.lastClaim) / 365 days;
            uint256 totalPendingGmx = glpStream.claimedGmx + pendingGmx >= glpStream.esGmxVest 
                ? glpStream.esGmxVest - glpStream.claimedGmx 
                : pendingGmx;

            vestedGmx = totalPendingGmx;
        }

        // Calculate pending rewards from staking
        wethRewards = glpStream.shares * newAccumulatedGlpWethPerShare / 1e18 - glpStream.wethRewardDebt;
    }
}
