// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IClaim } from "../interfaces/IClaim.sol";

import { Types } from "../shared/Types.sol";

import { LibDiamond } from "../libraries/LibDiamond.sol";
import { LibUtils } from "../libraries/LibUtils.sol";

import { _revert } from "../../utils/Globals.sol";

import { IQuestion } from "../../interfaces/IQuestion.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";

/**
 * @title ClaimFacet
 * @author Rain Team
 * @notice External interface for the rain pool `Claim` facet.
 */
contract ClaimFacet is IClaim {
    using SafeERC20 for IERC20;

    /**
     * @inheritdoc IClaim
     */
    function claim() public {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (block.timestamp <= ds.endTime + ds.DISPUTE_WINDOW) {
            _revert(IRainPool.DisputeWindowNotEnded.selector);
        }

        if (!ds.firstClaim) {
            _firstClaimCheck();
            _refundResolverBond();

            ds.firstClaim = true;
        }

        if (ds.winner == 0 || !ds.poolFinalized) {
            _revert(IRainPool.PoolNotClosed.selector);
        }

        if (ds.userVotesInEscrow[ds.winner][msg.sender] > 0) {
            _revert(IRainPool.UserSellOrderExist.selector);
        }

        if (ds.claimed[msg.sender]) {
            _revert(IRainPool.AlreadyClaimed.selector);
        }
        ds.claimed[msg.sender] = true;

        uint256 i = 1;
        for (; i <= ds.numberOfOptions; ) {
            if (ds.userAmountInEscrow[i][msg.sender] > 0) {
                _revert(IRainPool.UserBuyOrderExist.selector);
            }
            unchecked {
                ++i;
            }
        }

        uint256 liquidityReward;
        if (ds.totalLiquidity > 0) {
            liquidityReward = (ds.liquidityShare * ds.userLiquidity[msg.sender]) / ds.totalLiquidity;
        }
        uint256 reward;
        if (ds.totalVotes[ds.winner] > 0) {
            reward = (ds.userVotes[ds.winner][msg.sender] * ds.winningPoolShare) / ds.totalVotes[ds.winner];
        }
        uint256 totalReward = liquidityReward + reward;

        if (totalReward == 0 && msg.sender != ds.resolutionProposer) {
            _revert(IRainPool.IneligibleToClaim.selector);
        }

        IERC20(ds.baseToken).safeTransfer(msg.sender, totalReward);

        emit IRainPool.Claim(msg.sender, ds.winner, liquidityReward, reward, totalReward);
    }

    /**
     * @dev Performs required checks and state handling before the first claim.
     * Ensures the dispute window has ended or a winner is finalized.
     * Resolves disputes or appeals, distributes fees, refunds dispute costs,
     * and pays the resolver and oracle when applicable.
     */
    function _firstClaimCheck() private {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (ds.poolState == Types.PoolState.Disputed && ds.winner == 0) {
            _revert(IRainPool.WinnerNotDecided.selector);
        }

        _calculateAndDistributeFees();

        if (ds.poolState == Types.PoolState.Disputed && ds.winner != 0) {
            if (ds.winner != ds.dispute.disputedWinner) {
                IERC20(ds.baseToken).safeTransfer(ds.dispute.disputer, ds.dispute.disputeFee);
                emit IRainPool.DisputeFeeRefunded({
                    disputer: ds.dispute.disputer,
                    disputeFee: ds.dispute.disputeFee,
                    disputedWinner: ds.dispute.disputedWinner
                });
            } else {
                IERC20(ds.baseToken).safeTransfer(ds.dispute.resolver, ds.dispute.disputeFee);
                emit IRainPool.ResolverClaim({ wallet: ds.dispute.resolver, amount: ds.dispute.disputeFee });
            }
        }

        if (ds.poolState == Types.PoolState.Appealed && ds.winner == 0) {
            if (IQuestion(ds.resolver).winnerFinalized()) {
                ds.winner = IQuestion(ds.resolver).winnerOption();
                if (ds.winner <= 0 || ds.winner > ds.numberOfOptions) {
                    _revert(IRainPool.WinnerOutOfBound.selector);
                }
                if (ds.winner != ds.appeal.disputedWinner) {
                    IERC20(ds.baseToken).safeTransfer(ds.appeal.disputer, ds.appeal.disputeFee);
                    emit IRainPool.AppealFeeRefunded({
                        appealer: ds.appeal.disputer,
                        appealFee: ds.appeal.disputeFee,
                        appealedWinner: ds.appeal.disputedWinner
                    });
                } else {
                    IERC20(ds.baseToken).safeTransfer(ds.appeal.resolver, ds.appeal.disputeFee);
                    emit IRainPool.ResolverClaim({ wallet: ds.appeal.resolver, amount: ds.appeal.disputeFee });
                }
                emit IRainPool.ChooseWinnerAppeal(
                    ds.winner,
                    ds.platformShare + ds.orderBookShare,
                    ds.liquidityShare,
                    ds.winningPoolShare
                );
            } else if (IQuestion(ds.resolver).timeExtended() == 7 && !IQuestion(ds.resolver).winnerFinalized()) {
                try IQuestion(ds.resolver).calculateWinnerReadOnly() {
                    _revert(IRainPool.VotingEnded.selector);
                } catch {
                    IQuestion.ExternalSourceInfo memory externalSourceInfo = IQuestion(ds.resolver).getExternalSource();
                    if (block.timestamp < externalSourceInfo.endTime) {
                        _revert(IRainPool.OracleNotFinalized.selector);
                    }

                    ds.winner = ds.appeal.disputedWinner;
                    emit IRainPool.ChooseWinnerAppeal(
                        ds.winner,
                        ds.platformShare + ds.orderBookShare,
                        ds.liquidityShare,
                        ds.winningPoolShare
                    );
                }

                IQuestion(ds.resolver).refund();

                IERC20(ds.baseToken).safeTransfer(
                    ds.appeal.resolver,
                    ds.baseToken != ds.usdt ? ds.resolverShare : ds.resolverShareUSDT
                );
                IERC20(ds.usdt).safeTransfer(ds.appeal.resolver, ds.oracleFixedFee);
                IERC20(ds.baseToken).safeTransfer(ds.appeal.disputer, ds.appeal.disputeFee);
                emit IRainPool.AppealFeeRefunded({
                    appealer: ds.appeal.disputer,
                    appealFee: ds.appeal.disputeFee,
                    appealedWinner: ds.appeal.disputedWinner
                });
            } else {
                _revert(IRainPool.OracleNotFinalized.selector);
            }
        }

        if (ds.poolState == Types.PoolState.NotDisputed) {
            address resolver;
            if (!ds.resolverIsAI) {
                resolver = ds.resolutionProposer;
            } else {
                resolver = ds.resolver;
            }
            IERC20(ds.baseToken).safeTransfer(resolver, ds.resolverShare);
            IERC20(ds.usdt).safeTransfer(ds.resolver, ds.oracleFixedFee);

            if (ds.resolverIsAI) {
                emit IRainPool.ResolverClaim(resolver, ds.resolverShare + ds.oracleFixedFee);
            } else {
                emit IRainPool.ResolverClaim(resolver, ds.resolverShare);
            }
        }

        if (!ds.resolverIsAI && (ds.isDisputed || ds.isAppealed) && ds.winner != ds.proposedWinner) {
            IERC20(ds.baseToken).safeTransfer(ds.dispute.resolver, ds.closingShare);
        } else {
            _transferClosingRewards(ds.resolutionProposer, ds.closingShare);
        }
    }

    /**
     * @dev Handles refund or burn of the resolver bond after resolution.
     * Refunds the bond to the resolution proposer if the resolver is AI
     * or the proposed winner matches the finalized winner.
     * Otherwise, burns the bond when the proposal is incorrect.
     */
    function _refundResolverBond() private {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (ds.resolverIsAI || ds.proposedWinner == ds.winner) {
            IERC20(ds.baseToken).safeTransfer(ds.resolutionProposer, ds.resolverBond);
            emit IRainPool.ResolutionProposerRefund({
                resolutionProposer: ds.resolutionProposer,
                resolverBond: ds.resolverBond,
                proposedWinner: ds.proposedWinner
            });
        } else if (ds.resolverBond != 0 && !ds.resolverIsAI && (ds.isDisputed || ds.isAppealed)) {
            IERC20(ds.baseToken).safeTransfer(ds.dispute.resolver, ds.resolverBond);
        }
    }

    /**
     * @dev Calculates and distributes protocol fees from the total pooled funds.
     * Computes liquidity, creator, resolver, and platform shares using
     * magnified fee constants. Remaining funds are allocated to the
     * winning pool. Executes platform burn and creator/referrer claims.
     */
    function _calculateAndDistributeFees() private {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        uint256 totalBaseTokens = ds.allFunds;

        ds.liquidityShare = (totalBaseTokens * ds.liquidityFee) / ds.FEE_MAGNIFICATION;
        ds.creatorShare = (totalBaseTokens * ds.creatorFee) / ds.FEE_MAGNIFICATION;
        ds.resolverShare = (totalBaseTokens * ds.resultResolverFee) / ds.FEE_MAGNIFICATION;
        ds.platformShare = (totalBaseTokens * ds.platformFee) / ds.FEE_MAGNIFICATION;
        ds.closingShare = (totalBaseTokens * ds.closingFee) / ds.FEE_MAGNIFICATION;

        ds.winningPoolShare =
            totalBaseTokens -
            ds.platformShare -
            ds.liquidityShare -
            ds.creatorShare -
            ds.resolverShare -
            ds.closingShare;

        // Scope to avoid stack-too-deep error
        {
            LibUtils.swapAndBurn(
                ds.platformShare + ds.orderBookShare,
                ds.baseToken,
                ds.rainToken,
                ds.platformAddress,
                ds.tokenData
            );
            LibUtils.referrerCreatorClaim(ds.creatorShare, ds.referrer, ds.poolOwner, ds.baseToken);
        }
    }

    /**
     * @dev Transfers closing rewards in base tokens to the resolver and emits a `ClosingShareClaim` event.
     * @param resolver Address receiving the closing reward.
     * @param closingReward Amount of base tokens to transfer.
     */
    function _transferClosingRewards(address resolver, uint256 closingReward) private {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        IERC20(ds.baseToken).safeTransfer(resolver, closingReward);
        emit IRainPool.ClosingShareClaim(resolver, closingReward);
    }
}
