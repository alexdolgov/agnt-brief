// SPDX-License-Identifier: MIT

pragma solidity ^0.8.26;

import { IERC20, SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

import { IResolution } from "../interfaces/IResolution.sol";

import { Types } from "../shared/Types.sol";

import { LibUtils } from "../libraries/LibUtils.sol";

import { LibDiamond } from "../libraries/LibDiamond.sol";

import { IRainPool } from "../../interfaces/IRainPool.sol";

import { _revert } from "../../utils/Globals.sol";

/**
 * @title ResolutionFacet
 * @author Rain Team
 * @notice External interface for the rain pool resolution facet.
 */
contract ResolutionFacet is IResolution {
    using SafeERC20 for IERC20;

    /**
     * @inheritdoc IResolution
     */
    function closePool() external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (block.timestamp <= ds.startTime) {
            _revert(IRainPool.SaleStillLive.selector);
        }
        if (ds.poolFinalized) {
            _revert(IRainPool.PoolClosed.selector);
        }
        if (!ds.resolverIsAI) {
            _revert(IRainPool.InvalidCall.selector);
        }

        // caller will become the new resolution proposer.
        ds.resolutionProposer = msg.sender;

        if (msg.sender != ds.poolOwner && msg.sender != ds.resolver) {
            _calculateAndEscrowBond();
        }

        ds.poolFinalized = true;
        ds.endTimeCache = ds.endTime;
        ds.endTime = block.timestamp;

        emit IRainPool.ClosePool(ds.poolFinalized);
        emit IRainPool.ResolutionProposed({
            resolutionProposer: ds.resolutionProposer,
            resolverBond: ds.resolverBond,
            proposedWinner: ds.proposedWinner
        });
    }

    /**
     * @inheritdoc IResolution
     */
    function closePool(uint256 proposedWinner) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (block.timestamp <= ds.startTime) {
            _revert(IRainPool.SaleStillLive.selector);
        }
        if (ds.poolFinalized) {
            _revert(IRainPool.PoolClosed.selector);
        }
        if (ds.resolverIsAI) {
            _revert(IRainPool.InvalidCall.selector);
        }

        // caller will become the new resolution proposer.
        ds.resolutionProposer = msg.sender;

        if (msg.sender != ds.poolOwner && msg.sender != ds.resolver) {
            _calculateAndEscrowBond();
        }

        _calculatePoolFees();

        ds.poolFinalized = true;
        ds.endTimeCache = ds.endTime;
        ds.endTime = block.timestamp;
        ds.winner = proposedWinner;
        ds.proposedWinner = proposedWinner;

        emit IRainPool.ClosePool(ds.poolFinalized);
        emit IRainPool.ChooseWinner(ds.winner, ds.platformShare, ds.liquidityShare, ds.winningPoolShare);
        emit IRainPool.ResolutionProposed({
            resolutionProposer: ds.resolutionProposer,
            resolverBond: ds.resolverBond,
            proposedWinner: ds.proposedWinner
        });
    }

    /**
     * @inheritdoc IResolution
     */
    function chooseWinner(uint256 option) external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (msg.sender != ds.resolver) {
            _revert(IRainPool.OnlyResolver.selector);
        }
        if (ds.winner != 0) {
            _revert(IRainPool.WinnerAlreadyFinalized.selector);
        }
        if (!ds.poolFinalized) {
            _revert(IRainPool.PoolOpen.selector);
        }
        if (option <= 0 || option > ds.numberOfOptions) {
            _revert(IRainPool.InvalidOption.selector);
        }
        if (!ds.resolverIsAI && ds.poolState == Types.PoolState.NotDisputed) {
            _revert(IRainPool.InvalidCall.selector);
        }

        _calculatePoolFees();

        if (ds.poolState == Types.PoolState.NotDisputed) {
            emit IRainPool.ChooseWinner({
                winnerOption: option,
                platformShare: ds.platformShare + ds.orderBookShare,
                liquidityShare: ds.liquidityShare,
                winningShare: ds.winningPoolShare
            });
        } else if (ds.poolState == Types.PoolState.Disputed) {
            ds.endTime = block.timestamp;

            emit IRainPool.ChooseWinnerDispute({
                winnerOption: option,
                platformShare: ds.platformShare + ds.orderBookShare,
                liquidityShare: ds.liquidityShare,
                winningShare: ds.winningPoolShare
            });
        }

        ds.winner = option;
    }

    /**
     * @inheritdoc IResolution
     */
    function tooEarly() external {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        if (msg.sender != ds.resolver) {
            _revert(IRainPool.OnlyResolver.selector);
        }
        if (!ds.poolFinalized) {
            _revert(IRainPool.PoolOpen.selector);
        }

        if (ds.resolverBond > 0) {
            IERC20(ds.baseToken).safeTransfer(ds.resolver, ds.resolverBond);
        }

        emit IRainPool.TooEarly({
            resolutionProposer: ds.resolutionProposer,
            resolverBond: ds.resolverBond,
            proposedWinner: ds.proposedWinner
        });

        ds.resolutionProposer = address(0);
        ds.resolverBond = 0;
        ds.poolFinalized = false;
        ds.winner = 0;
        ds.proposedWinner = 0;
        ds.endTime = ds.endTimeCache;
        ds.endTimeCache = 0;

        if (ds.poolState == Types.PoolState.Disputed) {
            ds.resolver = ds.dispute.resolver;
            emit IRainPool.ResolverSet({ resolver: ds.resolver });

            IERC20(ds.baseToken).safeTransfer(ds.dispute.disputer, ds.dispute.disputeFee);
            emit IRainPool.DisputeFeeRefunded({
                disputer: ds.dispute.disputer,
                disputeFee: ds.dispute.disputeFee,
                disputedWinner: ds.dispute.disputedWinner
            });

            delete ds.dispute;
            ds.poolState = Types.PoolState.NotDisputed;
            ds.isDisputed = false;
        }
    }

    /**
     * @notice Calculates and escrows the resolver bond.
     * @dev Bond is derived from total pool funds and clamped between
     *      minimum and maximum resolution fees. For non-USDT base
     *      tokens, limits are enforced using price quotes. Transfers
     *      the bond from the caller to the contract.
     */
    function _calculateAndEscrowBond() internal {
        LibDiamond.DiamondStorage storage ds = LibDiamond.diamondStorage();

        ds.resolverBond = (ds.allFunds * 1) / 1000;

        if (ds.baseToken != ds.usdt) {
            uint256 disputeFeeInUSDT = LibUtils.getQuoteOut(ds.baseToken, ds.resolverBond, ds.tokenData);

            if (disputeFeeInUSDT > ds.RESOLUTION_FEE_MAX) {
                ds.resolverBond = LibUtils.getQuoteIn(ds.baseToken, ds.RESOLUTION_FEE_MAX, ds.tokenData);
            } else if (disputeFeeInUSDT < ds.RESOLUTION_FEE_MIN) {
                ds.resolverBond = LibUtils.getQuoteIn(ds.baseToken, ds.RESOLUTION_FEE_MIN, ds.tokenData);
            }
        } else {
            if (ds.resolverBond > ds.RESOLUTION_FEE_MAX) {
                ds.resolverBond = ds.RESOLUTION_FEE_MAX;
            } else if (ds.resolverBond < ds.RESOLUTION_FEE_MIN) {
                ds.resolverBond = ds.RESOLUTION_FEE_MIN;
            }
        }

        IERC20(ds.baseToken).safeTransferFrom(msg.sender, address(this), ds.resolverBond);
    }

    function _calculatePoolFees() private {
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
    }
}
