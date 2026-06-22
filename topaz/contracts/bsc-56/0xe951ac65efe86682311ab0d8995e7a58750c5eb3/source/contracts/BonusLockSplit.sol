// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

import {ITopaz} from "./interfaces/ITopaz.sol";
import {IVotingEscrow} from "./interfaces/IVotingEscrow.sol";
import {IVoter} from "./interfaces/IVoter.sol";
import {IRewardsDistributor} from "./interfaces/IRewardsDistributor.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IBonusLockSplit} from "./interfaces/IBonusLockSplit.sol";
import {IERC721Receiver} from "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import {ProtocolTimeLibrary} from "./libraries/ProtocolTimeLibrary.sol";

contract BonusLockSplit is IBonusLockSplit, Ownable, IERC721Receiver {
    /// @inheritdoc IBonusLockSplit
    ITopaz public immutable override topaz;
    /// @inheritdoc IBonusLockSplit
    IVotingEscrow public immutable override ve;

    /// @inheritdoc IBonusLockSplit
    uint256 public override depositedTokenId;
    /// @inheritdoc IBonusLockSplit
    uint256 public override remainingBalance;

    constructor(address _ve) {
        ve = IVotingEscrow(_ve);
        topaz = ITopaz(IVotingEscrow(_ve).token());
    }

    /// @inheritdoc IBonusLockSplit
    function depositVeNFT(uint256 _tokenId) external override onlyOwner {
        if (depositedTokenId != 0) revert InvalidParams();

        // Get the locked balance and verify it's permanent
        IVotingEscrow.LockedBalance memory locked = ve.locked(_tokenId);
        if (!locked.isPermanent) revert InvalidParams();
        if (locked.amount <= 0) revert InvalidParams();

        // Verify escrow type is NORMAL (not LOCKED or MANAGED)
        if (ve.escrowType(_tokenId) != IVotingEscrow.EscrowType.NORMAL) revert InvalidParams();

        // Check if splitting is enabled for this contract or globally
        // This contract will own the veNFT and perform the splits during distribution
        if (!ve.canSplit(address(this)) && !ve.canSplit(address(0))) revert SplitNotEnabled();

        address voter = ve.voter();

        // Check if we're in the distribute window (first hour of epoch)
        if (block.timestamp <= ProtocolTimeLibrary.epochVoteStart(block.timestamp)) {
            revert InDistributeWindow();
        }

        // If the veNFT has voted, verify we can reset it after transfer
        if (ve.voted(_tokenId)) {
            // Check if reset will be possible (must be new epoch since last vote)
            uint256 currentEpochStart = ProtocolTimeLibrary.epochStart(block.timestamp);
            uint256 lastVotedEpoch = IVoter(voter).lastVoted(_tokenId);

            if (currentEpochStart <= lastVotedEpoch) {
                // Cannot reset in the same epoch - must wait for next epoch
                revert VotedInCurrentEpoch();
            }
        }

        // Transfer the veNFT to this contract FIRST
        ve.safeTransferFrom(msg.sender, address(this), _tokenId);

        // Now we own the veNFT, perform necessary actions
        // Reset votes if the veNFT has voted (we already verified this is safe above)
        if (ve.voted(_tokenId)) {
            IVoter(voter).reset(_tokenId);
        }

        // Claim any pending rebases from the RewardsDistributor
        address distributor = ve.distributor();
        uint256 claimable = IRewardsDistributor(distributor).claimable(_tokenId);
        if (claimable > 0) {
            IRewardsDistributor(distributor).claim(_tokenId);
            // Refresh the locked balance after claiming
            locked = ve.locked(_tokenId);
        }

        // Store the deposited tokenId and balance (including any claimed rebases)
        depositedTokenId = _tokenId;
        remainingBalance = uint256(int256(locked.amount));

        emit VeNFTDeposited(_tokenId, remainingBalance);
    }

    /// @inheritdoc IBonusLockSplit
    function distributeTokens(address[] memory _wallets, uint256[] memory _amounts) external override onlyOwner {
        uint256 _len = _wallets.length;
        if (_len == 0) revert InvalidParams();
        if (_len != _amounts.length) revert InvalidParams();
        if (depositedTokenId == 0) revert NoVeNFTDeposited();

        uint256 _currentTokenId = depositedTokenId;

        // Verify we still own the deposited veNFT
        if (ve.ownerOf(_currentTokenId) != address(this)) revert NoVeNFTDeposited();

        // Check if we're in the distribute window (first hour of epoch)
        if (block.timestamp <= ProtocolTimeLibrary.epochVoteStart(block.timestamp)) {
            revert InDistributeWindow();
        }

        // Check that the veNFT hasn't voted - cannot split if voted
        if (ve.voted(_currentTokenId)) revert VeNFTHasVoted();

        // Claim any pending rebases first to ensure we have the maximum balance
        address distributor = ve.distributor();
        uint256 claimable = IRewardsDistributor(distributor).claimable(_currentTokenId);
        if (claimable > 0) {
            IRewardsDistributor(distributor).claim(_currentTokenId);
            // Update remaining balance with the actual locked amount after claiming
            IVotingEscrow.LockedBalance memory locked = ve.locked(_currentTokenId);
            remainingBalance = uint256(int256(locked.amount));
        }

        // Validate all wallets and amounts, and calculate total
        uint256 _sum;
        for (uint256 i = 0; i < _len; i++) {
            if (_wallets[i] == address(0)) revert ZeroAddress();
            if (_amounts[i] == 0) revert ZeroAmount();
            _sum += _amounts[i];
        }

        // Verify we have enough balance for the distribution
        if (_sum > remainingBalance) revert InsufficientBalance();

        // Perform the distributions
        for (uint256 i = 0; i < _len; i++) {
            address _wallet = _wallets[i];
            uint256 _amount = _amounts[i];

            // Split the veNFT - this creates two new NFTs and burns the original
            // _tokenId1 gets the remaining balance (original - _amount)
            // _tokenId2 gets the _amount
            // Since the original veNFT is permanent, BOTH splits will be permanent
            (uint256 _tokenId1, uint256 _tokenId2) = ve.split(_currentTokenId, _amount);

            // Verify we own both tokens after split
            if (ve.ownerOf(_tokenId1) != address(this)) revert SplitFailed();
            if (ve.ownerOf(_tokenId2) != address(this)) revert SplitFailed();

            // Update state after split (balance has been split off from _currentTokenId)
            remainingBalance -= _amount;

            // Try to transfer the split portion to recipient
            // Using try-catch so one failed recipient doesn't break the entire distribution
            try ve.safeTransferFrom(address(this), _wallet, _tokenId2) {
                // Transfer succeeded
                emit BonusDistributed(_wallet, _amount, _tokenId2);
            } catch {
                // Transfer failed - token remains in contract
                // This can happen if recipient is a contract that doesn't implement ERC721Receiver
                emit BonusDistributionFailed(_wallet, _amount, _tokenId2);
            }

            // Update current token for next iteration
            _currentTokenId = _tokenId1;
        }

        // Verify the remaining token balance matches our accounting
        IVotingEscrow.LockedBalance memory finalLock = ve.locked(_currentTokenId);
        uint256 actualRemaining = uint256(int256(finalLock.amount));

        // Update to actual remaining balance from the veNFT (should match our accounting)
        if (actualRemaining != remainingBalance) {
            // This should not happen, but if it does, use the actual balance
            remainingBalance = actualRemaining;
        }

        // Update state with the new tokenId that holds the remainder
        depositedTokenId = _currentTokenId;
    }

    /// @inheritdoc IBonusLockSplit
    function withdrawVeNFT(address _recipient) external override onlyOwner {
        if (_recipient == address(0)) revert InvalidRecipient();
        if (depositedTokenId == 0) revert NoVeNFTDeposited();

        uint256 _tokenId = depositedTokenId;

        // FIX: Verify we still own the token before attempting withdrawal
        if (ve.ownerOf(_tokenId) != address(this)) revert NoVeNFTDeposited();

        // Reset state BEFORE external call (checks-effects-interactions)
        depositedTokenId = 0;
        remainingBalance = 0;

        // Transfer the veNFT back
        ve.safeTransferFrom(address(this), _recipient, _tokenId);

        emit VeNFTWithdrawn(_tokenId, _recipient);
    }

    /// @inheritdoc IBonusLockSplit
    function recoverFailedTransfer(uint256 _tokenId, address _recipient) external override onlyOwner {
        if (_recipient == address(0)) revert InvalidRecipient();

        // Verify we own this token
        if (ve.ownerOf(_tokenId) != address(this)) revert NotOwned();

        // Verify this is not the main deposited token (that should use withdrawVeNFT)
        if (_tokenId == depositedTokenId) revert InvalidParams();

        // Try to transfer - using try-catch in case recipient still can't receive
        try ve.safeTransferFrom(address(this), _recipient, _tokenId) {
            emit FailedTransferRecovered(_tokenId, _recipient);
        } catch {
            // If safeTransferFrom still fails, try regular transferFrom as last resort
            ve.transferFrom(address(this), _recipient, _tokenId);
            emit FailedTransferRecovered(_tokenId, _recipient);
        }
    }

    /// @notice ERC721 receiver function to accept veNFT transfers
    function onERC721Received(
        address,
        address,
        uint256,
        bytes calldata
    ) external pure override returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
