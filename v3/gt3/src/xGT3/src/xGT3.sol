// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {IERC20Permit} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Permit.sol";
import {ERC721Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {SafeCast} from "@openzeppelin/contracts/utils/math/SafeCast.sol";
import {UUPSOwnable2Step} from "src/proxy/UUPSOwnable2Step.sol";
import {IxGT3} from "src/interfaces/IxGT3.sol";
import {IGT3Voter} from "src/interfaces/IGT3Voter.sol";
import {ProtocolTimeLibrary} from "src/libraries/ProtocolTimeLibrary.sol";

// solhint-disable contract-name-camelcase

/// @title GT3 Staking Contract
/// @notice Implementation of the GT3 staking mechanism with NFT-based locked positions
/// @dev Implements vote-escrowed tokenomics similar to veCRV
contract xGT3 is IxGT3, ERC721Upgradeable, UUPSOwnable2Step, ReentrancyGuardUpgradeable {
    using SafeCast for uint256;
    using SafeCast for int256;
    using SafeCast for int128;
    using SafeERC20 for IERC20;

    /// @notice Multiplier used for calculations
    uint256 internal constant _MULTIPLIER = 1 ether;

    /// @inheritdoc IxGT3
    uint256 public tokenId;

    /// @inheritdoc IxGT3
    address public token;

    /// @inheritdoc IxGT3
    uint256 public supply;

    /// @inheritdoc IxGT3
    address public voter;

    /// @inheritdoc IxGT3
    uint256 public maxDuration;

    /// @inheritdoc IxGT3
    uint256 public epoch;

    /// @notice Returns the locked balance information for a token ID
    mapping(uint256 => LockedBalance) public locked;

    /// @notice Returns the point history for a specific epoch
    mapping(uint256 => Point) public pointHistory;

    /// @notice Returns the user point history for a specific token ID and index
    mapping(uint256 => Point[1000000000]) public userPointHistory;

    /// @inheritdoc IxGT3
    mapping(uint256 => uint256) public userPointEpoch;

    /// @inheritdoc IxGT3
    mapping(uint256 => int128) public slopeChanges;

    /// @inheritdoc IxGT3
    mapping(uint256 => uint256) public ownershipChange;

    constructor() {
        _disableInitializers();
    }

    /// @inheritdoc IxGT3
    function initialize(address owner_, address token_, uint256 maxDuration_) public initializer {
        __Ownable_init(owner_);
        __Ownable2Step_init();
        __UUPSUpgradeable_init();
        __UUPSOwnable2Step_init();
        __ReentrancyGuard_init();
        __ERC721_init("GT3 staked", "xGT3");
        if (maxDuration_ == 0) revert XGT3InitZeroMaxDuration();
        maxDuration = maxDuration_;
        if (token_ == address(0)) revert XGT3InitTokenZero();
        token = token_;
        pointHistory[0].blk = block.number;
        pointHistory[0].ts = block.timestamp;
    }

    /// @inheritdoc IxGT3
    function getLastUserSlope(uint256 tokenId_) external view returns (int128) {
        uint256 uepoch = userPointEpoch[tokenId_];
        return userPointHistory[tokenId_][uepoch].slope;
    }

    /// @inheritdoc IxGT3
    function userPointHistoryTimestamp(uint256 tokenId_, uint256 idx_) external view returns (uint256) {
        return userPointHistory[tokenId_][idx_].ts;
    }

    /// @inheritdoc IxGT3
    function lockedEnd(uint256 tokenId_) external view returns (uint256) {
        return locked[tokenId_].end;
    }

    /// @inheritdoc IxGT3
    function getVotingUnitsNFT(uint256 tokenId_) external view returns (uint256) {
        if (ownershipChange[tokenId_] == block.number) return 0;
        return _balanceOfNFT(tokenId_, block.timestamp);
    }

    /// @inheritdoc IxGT3
    function getVotingUnitsNFTAt(uint256 tokenId_, uint256 timestamp_) external view returns (uint256) {
        return _balanceOfNFTAt(tokenId_, timestamp_);
    }

    /// @inheritdoc IxGT3
    function totalSupply() external view returns (uint256) {
        return totalSupplyAtTimestamp(block.timestamp);
    }

    /// @inheritdoc IxGT3
    function totalSupplyAtTimestamp(uint256 timestamp_) public view returns (uint256) {
        uint256 epoch_ = _getPriorEpoch(timestamp_);
        return _supplyAt(epoch_, timestamp_);
    }

    /// @inheritdoc IxGT3
    function isApprovedOrOwner(address spender_, uint256 tokenId_) external view returns (bool) {
        return _isApprovedOrOwner(spender_, tokenId_);
    }

    /// @inheritdoc IxGT3
    function updateVoter(address voter_) external onlyOwner {
        _setVoter(voter_);
    }

    /// @inheritdoc IxGT3
    function setVoter(address voter_) external {
        if (voter != address(0)) revert XGT3VoterAlreadySetted();
        _setVoter(voter_);
    }

    /// @inheritdoc IxGT3
    function checkpoint() external {
        _checkpoint(0, LockedBalance(0, 0), LockedBalance(0, 0));
    }

    /// @inheritdoc IxGT3
    function createLockFor(uint256 value_, uint256 lockDuration_, address to_)
        external
        nonReentrant
        returns (uint256 tokenId_)
    {
        return _createLock(value_, lockDuration_, to_);
    }

    /// @inheritdoc IxGT3
    function createLock(uint256 value_, uint256 lockDuration_) external nonReentrant returns (uint256 tokenId_) {
        return _createLock(value_, lockDuration_, msg.sender);
    }

    /// @inheritdoc IxGT3
    function createLockFor(
        uint256 value_,
        uint256 lockDuration_,
        address to_,
        uint256 deadline_,
        uint8 v_,
        bytes32 r_,
        bytes32 s_
    ) external nonReentrant returns (uint256 tokenId_) {
        IERC20Permit(token).permit(msg.sender, address(this), value_, deadline_, v_, r_, s_);
        return _createLock(value_, lockDuration_, to_);
    }

    /// @inheritdoc IxGT3
    function createLock(uint256 value_, uint256 lockDuration_, uint256 deadline_, uint8 v_, bytes32 r_, bytes32 s_)
        external
        nonReentrant
        returns (uint256 tokenId_)
    {
        IERC20Permit(token).permit(msg.sender, address(this), value_, deadline_, v_, r_, s_);
        return _createLock(value_, lockDuration_, msg.sender);
    }

    /// @inheritdoc IxGT3
    function depositFor(uint256 tokenId_, uint256 value_) external nonReentrant {
        LockedBalance memory _locked = locked[tokenId_];
        if (value_ == 0) revert XGT3NonZeroValue();
        if (_locked.amount == 0) revert XGT3NotExistingLockFound(tokenId_);
        if (_locked.end <= block.timestamp) revert XGT3LockExpired(tokenId_);

        _depositFor(tokenId_, value_, 0, _locked, DepositType.DEPOSIT_FOR_TYPE);
        _rebaseVote(tokenId_);
    }

    /// @inheritdoc IxGT3
    function depositFor(uint256 tokenId_, uint256 value_, uint256 deadline_, uint8 v_, bytes32 r_, bytes32 s_)
        external
        nonReentrant
    {
        LockedBalance memory _locked = locked[tokenId_];
        if (value_ == 0) revert XGT3NonZeroValue();
        if (_locked.amount == 0) revert XGT3NotExistingLockFound(tokenId_);
        if (_locked.end <= block.timestamp) revert XGT3LockExpired(tokenId_);

        IERC20Permit(token).permit(msg.sender, address(this), value_, deadline_, v_, r_, s_);
        _depositFor(tokenId_, value_, 0, _locked, DepositType.DEPOSIT_FOR_TYPE);
        _rebaseVote(tokenId_);
    }

    /// @inheritdoc IxGT3
    function increaseUnlockTime(uint256 tokenId_, uint256 lockDuration_) external nonReentrant {
        if (!_isApprovedOrOwner(msg.sender, tokenId_)) revert XGT3UnauthorizedToken(tokenId_);

        LockedBalance memory _locked = locked[tokenId_];
        uint256 unlockTime = ProtocolTimeLibrary.epochStart(block.timestamp + lockDuration_);

        if (_locked.end <= block.timestamp) revert XGT3LockExpired(tokenId_);
        if (_locked.amount == 0) revert XGT3NotExistingLockFound(tokenId_);
        if (unlockTime <= _locked.end) revert XGT3OnlyLockUntilTimeFuture();
        if (unlockTime > block.timestamp + maxDuration) revert XGT3ExceedMaxLockTime();

        _depositFor(tokenId_, 0, unlockTime, _locked, DepositType.INCREASE_UNLOCK_TIME);
        _rebaseVote(tokenId_);
    }

    /// @inheritdoc IxGT3
    function merge(uint256 from_, uint256 to_) external {
        if (from_ == to_) revert XGT3SameToken(from_, to_);
        if (!_isApprovedOrOwner(msg.sender, from_)) revert XGT3UnauthorizedToken(from_);
        if (!_isApprovedOrOwner(msg.sender, to_)) revert XGT3UnauthorizedToken(to_);
        _resetVotes(from_);

        LockedBalance memory _locked0 = locked[from_];
        LockedBalance memory _locked1 = locked[to_];
        uint256 value0 = uint256(int256(_locked0.amount));
        uint256 end = _locked0.end >= _locked1.end ? _locked0.end : _locked1.end;

        locked[from_] = LockedBalance(0, 0);
        _checkpoint(from_, _locked0, LockedBalance(0, 0));
        _burn(from_);
        _depositFor(to_, value0, end, _locked1, DepositType.MERGE_TYPE);
    }

    /// @inheritdoc IxGT3
    function split(uint256 tokenId_, uint256 amount_)
        external
        nonReentrant
        returns (uint256 tokenId1_, uint256 tokenId2_)
    {
        address owner_ = _ownerOf(tokenId_);
        if (!_isApprovedOrOwner(msg.sender, tokenId_)) revert XGT3UnauthorizedToken(tokenId_);
        _resetVotes(tokenId_);
        LockedBalance memory newLocked_ = locked[tokenId_];
        if (newLocked_.end <= block.timestamp) revert XGT3LockExpired(tokenId_);
        int128 splitAmount_ = amount_.toInt256().toInt128();
        if (splitAmount_ == 0) revert XGT3NonZeroValue();
        if (newLocked_.amount <= splitAmount_) revert XGT3ExceedSplitAmount();
        _burn(tokenId_);
        locked[tokenId_] = LockedBalance(0, 0);
        _checkpoint(tokenId_, newLocked_, LockedBalance(0, 0));

        newLocked_.amount -= splitAmount_;
        tokenId1_ = _createSplit(owner_, newLocked_);

        newLocked_.amount = splitAmount_;
        tokenId2_ = _createSplit(owner_, newLocked_);

        emit Split(
            tokenId_,
            tokenId1_,
            tokenId2_,
            msg.sender,
            locked[tokenId1_].amount.toUint256(),
            splitAmount_.toUint256(),
            newLocked_.end,
            block.timestamp
        );
    }

    /// @inheritdoc IxGT3
    function withdraw(uint256 tokenId_) external nonReentrant {
        if (!_isApprovedOrOwner(msg.sender, tokenId_)) revert XGT3UnauthorizedToken(tokenId_);
        _resetVotes(tokenId_);
        LockedBalance memory _locked = locked[tokenId_];
        if (block.timestamp < _locked.end) revert XGT3LockTimeNotExpired();
        uint256 value = int256(_locked.amount).toUint256();

        locked[tokenId_] = LockedBalance(0, 0);
        uint256 supplyBefore = supply;
        supply = supplyBefore - value;

        // old_locked can have either expired <= timestamp or zero end
        // _locked has only 0 end
        // Both can have >= 0 amount
        _checkpoint(tokenId_, _locked, LockedBalance(0, 0));

        IERC20(token).safeTransfer(msg.sender, value);

        // Burn the NFT
        _burn(tokenId_);

        emit Withdraw(msg.sender, tokenId_, value, block.timestamp);
        emit Supply(supplyBefore, supplyBefore - value);
    }

    /// @notice Returns the base URI for the NFT metadata
    /// @return The base URI string
    function _baseURI() internal pure override returns (string memory) {
        return "https://backend.gt3.finance/xgt3/";
    }

    /// @notice Checks if an address is approved or owner of a token
    /// @param spender_ The address to check
    /// @param tokenId_ The token ID to check
    /// @return True if the address is approved or owner
    function _isApprovedOrOwner(address spender_, uint256 tokenId_) internal view returns (bool) {
        address _owner = _ownerOf(tokenId_);
        return _isAuthorized(_owner, spender_, tokenId_);
    }

    /// @notice Internal function to calculate voting power at a specific timestamp
    /// @param tokenId_ The token ID to query
    /// @param timestamp_ The timestamp to query
    /// @return The voting power at the given timestamp
    function _balanceOfNFT(uint256 tokenId_, uint256 timestamp_) internal view returns (uint256) {
        uint256 epoch_ = userPointEpoch[tokenId_];
        if (epoch_ == 0) {
            return 0;
        } else {
            Point memory lastPoint = userPointHistory[tokenId_][epoch_];
            lastPoint.bias -= lastPoint.slope * int128(int256(timestamp_) - int256(lastPoint.ts));
            if (lastPoint.bias < 0) {
                lastPoint.bias = 0;
            }
            return int256(lastPoint.bias).toUint256();
        }
    }

    /// @notice Internal function to calculate voting power at a specific timestamp
    /// @param tokenId_ The token ID to query
    /// @param timestamp_ The timestamp to query
    /// @return The voting power at the given timestamp
    function _balanceOfNFTAt(uint256 tokenId_, uint256 timestamp_) internal view returns (uint256) {
        uint256 userEpoch = userPointEpoch[tokenId_];
        for (uint256 i = userEpoch; i >= 0; i--) {
            if (userPointHistory[tokenId_][i].ts <= timestamp_) {
                Point memory prevPoint = userPointHistory[tokenId_][i];
                if (timestamp_ > prevPoint.ts) {
                    prevPoint.bias -= prevPoint.slope * int128(int256(timestamp_ - prevPoint.ts));
                }
                if (prevPoint.bias < 0) {
                    prevPoint.bias = 0;
                }
                return uint256(uint128(prevPoint.bias));
            }
        }
        return 0;
    }

    /// @notice Internal function to calculate total supply at a specific epoch and timestamp
    /// @param epoch_ The epoch to query
    /// @param timestamp_ The timestamp to query
    /// @return The total supply at the given epoch and timestamp
    function _supplyAt(uint256 epoch_, uint256 timestamp_) internal view returns (uint256) {
        if (epoch_ == 0) return 0;
        Point memory lastPoint = pointHistory[epoch_];
        uint256 ti = ProtocolTimeLibrary.epochStart(lastPoint.ts);
        for (uint256 i = 0; i < 255; ++i) {
            ti += ProtocolTimeLibrary.DURATION;
            int128 dSlope = 0;
            if (ti > timestamp_) {
                ti = timestamp_;
            } else {
                dSlope = slopeChanges[ti];
            }
            lastPoint.bias -= lastPoint.slope * int128(int256(ti - lastPoint.ts));
            if (ti == timestamp_) {
                break;
            }
            lastPoint.slope += dSlope;
            lastPoint.ts = ti;
        }

        if (lastPoint.bias < 0) {
            lastPoint.bias = 0;
        }
        return uint256(uint128(lastPoint.bias));
    }

    /// @notice Internal function to update token ownership
    /// @param to_ The new owner address
    /// @param tokenId_ The token ID to update
    /// @param auth_ The authorized address for the transfer
    /// @return The new owner address
    function _update(address to_, uint256 tokenId_, address auth_) internal override returns (address) {
        _resetVotes(tokenId_);
        // Set the block of ownership transfer (for Flash NFT protection)
        ownershipChange[tokenId_] = block.number;
        return super._update(to_, tokenId_, auth_);
    }

    /// @notice Internal function to record global and per-user data checkpoint
    /// @param tokenId_ NFT token ID (0 for global checkpoint)
    /// @param oldLocked_ Previous locked balance
    /// @param newLocked_ New locked balance
    function _checkpoint(uint256 tokenId_, LockedBalance memory oldLocked_, LockedBalance memory newLocked_) internal {
        Point memory uOld;
        Point memory uNew;
        int128 oldDslope = 0;
        int128 newDslope = 0;
        uint256 _epoch = epoch;

        if (tokenId_ != 0) {
            // Calculate slopes and biases
            // Kept at zero when they have to
            if (oldLocked_.end > block.timestamp && oldLocked_.amount > 0) {
                uOld.slope = oldLocked_.amount / maxDuration.toInt256().toInt128();
                uOld.bias = uOld.slope * (oldLocked_.end - block.timestamp).toInt256().toInt128();
            }
            if (newLocked_.end > block.timestamp && newLocked_.amount > 0) {
                uNew.slope = newLocked_.amount / maxDuration.toInt256().toInt128();
                uNew.bias = uNew.slope * int128(int256(newLocked_.end - block.timestamp));
            }

            // Read values of scheduled changes in the slope
            // old_locked.end can be in the past and in the future
            // new_locked.end can ONLY by in the FUTURE unless everything expired: than zeros
            oldDslope = slopeChanges[oldLocked_.end];
            if (newLocked_.end != 0) {
                if (newLocked_.end == oldLocked_.end) {
                    newDslope = oldDslope;
                } else {
                    newDslope = slopeChanges[newLocked_.end];
                }
            }
        }

        Point memory lastPoint = Point({bias: 0, slope: 0, ts: block.timestamp, blk: block.number});
        if (_epoch > 0) {
            lastPoint = pointHistory[_epoch];
        }
        uint256 lastCheckpoint = lastPoint.ts;
        // initial_last_point is used for extrapolation to calculate block number
        // (approximately, for *At methods) and save them
        // as we cannot figure that out exactly from inside the contract
        Point memory initialLastPoint = lastPoint;
        uint256 blockSlope = 0; // dblock/dt
        if (block.timestamp > lastPoint.ts) {
            blockSlope = (_MULTIPLIER * (block.number - lastPoint.blk)) / (block.timestamp - lastPoint.ts);
        }
        // If last point is already recorded in this block, slope=0
        // But that's ok b/c we know the block in such case

        // Go over weeks to fill history and calculate what the current point is
        {
            uint256 ti = ProtocolTimeLibrary.epochStart(lastCheckpoint);
            for (uint256 i = 0; i < 255; ++i) {
                // Hopefully it won't happen that this won't get used in 5 years!
                // If it does, users will be able to withdraw but vote weight will be broken
                ti += ProtocolTimeLibrary.DURATION;
                int128 dSlope = 0;

                if (ti > block.timestamp) {
                    ti = block.timestamp;
                } else {
                    dSlope = slopeChanges[ti];
                }

                lastPoint.bias -= lastPoint.slope * (ti - lastCheckpoint).toInt256().toInt128();
                lastPoint.slope += dSlope;

                if (lastPoint.bias < 0) {
                    // This can happen
                    lastPoint.bias = 0;
                }

                if (lastPoint.slope < 0) {
                    // This cannot happen - just in case
                    lastPoint.slope = 0;
                }

                lastCheckpoint = ti;
                lastPoint.ts = ti;
                lastPoint.blk = initialLastPoint.blk + (blockSlope * (ti - initialLastPoint.ts)) / _MULTIPLIER;
                _epoch += 1;

                if (ti == block.timestamp) {
                    lastPoint.blk = block.number;
                    break;
                } else {
                    pointHistory[_epoch] = lastPoint;
                }
            }
        }

        epoch = _epoch;
        // Now point_history is filled until t=now

        if (tokenId_ != 0) {
            // If last point was in this block, the slope change has been applied already
            // But in such case we have 0 slope(s)
            lastPoint.slope += (uNew.slope - uOld.slope);
            lastPoint.bias += (uNew.bias - uOld.bias);
            if (lastPoint.slope < 0) {
                lastPoint.slope = 0;
            }
            if (lastPoint.bias < 0) {
                lastPoint.bias = 0;
            }
        }

        // Record the changed point into history
        pointHistory[_epoch] = lastPoint;

        if (tokenId_ != 0) {
            // Schedule the slope changes (slope is going down)
            // We subtract new_user_slope from [new_locked.end]
            // and add old_user_slope to [old_locked.end]
            if (oldLocked_.end > block.timestamp) {
                // old_dslope was <something> - u_old.slope, so we cancel that
                oldDslope += uOld.slope;
                if (newLocked_.end == oldLocked_.end) {
                    oldDslope -= uNew.slope; // It was a new deposit, not extension
                }
                slopeChanges[oldLocked_.end] = oldDslope;
            }

            if (newLocked_.end > block.timestamp) {
                if (newLocked_.end > oldLocked_.end) {
                    newDslope -= uNew.slope; // old slope disappeared at this point
                    slopeChanges[newLocked_.end] = newDslope;
                }
                // else: we recorded it already in old_dslope
            }
            // Now handle user history
            uint256 userEpoch = userPointEpoch[tokenId_] + 1;

            userPointEpoch[tokenId_] = userEpoch;
            uNew.ts = block.timestamp;
            uNew.blk = block.number;
            userPointHistory[tokenId_][userEpoch] = uNew;
        }
    }

    /// @notice Internal function to create a lock
    /// @param value_ Amount of tokens to lock
    /// @param lockDuration_ Duration of the lock in seconds
    /// @param to_ Address that will own the NFT
    /// @return The ID of the newly created NFT
    function _createLock(uint256 value_, uint256 lockDuration_, address to_) internal returns (uint256) {
        uint256 unlockTime = ProtocolTimeLibrary.epochStart(block.timestamp + lockDuration_);

        if (value_ == 0) revert XGT3DepositZero();
        if (unlockTime <= block.timestamp) revert XGT3OnlyLockUntilTimeFuture();
        if (unlockTime > block.timestamp + maxDuration) revert XGT3ExceedMaxLockTime();

        uint256 _tokenId = ++tokenId;
        _mint(to_, _tokenId);

        _depositFor(_tokenId, value_, unlockTime, locked[_tokenId], DepositType.CREATE_LOCK_TYPE);
        return _tokenId;
    }

    /// @notice Deposit and lock tokens for a user
    /// @param tokenId_ NFT that holds lock
    /// @param value_ Amount to deposit
    /// @param unlockTime_ New time when to unlock the tokens, or 0 if unchanged
    /// @param lockedBalance_ Previous locked amount / timestamp
    /// @param depositType_ The type of deposit
    function _depositFor(
        uint256 tokenId_,
        uint256 value_,
        uint256 unlockTime_,
        LockedBalance memory lockedBalance_,
        DepositType depositType_
    ) internal {
        LockedBalance memory _locked = lockedBalance_;
        uint256 supplyBefore = supply;

        supply = supplyBefore + value_;
        LockedBalance memory oldLocked;
        (oldLocked.amount, oldLocked.end) = (_locked.amount, _locked.end);
        // Adding to existing lock, or if a lock is expired - creating a new one
        _locked.amount += value_.toInt256().toInt128();
        if (unlockTime_ != 0) {
            _locked.end = unlockTime_;
        }
        locked[tokenId_] = _locked;

        // Possibilities:
        // Both old_locked.end could be current or expired (>/< block.timestamp)
        // value == 0 (extend lock) or value > 0 (add to lock or extend lock)
        // _locked.end > block.timestamp (always)
        _checkpoint(tokenId_, oldLocked, _locked);

        address from = msg.sender;
        if (value_ != 0 && depositType_ != DepositType.MERGE_TYPE) {
            IERC20(token).safeTransferFrom(from, address(this), value_);
        }

        emit Deposit(from, tokenId_, value_, _locked.end, depositType_, block.timestamp);
        emit Supply(supplyBefore, supplyBefore + value_);
    }

    /// @notice Private function to handle rebase voting
    /// @param tokenId_ The token ID to rebase vote for
    function _rebaseVote(uint256 tokenId_) private {
        uint256 usedWeight_ = IGT3Voter(voter).usedWeights(tokenId_);
        uint256 currentWeight_ = _balanceOfNFT(tokenId_, block.timestamp);
        if (currentWeight_ > usedWeight_ && usedWeight_ != 0) {
            try IGT3Voter(voter).rebaseVote(tokenId_) {} //solhint-disable-line no-empty-blocks
            catch {
                emit RebaseVoteFailed(tokenId_, currentWeight_, usedWeight_); // Emitir evento
            }
        }
    }

    /// @notice Private function to reset votes for a token
    /// @param tokenId_ The token ID to reset votes for
    function _resetVotes(uint256 tokenId_) private {
        if (IGT3Voter(voter).isVoting(tokenId_)) {
            IGT3Voter(voter).reset(tokenId_);
        }
        if (IGT3Voter(voter).isVoting(tokenId_)) revert XGT3TokenAttached(tokenId_);
    }

    /// @notice Private function to create a split token
    /// @param to_ Address to receive the new token
    /// @param newLocked_ Locked balance for the new token
    /// @return tokenId_ The ID of the newly created token
    function _createSplit(address to_, LockedBalance memory newLocked_) private returns (uint256 tokenId_) {
        tokenId_ = ++tokenId;
        locked[tokenId_] = newLocked_;
        _checkpoint(tokenId_, LockedBalance(0, 0), newLocked_);
        _mint(to_, tokenId_);
    }

    /// @notice Internal function to find the epoch for a given timestamp
    /// @param timestamp_ The timestamp to query
    /// @return The epoch number for the given timestamp
    function _getPriorEpoch(uint256 timestamp_) internal view returns (uint256) {
        if (timestamp_ >= pointHistory[epoch].ts) {
            return epoch;
        }
        uint256 left = 0;
        uint256 right = epoch;
        while (left < right) {
            uint256 mid = (left + right + 1) / 2;
            if (pointHistory[mid].ts <= timestamp_) {
                left = mid;
            } else {
                right = mid - 1;
            }
        }
        return left;
    }

    /// @notice Private function to set the voter contract address
    /// @param voter_ The new voter contract address
    function _setVoter(address voter_) private {
        if (voter_ == address(0)) revert XGT3ZeroAddress();
        voter = voter_;
    }
}
