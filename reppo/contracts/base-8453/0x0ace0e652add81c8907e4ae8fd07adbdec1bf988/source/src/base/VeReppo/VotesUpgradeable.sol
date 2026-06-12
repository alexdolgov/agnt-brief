// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v5.2.0) (governance/utils/Votes.sol)
pragma solidity ^0.8.20;

import {IERC5805} from "@openzeppelin/contracts/interfaces/IERC5805.sol";
import {ContextUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import {NoncesUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/NoncesUpgradeable.sol";
import {EIP712Upgradeable} from "@openzeppelin/contracts-upgradeable/utils/cryptography/EIP712Upgradeable.sol";
import {Checkpoints} from "../../libraries/Checkpoints.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {ECDSA} from "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import {Time} from "@openzeppelin/contracts/utils/types/Time.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import {PointsTracker, Balance} from "./PointsTracker.sol";

/**
 * @dev This is a base abstract contract that tracks voting units, which are a measure of voting power that can be
 * transferred, and provides a system of vote delegation, where an account can delegate its voting units to a sort of
 * "representative" that will pool delegated voting units from different accounts and can then use it to vote in
 * decisions. In fact, voting units _must_ be delegated in order to count as actual votes, and an account has to
 * delegate those votes to itself if it wishes to participate in decisions and does not have a trusted representative.
 *
 * This contract is often combined with a token contract such that voting units correspond to token units. For an
 * example, see {ERC721Votes}.
 *
 * The full history of delegate votes is tracked on-chain so that governance protocols can consider votes as distributed
 * at a particular block number to protect against flash loans and double voting. The opt-in delegate system makes the
 * cost of this history tracking optional.
 *
 * When using this module the derived contract must implement {_getVotingUnits} (for example, make it return
 * {ERC721-balanceOf}), and can use {_transferVotingUnits} to track a change in the distribution of those units (in the
 * previous example, it would be included in {ERC721-_update}).
 */
abstract contract VotesUpgradeable is
    Initializable,
    ContextUpgradeable,
    EIP712Upgradeable,
    NoncesUpgradeable,
    IERC5805,
    PointsTracker
{
    using Checkpoints for Checkpoints.Trace;

    bytes32 private constant DELEGATION_TYPEHASH =
        keccak256("Delegation(address delegatee,uint256 nonce,uint256 expiry)");

    /// @custom:storage-location erc7201:reppo.storage.Votes
    struct VotesStorage {
        mapping(address account => address) _delegatee;
        mapping(address delegatee => Checkpoints.Trace) _delegateCheckpoints;
        Checkpoints.Trace _totalCheckpoints;
    }

    // keccak256(abi.encode(uint256(keccak256("reppo.storage.Votes")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant VotesStorageLocation = 0x03392118f7bb22a6a794f1c614fb245c01c554dc6bbb8afa5a85b19d44451e00;

    function _getVotesStorage() private pure returns (VotesStorage storage $) {
        assembly {
            $.slot := VotesStorageLocation
        }
    }

    /**
     * @dev Lookup to future votes is not available.
     */
    error ERC5805FutureLookup(uint256 timepoint, uint48 clock);

    function __Votes_init() internal onlyInitializing {}

    function __Votes_init_unchained() internal onlyInitializing {}
    /**
     * @dev Clock used for flagging checkpoints. Can be overridden to implement timestamp based
     * checkpoints (and voting), in which case {CLOCK_MODE} should be overridden as well to match.
     */

    function clock() public view virtual returns (uint48) {
        return Time.timestamp();
    }

    /**
     * @dev Machine-readable description of the clock as specified in ERC-6372.
     */
    // solhint-disable-next-line func-name-mixedcase
    function CLOCK_MODE() public view virtual returns (string memory) {
        return "mode=timestamp";
    }

    /**
     * @dev Validate that a timepoint is in the past, and return it as a uint48.
     */
    function _validateTimepoint(uint256 timepoint) internal view returns (uint48) {
        uint48 currentTimepoint = clock();
        if (timepoint >= currentTimepoint) revert ERC5805FutureLookup(timepoint, currentTimepoint);
        return SafeCast.toUint48(timepoint);
    }

    /**
     * @dev Returns the current amount of votes that `account` has.
     */
    function getVotes(address account) public view virtual returns (uint256) {
        VotesStorage storage $ = _getVotesStorage();
        Balance memory balance = $._delegateCheckpoints[account].latest();
        return _totalPointsAt(balance, clock());
    }

    /**
     * @dev Returns the amount of votes that `account` had at a specific moment in the past. If the `clock()` is
     * configured to use block numbers, this will return the value at the end of the corresponding block.
     *
     * Requirements:
     *
     * - `timepoint` must be in the past. If operating using block numbers, the block must be already mined.
     */
    function getPastVotes(address account, uint256 timepoint) public view virtual returns (uint256) {
        VotesStorage storage $ = _getVotesStorage();
        Balance memory balance = $._delegateCheckpoints[account].upperLookupRecent(_validateTimepoint(timepoint));
        return _totalPointsAt(balance, timepoint);
    }

    /**
     * @dev Returns the total supply of votes available at a specific moment in the past. If the `clock()` is
     * configured to use block numbers, this will return the value at the end of the corresponding block.
     *
     * NOTE: This value is the sum of all available votes, which is not necessarily the sum of all delegated votes.
     * Votes that have not been delegated are still part of total supply, even though they would not participate in a
     * vote.
     *
     * Requirements:
     *
     * - `timepoint` must be in the past. If operating using block numbers, the block must be already mined.
     */
    function getPastTotalSupply(uint256 timepoint) public view virtual returns (uint256) {
        VotesStorage storage $ = _getVotesStorage();
        Balance memory supply = $._totalCheckpoints.upperLookupRecent(_validateTimepoint(timepoint));
        return _totalPointsAt(supply, timepoint);
    }

    /**
     * @dev Returns the current total supply of votes.
     */
    function _getTotalSupply() internal view virtual returns (uint256) {
        VotesStorage storage $ = _getVotesStorage();
        Balance memory supply = $._totalCheckpoints.latest();
        return _totalPointsAt(supply, clock());
    }

    /**
     * @dev Returns the delegate that `account` has chosen.
     */
    function delegates(address account) public view virtual returns (address) {
        VotesStorage storage $ = _getVotesStorage();
        return $._delegatee[account];
    }

    /**
     * @dev Delegates votes from the sender to `delegatee`.
     */
    function delegate(address delegatee) public virtual {
        address account = _msgSender();
        _delegate(account, delegatee);
    }

    /**
     * @dev Delegates votes from signer to `delegatee`.
     */
    function delegateBySig(address delegatee, uint256 nonce, uint256 expiry, uint8 v, bytes32 r, bytes32 s)
        public
        virtual
    {
        if (block.timestamp > expiry) {
            revert VotesExpiredSignature(expiry);
        }
        address signer = ECDSA.recover(
            _hashTypedDataV4(keccak256(abi.encode(DELEGATION_TYPEHASH, delegatee, nonce, expiry))), v, r, s
        );
        _useCheckedNonce(signer, nonce);
        _delegate(signer, delegatee);
    }

    /**
     * @dev Delegate all of `account`'s voting units to `delegatee`.
     *
     * Emits events {IVotes-DelegateChanged} and {IVotes-DelegateVotesChanged}.
     */
    function _delegate(address account, address delegatee) internal virtual {
        VotesStorage storage $ = _getVotesStorage();
        address oldDelegate = delegates(account);
        $._delegatee[account] = delegatee;

        emit DelegateChanged(account, oldDelegate, delegatee);
        _moveDelegateVotes(oldDelegate, delegatee, _getVotingUnits(account));
    }

    /**
     * @dev Transfers, mints, or burns voting units. To register a mint, `from` should be zero. To register a burn, `to`
     * should be zero. Total supply of voting units will be adjusted with mints and burns.
     */
    function _transferVotingUnits(address from, address to, Balance memory balance) internal virtual {
        VotesStorage storage $ = _getVotesStorage();
        if (from == address(0)) {
            _push($._totalCheckpoints, _add, balance);
        }
        if (to == address(0)) {
            _push($._totalCheckpoints, _subtract, balance);
        }
        _moveDelegateVotes(delegates(from), delegates(to), balance);
    }

    /**
     * @dev Moves delegated votes from one delegate to another.
     */
    function _moveDelegateVotes(address from, address to, Balance memory balance) internal virtual {
        VotesStorage storage $ = _getVotesStorage();
        if (from != to && (balance.points > 0 || balance.relockingAmount > 0)) {
            if (from != address(0)) {
                (Balance memory oldValue, Balance memory newValue) =
                    _push($._delegateCheckpoints[from], _subtract, balance);
                emit DelegateVotesChanged(from, _totalPointsAt(oldValue, clock()), _totalPointsAt(newValue, clock()));
            }
            if (to != address(0)) {
                (Balance memory oldValue, Balance memory newValue) = _push($._delegateCheckpoints[to], _add, balance);
                emit DelegateVotesChanged(to, _totalPointsAt(oldValue, clock()), _totalPointsAt(newValue, clock()));
            }
        }
    }

    /**
     * @dev Get number of checkpoints for `account`.
     */
    function _numCheckpoints(address account) internal view virtual returns (uint32) {
        VotesStorage storage $ = _getVotesStorage();
        return SafeCast.toUint32($._delegateCheckpoints[account].length());
    }

    /**
     * @dev Get the `pos`-th checkpoint for `account`.
     */
    function _checkpoints(address account, uint32 pos) internal view virtual returns (Checkpoints.Checkpoint memory) {
        VotesStorage storage $ = _getVotesStorage();
        return $._delegateCheckpoints[account].at(pos);
    }

    function _push(
        Checkpoints.Trace storage store,
        function(Balance memory, Balance memory) view returns (Balance memory) op,
        Balance memory delta
    ) private returns (Balance memory oldValue, Balance memory newValue) {
        return store.push(clock(), op(store.latest(), delta));
    }

    function _add(Balance memory a, Balance memory b) private pure returns (Balance memory) {
        return Balance({relockingAmount: a.relockingAmount + b.relockingAmount, points: a.points + b.points});
    }

    function _subtract(Balance memory a, Balance memory b) private pure returns (Balance memory) {
        return Balance({relockingAmount: a.relockingAmount - b.relockingAmount, points: a.points - b.points});
    }

    /**
     * @dev Must return the voting units held by an account.
     */
    function _getVotingUnits(address) internal view virtual returns (Balance memory);
}
