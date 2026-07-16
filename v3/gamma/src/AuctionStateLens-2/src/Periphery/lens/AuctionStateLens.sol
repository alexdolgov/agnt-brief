// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.26;

import {IContinuousClearingAuction} from "continuous-clearing-auction/src/interfaces/IContinuousClearingAuction.sol";
import {Tick} from "continuous-clearing-auction/src/interfaces/ITickStorage.sol";
import {Bid} from "continuous-clearing-auction/src/libraries/BidLib.sol";
import {Checkpoint} from "continuous-clearing-auction/src/libraries/CheckpointLib.sol";
import {CheckpointAccountingLib} from "continuous-clearing-auction/src/libraries/CheckpointAccountingLib.sol";
import {FixedPoint96} from "continuous-clearing-auction/src/libraries/FixedPoint96.sol";

/// @notice The state of the auction containing the latest checkpoint
/// as well as the currency raised, total cleared, and whether the auction has graduated
struct AuctionState {
    Checkpoint checkpoint;
    uint256 currencyRaised;
    uint256 totalCleared;
    bool isGraduated;
}

/// @notice Preview values for exiting a bid without mutating state
struct BidExitPreview {
    uint256 bidId;
    address owner;
    uint256 maxPrice;
    uint256 amount;
    uint256 tokensFilled;
    uint256 currencyRefunded;
    uint256 currencySpent;
    uint64 lastFullyFilledCheckpoint;
    uint64 outbidBlock;
    bool isGraduated;
    bool isExited;
    bool isPartial;
}

