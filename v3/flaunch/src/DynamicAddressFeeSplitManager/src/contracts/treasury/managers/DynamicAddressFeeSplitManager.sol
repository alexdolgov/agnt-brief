// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import {EnumerableSet} from '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

import {FullMath} from '@uniswap/v4-core/src/libraries/FullMath.sol';

import {FeeSplitManager} from '@flaunch/treasury/managers/FeeSplitManager.sol';
import {ITreasuryManager} from '@flaunch-interfaces/ITreasuryManager.sol';


/**
 * Allows multiple recipient addresses to be allocated a share of the revenue earned from
 * memestreams held within the manager. Unlike {AddressFeeSplitManager}, this contract allows
 * recipients to be dynamically added and removed while preserving accrued fees.
 *
 * Uses a "fees per share" accumulator pattern for O(1) gas complexity on all operations,
 * regardless of the number of recipients.
 */
contract DynamicAddressFeeSplitManager is FeeSplitManager {

    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;

    error InsufficientSharesToTransfer();
    error InvalidShareTransferRecipient();
    error RecipientAlreadyActive();
    error RecipientNotActive();
    error InvalidShareAmount();
    error NotOwnerOrModerator();

    event ManagerInitialized(address _owner, InitializeParams _params);
    event ModeratorUpdated(address indexed _oldModerator, address indexed _newModerator);
    event RecipientAdded(address indexed _recipient, uint _share);
    event RecipientRemoved(address indexed _recipient, uint _snapshotBalance);
    event RecipientShareUpdated(address indexed _recipient, uint _oldShare, uint _newShare);
    event RecipientShareTransferred(address indexed _oldRecipient, address indexed _newRecipient, uint _share);
    event RevenueClaimed(address indexed _recipient, uint _amountClaimed);
    event RoundingDustAllocated(address indexed _recipient, uint _amount);

    /**
     * Parameters passed during manager initialization.
     *
     * @member creatorShare The share that a creator will earn from their token
     * @member ownerShare The share that the manager owner will earn from their token
     * @member moderator Address that can manage recipients (can be address(0) if not needed)
     * @member recipientShares Revenue recipients and their share
     */
    struct InitializeParams {
        uint creatorShare;
        uint ownerShare;
        address moderator;
        RecipientShare[] recipientShares;
    }

    /**
     * Defines a revenue recipient and the share that they will receive.
     *
     * @member recipient The share recipient of revenue
     * @member share The share weight that the recipient will receive (not a percentage)
     */
    struct RecipientShare {
        address recipient;
        uint share;
    }

    /**
     * Stores per-recipient accounting information.
     *
     * @member share Current share weight (0 if removed)
     * @member debtPerShare Accumulator snapshot when recipient was added/modified
     * @member snapshotBalance Frozen balance when share was removed (preserves claim)
     * @member claimed Total amount claimed by this recipient
     */
    struct RecipientInfo {
        uint share;
        uint debtPerShare;
        uint snapshotBalance;
        uint claimed;
    }

    /// Precision scalar for accumulator calculations (1e18)
    uint private constant PRECISION = 1e18;

    /// Global accumulator: cumulative fees per share unit (scaled by PRECISION)
    uint public accumulatorPerShare;

    /// The last processed manager fees value (for computing deltas)
    uint public lastProcessedManagerFees;

    /// Sum of all active recipient shares
    uint public totalActiveShares;

    /// Per-recipient accounting
    mapping(address _recipient => RecipientInfo) public recipients;

    /// Set of all recipients that have ever been added (for enumeration if needed)
    EnumerableSet.AddressSet private _allRecipients;

    /// The moderator address that can manage recipient shares (optional)
    address public moderator;

    /**
     * Restricts function access to the manager owner or moderator.
     */
    modifier onlyManagerOwnerOrModerator() {
        if (msg.sender != managerOwner && msg.sender != moderator) {
            revert NotOwnerOrModerator();
        }
        _;
    }

    /**
     * Sets up the contract with the initial required contract addresses.
     *
     * @param _treasuryManagerFactory The {TreasuryManagerFactory} that will launch this implementation
     * @param _feeEscrowRegistry The {FeeEscrowRegistry} that will be used to withdraw fees
     */
    constructor(address _treasuryManagerFactory, address _feeEscrowRegistry)
        FeeSplitManager(_treasuryManagerFactory, _feeEscrowRegistry)
    {
        // ..
    }

    /**
     * Registers the owner of the manager and assigns the initial recipients and their
     * respective shares.
     *
     * @dev Unlike {AddressFeeSplitManager}, recipients can be modified after initialization.
     *
     * @param _owner Owner of the manager
     * @param _data Initialization variables
     */
    function _initialize(address _owner, bytes calldata _data) internal override {
        // Unpack our initial manager settings
        (InitializeParams memory params) = abi.decode(_data, (InitializeParams));

        // Validate and set our creator and owner shares
        _setShares(params.creatorShare, params.ownerShare);

        // Set the moderator if provided
        if (params.moderator != address(0)) {
            moderator = params.moderator;
            emit ModeratorUpdated(address(0), params.moderator);
        }

        // We emit our initialization event first, as the subgraph may need this information
        // indexed before we emit recipient share events.
        emit ManagerInitialized(_owner, params);

        // Add initial recipients if provided
        for (uint i; i < params.recipientShares.length; ++i) {
            RecipientShare memory _recipientShare = params.recipientShares[i];

            // Ensure that the recipient is not a zero address
            if (_recipientShare.recipient == address(0)) {
                revert InvalidRecipient();
            }

            // Ensure that the share is valid
            if (_recipientShare.share == 0) {
                revert InvalidShareAmount();
            }

            // Ensure that the recipient is not already added
            if (recipients[_recipientShare.recipient].share != 0) {
                revert RecipientAlreadyActive();
            }

            // Add the recipient with their share
            recipients[_recipientShare.recipient] = RecipientInfo({
                share: _recipientShare.share,
                debtPerShare: 0, // No fees accrued yet at initialization
                snapshotBalance: 0,
                claimed: 0
            });

            totalActiveShares += _recipientShare.share;
            _allRecipients.add(_recipientShare.recipient);

            emit RecipientAdded(_recipientShare.recipient, _recipientShare.share);
        }
    }

    /**
     * Updates the global accumulator to account for any new fees since last update.
     * This must be called before any share modifications or claims.
     */
    function _updateAccumulator() internal {
        uint currentFees = managerFees();
        if (currentFees > lastProcessedManagerFees) {
            // Preserve unprocessed fees when there are no active recipients so they can
            // be distributed once recipients become active again.
            if (totalActiveShares == 0) {
                return;
            }

            uint newFees = currentFees - lastProcessedManagerFees;
            uint incrementPerShare = FullMath.mulDiv(newFees, PRECISION, totalActiveShares);
            accumulatorPerShare += incrementPerShare;

            // Dust that cannot be represented by the accumulator is explicitly routed
            // by policy: managerOwner -> moderator -> ignored.
            uint representedFees = FullMath.mulDiv(incrementPerShare, totalActiveShares, PRECISION);
            uint roundingDust = newFees - representedFees;
            if (roundingDust != 0) {
                _handleRoundingDust(roundingDust);
            }

            lastProcessedManagerFees = currentFees;
        }
    }

    /**
     * Routes rounding dust according to manager policy.
     *
     * Priority:
     * 1) managerOwner
     * 2) moderator
     * 3) ignored (explicitly tracked)
     *
     * @param _roundingDust The unallocatable fee amount from accumulator rounding
     */
    function _handleRoundingDust(uint _roundingDust) internal {
        if (managerOwner != address(0)) {
            _ownerFees += _roundingDust;
            emit RoundingDustAllocated(managerOwner, _roundingDust);
            return;
        }

        if (moderator != address(0)) {
            // Ensure the moderator is enumerable as a recipient when they receive dust.
            _allRecipients.add(moderator);
            recipients[moderator].snapshotBalance += _roundingDust;
            emit RoundingDustAllocated(moderator, _roundingDust);
            return;
        }

        emit RoundingDustAllocated(address(0), _roundingDust);
    }

    /**
     * Calculates the current accumulator value including any pending fees.
     * This is a view function that simulates the accumulator update.
     *
     * @return currentAccumulator_ The current accumulator value
     */
    function _currentAccumulator() internal view returns (uint currentAccumulator_) {
        currentAccumulator_ = accumulatorPerShare;
        uint currentFees = managerFees();
        if (currentFees > lastProcessedManagerFees && totalActiveShares > 0) {
            uint newFees = currentFees - lastProcessedManagerFees;
            currentAccumulator_ += FullMath.mulDiv(newFees, PRECISION, totalActiveShares);
        }
    }

    /**
     * Sets the moderator address that can manage recipient shares.
     *
     * @dev Can only be called by the manager owner.
     * @dev Set to address(0) to disable the moderator role.
     *
     * @param _moderator The new moderator address
     */
    function setModerator(address _moderator) external onlyManagerOwner {
        address oldModerator = moderator;
        moderator = _moderator;
        emit ModeratorUpdated(oldModerator, _moderator);
    }

    /**
     * Calculates pending share balance for a recipient.
     *
     * @param _recipient The recipient to calculate for
     *
     * @return balance_ The pending share balance
     */
    function _pendingShareBalance(address _recipient) internal view returns (uint balance_) {
        RecipientInfo storage info = recipients[_recipient];
        uint currentAccumulator = _currentAccumulator();

        // Calculate earnings from active share
        if (info.share > 0) {
            uint accumulatorDelta = currentAccumulator - info.debtPerShare;
            balance_ = FullMath.mulDiv(accumulatorDelta, info.share, PRECISION);
        }

        // Add any frozen snapshot balance and subtract already claimed
        balance_ += info.snapshotBalance;
        balance_ -= info.claimed;
    }

    /**
     * Updates recipients by adding, updating, or removing them in a single transaction.
     *
     * @dev Can only be called by the manager owner or moderator.
     * @dev If `share` is 0, the recipient is removed. If `share` is non-zero and the recipient
     * is not active, they are added. If `share` is non-zero and the recipient is already active,
     * their share is updated.
     *
     * @param _recipients Array of recipients and their target shares
     */
    function updateRecipients(RecipientShare[] calldata _recipients) external onlyManagerOwnerOrModerator {
        _updateAccumulator();
        for (uint i; i < _recipients.length; ++i) {
            address recipient = _recipients[i].recipient;
            uint share = _recipients[i].share;

            if (recipient == address(0)) {
                revert InvalidRecipient();
            }

            if (share == 0) {
                _removeRecipient(recipient);
            } else if (recipients[recipient].share == 0) {
                _addRecipient(recipient, share);
            } else {
                _updateRecipientShare(recipient, share);
            }
        }
    }

    /**
     * Internal function to add a recipient without updating the accumulator.
     *
     * @param _recipient The address to add as a recipient
     * @param _share The share weight to assign
     */
    function _addRecipient(address _recipient, uint _share) internal {
        if (_recipient == address(0)) {
            revert InvalidRecipient();
        }

        RecipientInfo storage info = recipients[_recipient];

        info.share = _share;
        info.debtPerShare = accumulatorPerShare;

        totalActiveShares += _share;
        _allRecipients.add(_recipient);

        emit RecipientAdded(_recipient, _share);
    }

    /**
     * Internal function to remove a recipient without updating the accumulator.
     *
     * @param _recipient The address to remove
     */
    function _removeRecipient(address _recipient) internal {
        RecipientInfo storage info = recipients[_recipient];

        if (info.share == 0) {
            revert RecipientNotActive();
        }

        uint accumulatorDelta = accumulatorPerShare - info.debtPerShare;
        uint pendingEarnings = FullMath.mulDiv(accumulatorDelta, info.share, PRECISION);
        info.snapshotBalance += pendingEarnings;

        totalActiveShares -= info.share;
        info.share = 0;
        info.debtPerShare = 0;

        emit RecipientRemoved(_recipient, info.snapshotBalance);
    }

    /**
     * Internal function to update a recipient's share without updating the accumulator.
     *
     * @param _recipient The recipient to update
     * @param _newShare The new share weight
     */
    function _updateRecipientShare(address _recipient, uint _newShare) internal {
        RecipientInfo storage info = recipients[_recipient];

        uint accumulatorDelta = accumulatorPerShare - info.debtPerShare;
        uint pendingEarnings = FullMath.mulDiv(accumulatorDelta, info.share, PRECISION);
        info.snapshotBalance += pendingEarnings;

        uint oldShare = info.share;
        totalActiveShares = totalActiveShares - oldShare + _newShare;

        info.share = _newShare;
        info.debtPerShare = accumulatorPerShare;

        emit RecipientShareUpdated(_recipient, oldShare, _newShare);
    }

    /**
     * Finds the ETH balance that is claimable by the `_recipient`.
     *
     * @param _recipient The account to find the balance of
     *
     * @return balance_ The amount of ETH available to claim by the `_recipient`
     */
    function balances(address _recipient) public view override returns (uint balance_) {
        (uint shareBalance, uint creatorBalance, uint ownerBalance) = _balances(_recipient);
        balance_ = shareBalance + creatorBalance + ownerBalance;
    }

    /**
     * Finds a breakdown of balances available to the recipient for both their share and also
     * the allocation from any tokens that they are the creator of.
     *
     * @param _recipient The account to find the balances of
     *
     * @return shareBalance_ The balance available from the `recipientShare`
     * @return creatorBalance_ The balance available from creator fees
     * @return ownerBalance_ The balance available from owner fees
     */
    function _balances(address _recipient) internal view returns (uint shareBalance_, uint creatorBalance_, uint ownerBalance_) {
        // Calculate share balance using accumulator pattern
        shareBalance_ = _pendingShareBalance(_recipient);

        // Check creator balance
        creatorBalance_ = pendingCreatorFees(_recipient);

        // Check owner balance
        if (_recipient == managerOwner) {
            ownerBalance_ = claimableOwnerFees();
        }
    }

    /**
     * Allows for a claim call to be made without requiring any additional requirements for
     * bytes to be passed, as these would always be unused for this FeeSplit Manager.
     *
     * @return uint The amount claimed from the call
     */
    function claim() public returns (uint) {
        return _claim(bytes(''));
    }

    /**
     * Allows a recipient to claim while specifying an optional subset of creator tokens.
     *
     * @dev If `_data` contains encoded `ITreasuryManager.FlaunchToken[]`, only those creator
     * tokens are claimed. If `_data` is empty, all creator tokens for the recipient are claimed.
     *
     * @param _data Encoded `ITreasuryManager.FlaunchToken[]` for creator claims
     *
     * @return uint The amount claimed from the call
     */
    function claim(bytes calldata _data) public returns (uint) {
        return _claim(_data);
    }

    /**
     * Gets the share weight that a recipient address is currently allocated.
     *
     * @dev Unlike {AddressFeeSplitManager}, this returns the share weight, not a percentage.
     * The total of all active shares is stored in `totalActiveShares`.
     *
     * @param _recipient The recipient address to check against
     *
     * @return uint The share weight that the recipient is allocated
     */
    function recipientShare(address _recipient, bytes memory /* _data */) public view override returns (uint) {
        return recipients[_recipient].share;
    }

    /**
     * Checks if the recipient has either been given a share, has unclaimed fees from a
     * previous share, has any tokens that they created held in the manager, or is the
     * manager owner.
     *
     * @param _recipient The recipient address to check against
     *
     * @return bool If the recipient is valid to receive an allocation
     */
    function isValidRecipient(address _recipient, bytes memory /* _data */) public view override returns (bool) {
        RecipientInfo storage info = recipients[_recipient];

        // Check if they have an active share
        if (info.share != 0) return true;

        // Check if they have unclaimed snapshot balance
        if (info.snapshotBalance > info.claimed) return true;

        // Check if they have creator tokens
        if (_creatorTokens[_recipient].length() != 0) return true;

        // Check if they are the manager owner
        if (_recipient == managerOwner) return true;

        return false;
    }

    /**
     * This function calculates the allocation that the recipient is owed, and also registers the
     * claim within the manager to offset against future claims. This captures both recipient shares
     * and creator shares.
     *
     * @dev The `_recipient` is set to be the initial `msg.sender`
     *
     * @param _recipient The recipient address to claim against
     *
     * @return allocation_ The allocation claimed by the user
     */
    function _captureClaim(address _recipient, bytes memory _data) internal override returns (uint allocation_) {
        // Update the accumulator to ensure we have the latest fee distribution
        _updateAccumulator();

        // Calculate share and owner balances directly to avoid forcing a full creator-token
        // scan on every claim.
        uint shareBalance = _pendingShareBalance(_recipient);
        uint ownerBalance;
        if (_recipient == managerOwner) {
            ownerBalance = claimableOwnerFees();
        }

        // If the recipient has a share allocation, register the claim
        if (shareBalance != 0) {
            RecipientInfo storage info = recipients[_recipient];

            // If they have an active share, we need to snapshot and reset their debt
            if (info.share > 0) {
                uint accumulatorDelta = accumulatorPerShare - info.debtPerShare;
                uint pendingEarnings = FullMath.mulDiv(accumulatorDelta, info.share, PRECISION);
                info.snapshotBalance += pendingEarnings;
                info.debtPerShare = accumulatorPerShare;
            }

            // Mark the share balance as claimed
            info.claimed += shareBalance;
            allocation_ += shareBalance;
        }

        // If the recipient has creator tokens, allow optional token specification to avoid
        // having to claim all tokens in one transaction.
        if (_creatorTokens[_recipient].length() != 0) {
            ITreasuryManager.FlaunchToken[] memory creatorTokens;
            if (_data.length > 0) {
                creatorTokens = abi.decode(_data, (ITreasuryManager.FlaunchToken[]));
            } else {
                creatorTokens = tokens(_recipient);
            }

            allocation_ += _creatorClaim(creatorTokens);
        }

        // If the recipient has an owner balance to claim
        if (ownerBalance != 0) {
            _claimedOwnerFees += ownerBalance;
            allocation_ += ownerBalance;
        }

        emit RevenueClaimed(_recipient, allocation_);
    }

    /**
     * Allows the user to transfer their recipient share to another user.
     *
     * @dev The recipient share can only be transferred by the address that owns the recipient
     * share. If the new recipient already has a recipient share, these will be merged.
     * @dev This also transfers any unclaimed snapshot balance.
     *
     * @param _newRecipient The new owner of the recipient share
     */
    function transferRecipientShare(address _newRecipient) public {
        if (msg.sender == _newRecipient || _newRecipient == address(0)) {
            revert InvalidShareTransferRecipient();
        }

        if (recipients[msg.sender].share == 0) {
            revert InsufficientSharesToTransfer();
        }

        _updateAccumulator();

        uint transferredShare = recipients[msg.sender].share;

        // Remove sender (snapshots their pending earnings and zeroes their share)
        _removeRecipient(msg.sender);

        // Capture and transfer sender's unclaimed balance
        RecipientInfo storage senderInfo = recipients[msg.sender];
        uint unclaimedBalance = senderInfo.snapshotBalance - senderInfo.claimed;
        senderInfo.snapshotBalance = senderInfo.claimed;

        // Add to or update the recipient's share
        RecipientInfo storage recipientInfo = recipients[_newRecipient];
        if (recipientInfo.share > 0) {
            _updateRecipientShare(_newRecipient, recipientInfo.share + transferredShare);
        } else {
            _addRecipient(_newRecipient, transferredShare);
        }

        recipientInfo.snapshotBalance += unclaimedBalance;

        emit RecipientShareTransferred(msg.sender, _newRecipient, transferredShare);
    }

    /**
     * Returns the number of recipients that have ever been added to the manager.
     *
     * @dev This includes recipients that have been removed. Removed recipients with
     * unclaimed fees are still tracked and can claim, but no longer earn new fees.
     *
     * @return uint The number of recipients
     */
    function recipientCount() external view returns (uint) {
        return _allRecipients.length();
    }

    /**
     * Returns the recipient address at the given index.
     *
     * @param _index The index to query
     *
     * @return address The recipient address
     */
    function recipientAt(uint _index) external view returns (address) {
        return _allRecipients.at(_index);
    }

    /**
     * Transfers the revenue fee allocation (ETH) to the recipient.
     *
     * @param _recipient The recipient address to claim against
     * @param _allocation The total fees allocated to the recipient
     */
    function _dispatchRevenue(address _recipient, uint _allocation, bytes memory /* _data */) internal override {
        // Send the ETH fees to the recipient
        (bool success, bytes memory data) = payable(_recipient).call{value: _allocation}('');
        if (!success) {
            revert UnableToSendRevenue(data);
        }
    }

}