/// @title AuctionStateLens
/// @notice Lens contract for reading the state of the Auction contract
contract AuctionStateLens {
    /// @notice Error thrown when the checkpoint fails
    error CheckpointFailed();
    /// @notice Error thrown when the revert reason is not the correct length
    error InvalidRevertReasonLength();

    /// @notice Function which can be called from offchain to get the latest state of the auction
    function state(IContinuousClearingAuction auction) external returns (AuctionState memory) {
        try this.revertWithState(auction) {}
        catch (bytes memory reason) {
            return parseRevertReason(reason);
        }
    }

    /// @notice Preview a bid exit without modifying auction state
    function previewExit(IContinuousClearingAuction auction, uint256 bidId)
        external
        returns (BidExitPreview memory)
    {
        try this.revertWithPreviewExit(auction, bidId) {}
        catch (bytes memory reason) {
            return parseExitPreviewReason(reason);
        }
    }

    /// @notice Preview multiple bid exits without modifying auction state
    function previewExitBatch(IContinuousClearingAuction auction, uint256[] calldata bidIds)
        external
        returns (BidExitPreview[] memory)
    {
        try this.revertWithPreviewExitBatch(auction, bidIds) {}
        catch (bytes memory reason) {
            return parseExitPreviewBatchReason(reason);
        }
    }

    /// @notice Function which checkpoints the auction, gets global values and encodes them into a revert string
    function revertWithState(IContinuousClearingAuction auction) external {
        try auction.checkpoint() returns (Checkpoint memory checkpoint) {
            AuctionState memory _state = AuctionState({
                checkpoint: checkpoint,
                currencyRaised: auction.currencyRaised(),
                totalCleared: auction.totalCleared(),
                isGraduated: auction.isGraduated()
            });
            bytes memory dump = abi.encode(_state);

            assembly {
                revert(add(dump, 32), mload(dump))
            }
        } catch {
            revert CheckpointFailed();
        }
    }

    /// @notice Checkpoints the auction and encodes a preview of the bid exit into a revert string
    function revertWithPreviewExit(IContinuousClearingAuction auction, uint256 bidId) external {
        try auction.checkpoint() returns (Checkpoint memory checkpoint) {
            uint64 checkpointBlock = auction.lastCheckpointedBlock();
            bool isGraduated = auction.isGraduated();
            BidExitPreview memory preview = _previewExit(auction, bidId, checkpoint, checkpointBlock, isGraduated);
            bytes memory dump = abi.encode(preview);

            assembly {
                revert(add(dump, 32), mload(dump))
            }
        } catch {
            revert CheckpointFailed();
        }
    }

    /// @notice Checkpoints the auction and encodes previews for multiple bid exits into a revert string
    function revertWithPreviewExitBatch(IContinuousClearingAuction auction, uint256[] calldata bidIds) external {
        try auction.checkpoint() returns (Checkpoint memory checkpoint) {
            uint64 checkpointBlock = auction.lastCheckpointedBlock();
            bool isGraduated = auction.isGraduated();
            BidExitPreview[] memory previews = new BidExitPreview[](bidIds.length);

            for (uint256 i = 0; i < bidIds.length; i++) {
                previews[i] = _previewExit(auction, bidIds[i], checkpoint, checkpointBlock, isGraduated);
            }

            bytes memory dump = abi.encode(previews);
            assembly {
                revert(add(dump, 32), mload(dump))
            }
        } catch {
            revert CheckpointFailed();
        }
    }

    /// @notice Function which parses the revert reason and returns the AuctionState
    function parseRevertReason(bytes memory reason) internal pure returns (AuctionState memory) {
        if (reason.length != 288) {
            // Bubble up the revert reason if possible
            if (reason.length > 32) {
                assembly {
                    revert(add(reason, 32), mload(reason))
                }
            } else {
                // If the revert reason is too short revert
                revert InvalidRevertReasonLength();
            }
        }
        return abi.decode(reason, (AuctionState));
    }

    /// @notice Function which parses the revert reason and returns the BidExitPreview
    function parseExitPreviewReason(bytes memory reason) internal pure returns (BidExitPreview memory) {
        if (reason.length != 384) {
            if (reason.length > 32) {
                assembly {
                    revert(add(reason, 32), mload(reason))
                }
            } else {
                revert InvalidRevertReasonLength();
            }
        }
        return abi.decode(reason, (BidExitPreview));
    }

    /// @notice Function which parses the revert reason and returns the BidExitPreview array
    function parseExitPreviewBatchReason(bytes memory reason) internal pure returns (BidExitPreview[] memory) {
        if (reason.length <= 32) {
            revert InvalidRevertReasonLength();
        }
        return abi.decode(reason, (BidExitPreview[]));
    }

    function _previewExit(
        IContinuousClearingAuction auction,
        uint256 bidId,
        Checkpoint memory finalCheckpoint,
        uint64 finalBlock,
        bool isGraduated
    ) internal view returns (BidExitPreview memory preview) {
        Bid memory bid = auction.bids(bidId);

        preview.bidId = bidId;
        preview.owner = bid.owner;
        preview.maxPrice = bid.maxPrice;
        preview.amount = bid.amountQ96 >> FixedPoint96.RESOLUTION;
        preview.isGraduated = isGraduated;
        preview.isExited = bid.exitedBlock != 0;

        if (!isGraduated) {
            preview.currencyRefunded = preview.amount;
            return preview;
        }

        Checkpoint memory startCheckpoint = auction.checkpoints(bid.startBlock);
        Checkpoint memory upperCheckpoint = finalCheckpoint;
        uint64 upperBlock = finalBlock;

        if (bid.maxPrice <= finalCheckpoint.clearingPrice) {
            while (upperCheckpoint.clearingPrice > bid.maxPrice && upperCheckpoint.prev != 0) {
                upperBlock = upperCheckpoint.prev;
                upperCheckpoint = auction.checkpoints(upperBlock);
            }
        }

        Checkpoint memory lastFullyFilledCheckpoint = upperCheckpoint;
        uint64 lastFullyFilledBlock = upperBlock;

        if (upperCheckpoint.clearingPrice == bid.maxPrice) {
            while (lastFullyFilledCheckpoint.prev != 0) {
                uint64 prevBlock = lastFullyFilledCheckpoint.prev;
                if (prevBlock < bid.startBlock) {
                    lastFullyFilledCheckpoint = startCheckpoint;
                    lastFullyFilledBlock = bid.startBlock;
                    break;
                }
                Checkpoint memory prevCheckpoint = auction.checkpoints(prevBlock);
                lastFullyFilledCheckpoint = prevCheckpoint;
                lastFullyFilledBlock = prevBlock;
                if (prevCheckpoint.clearingPrice < bid.maxPrice) {
                    break;
                }
            }
        }

        if (lastFullyFilledBlock < bid.startBlock) {
            lastFullyFilledCheckpoint = startCheckpoint;
            lastFullyFilledBlock = bid.startBlock;
        }

        uint64 outbidBlock = 0;
        if (finalCheckpoint.clearingPrice > bid.maxPrice) {
            outbidBlock = upperCheckpoint.next;
        }

        preview.lastFullyFilledCheckpoint = lastFullyFilledBlock;
        preview.outbidBlock = outbidBlock;
        preview.isPartial = upperCheckpoint.clearingPrice == bid.maxPrice;

        (uint256 tokensFilled, uint256 currencySpentQ96) =
            CheckpointAccountingLib.accountFullyFilledCheckpoints(lastFullyFilledCheckpoint, startCheckpoint, bid);

        if (upperCheckpoint.clearingPrice == bid.maxPrice) {
            Tick memory tick = auction.ticks(bid.maxPrice);
            (uint256 partialTokensFilled, uint256 partialCurrencySpentQ96) = CheckpointAccountingLib
                .accountPartiallyFilledCheckpoints(
                    bid, tick.currencyDemandQ96, upperCheckpoint.currencyRaisedAtClearingPriceQ96_X7
                );
            tokensFilled += partialTokensFilled;
            currencySpentQ96 += partialCurrencySpentQ96;
        }

        if (currencySpentQ96 > bid.amountQ96) {
            currencySpentQ96 = bid.amountQ96;
        }

        uint256 refund = (bid.amountQ96 - currencySpentQ96) >> FixedPoint96.RESOLUTION;

        preview.tokensFilled = tokensFilled;
        preview.currencyRefunded = refund;
        preview.currencySpent = preview.amount - refund;
    }
}
