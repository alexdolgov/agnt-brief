// SPDX-License-Identifier: MIT
pragma solidity 0.8.29;

import {ERC721Upgradeable as ERC721} from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {VotesUpgradeable as Votes, Balance} from "./base/VeReppo/VotesUpgradeable.sol";
import {Ownable2StepUpgradeable as Ownable2Step} from
    "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";
import {IVeReppo} from "./interfaces/IVeReppo.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {MulticallUpgradeable as Multicall} from "@openzeppelin/contracts-upgradeable/utils/MulticallUpgradeable.sol";
import {IPodManager} from "./interfaces/IPodManager.sol";

contract VeReppo is IVeReppo, ERC721, Votes, Ownable2Step, Multicall {
    // keccak256(abi.encode(uint256(keccak256("reppo.storage.VeReppo.main")) - 1)) & ~bytes32(uint256(0xff))
    bytes32 private constant VeReppoStorageLocation =
        0xb075b189a529ca3361e0a16ddd9793476c01739286f9b02fbeff68c0e79e6800;

    /// @custom:storage-location erc7201:reppo.storage.VeReppo.main
    struct VeReppoStorage {
        uint256 nextTokenId;
        uint256 minStakeDuration;
        mapping(uint256 tokenId => Lockup lockup) lockups;
        mapping(address user => Balance userBalance) userBalances;
        mapping(address user => mapping(uint256 epoch => uint256 fcuVotes)) userFcuVotes;
        IPodManager podManager;
        string baseURI;
    }

    IERC20 public underlyingToken;

    function _getVeReppoStorage()
        private
        pure
        returns (VeReppoStorage storage $)
    {
        assembly {
            $.slot := VeReppoStorageLocation
        }
    }

    constructor() {}

    function initialize(
        address initialOwner,
        uint48 epochLength_,
        uint256 minStakeDuration_,
        uint48 maxStakeDuration_
    ) public initializer {
        __Ownable_init(initialOwner);
        __ERC721_init("veReppo", "veReppo");
        require(
            minStakeDuration_ % epochLength_ == 0 &&
                minStakeDuration_ > epochLength_,
            "Invalid min stake duration"
        );
        require(
            maxStakeDuration_ % epochLength_ == 0 &&
                maxStakeDuration_ <= 4 * 52 weeks &&
                maxStakeDuration_ > minStakeDuration_,
            "Invalid max stake duration"
        );
        __PointsTracker_init(maxStakeDuration_, epochLength_);
        VeReppoStorage storage $ = _getVeReppoStorage();
        $.nextTokenId = 1;
        $.minStakeDuration = minStakeDuration_;
    }

    /// @inheritdoc IVeReppo
    function stake(
        uint256 amount,
        uint256 duration
    ) public returns (uint256 tokenId) {
        return _stake(amount, duration, msg.sender);
    }

    /// @inheritdoc IVeReppo
    function stakeFor(
        uint256 amount,
        uint256 duration,
        address to
    ) public returns (uint256 tokenId) {
        return _stake(amount, duration, to);
    }

    /// @inheritdoc IVeReppo
    function stakeMore(
        uint256 tokenId,
        uint256 amount
    ) public returns (uint256 newTokenId) {
        if (_ownerOf(tokenId) != msg.sender) revert Unauthorized();
        underlyingToken.transferFrom(msg.sender, address(this), amount);
        VeReppoStorage storage $ = _getVeReppoStorage();
        Lockup memory lockup = $.lockups[tokenId];
        assert(lockup.amount + amount <= type(uint128).max);
        _burn(tokenId);
        uint256 points;
        uint256 end;
        if (!lockup.autoRelocking) {
            (points, end) = previewPoints(
                lockup.amount + amount,
                maxStakeDuration()
            );
        }
        newTokenId = _mint(
            msg.sender,
            Lockup({
                amount: uint128(lockup.amount + amount),
                end: uint48(end),
                points: points,
                autoRelocking: lockup.autoRelocking
            })
        );
        emit StakeIncreased(
            msg.sender,
            tokenId,
            newTokenId,
            amount,
            lockup.amount + amount
        );
    }

    /// @inheritdoc IVeReppo
    function extendLock(
        uint256 tokenId,
        uint256 duration
    ) public returns (uint256 newTokenId) {
        if (_ownerOf(tokenId) != msg.sender) revert Unauthorized();
        VeReppoStorage storage $ = _getVeReppoStorage();
        Lockup memory lockup = $.lockups[tokenId];
        if (lockup.autoRelocking) revert AutoRelocking();
        // Check that the new lock end time is after the current lock end time
        _burn(tokenId); // Burn the old token first to remove it
        (uint256 points, uint256 end) = previewPoints(lockup.amount, duration);
        if (end <= lockup.end) revert DoesNotExtendLock();
        newTokenId = _mint(
            msg.sender,
            Lockup({
                amount: lockup.amount,
                end: uint48(end),
                points: points,
                autoRelocking: lockup.autoRelocking
            })
        );
        emit LockExtended(msg.sender, tokenId, newTokenId, duration, end);
    }

    /// @inheritdoc IVeReppo
    function setAutoRelocking(
        uint256 tokenId,
        bool autoRelocking
    ) public returns (uint256 newTokenId) {
        if (_ownerOf(tokenId) != msg.sender) revert Unauthorized();
        VeReppoStorage storage $ = _getVeReppoStorage();
        Lockup memory lockup = $.lockups[tokenId];
        if (lockup.autoRelocking == autoRelocking)
            revert NoAutoRelockingChange();
        _burn(tokenId);
        Lockup memory newLockup;
        if (autoRelocking) {
            newLockup = Lockup({
                amount: lockup.amount,
                end: uint48(0),
                points: 0,
                autoRelocking: true
            });
        } else {
            (uint256 points, uint256 end) = previewPoints(
                lockup.amount,
                maxStakeDuration()
            );
            newLockup = Lockup({
                amount: lockup.amount,
                end: uint48(end),
                points: points,
                autoRelocking: false
            });
        }
        newTokenId = _mint(msg.sender, newLockup);
        emit AutoRelockingChanged(
            msg.sender,
            tokenId,
            newTokenId,
            autoRelocking
        );
    }

    /// @inheritdoc IVeReppo
    function withdraw(uint256 tokenId, address to) public {
        if (_ownerOf(tokenId) != msg.sender) revert Unauthorized();
        VeReppoStorage storage $ = _getVeReppoStorage();
        Lockup memory lockup = $.lockups[tokenId];
        if (lockup.autoRelocking) revert AutoRelocking();
        if (lockup.end > block.timestamp) revert LockupNotExpired();
        _burn(tokenId);
        underlyingToken.transfer(to, lockup.amount);
        emit Withdrawn(msg.sender, to, tokenId, lockup.amount);
    }

    function setPodManager(address newPodManager) public onlyOwner {
        VeReppoStorage storage $ = _getVeReppoStorage();
        $.podManager = IPodManager(newPodManager);
        emit PodManagerUpdated(newPodManager);
    }

    function setBaseURI(string memory newBaseURI) public onlyOwner {
        VeReppoStorage storage $ = _getVeReppoStorage();
        $.baseURI = newBaseURI;
        emit BaseURIUpdated(newBaseURI);
    }

    /// @inheritdoc IVeReppo
    function votingPowerOf(address user) external view returns (uint256) {
        VeReppoStorage storage $ = _getVeReppoStorage();
        return _totalPointsAt($.userBalances[user], clock());
    }

    /// @inheritdoc IVeReppo
    function maxStakeDuration() public view returns (uint256) {
        return _maxStakeDuration();
    }

    /// @inheritdoc IVeReppo
    function previewPoints(
        uint256 amount,
        uint256 duration
    ) public view returns (uint256 points, uint256 end) {
        // @audit duration is measured from the start of the current epoch, not from the current timestamp
        if (duration < minStakeDuration()) revert StakingTooShort();
        if (duration > maxStakeDuration()) revert StakingTooLong();
        (points, end) = _previewPoints(amount, duration);
        // @audit this check was inherited from here: https://github.com/OriginProtocol/veogv/blob/162549b0bd2b092fecfc3da820a3e8b110e42895/contracts/OgvStaking.sol#L140-L143
        if (points + _getTotalSupply() > type(uint192).max)
            revert ExceedsMaxPoints();
    }

    /// @inheritdoc IVeReppo
    function epochLength() public view returns (uint256) {
        return _epochLength();
    }

    /// @inheritdoc IVeReppo
    function minStakeDuration() public view returns (uint256) {
        VeReppoStorage storage $ = _getVeReppoStorage();
        return $.minStakeDuration;
    }

    /// @inheritdoc IVeReppo
    function currentEpoch() public view returns (uint256) {
        return _currentEpoch();
    }

    /// @inheritdoc IVeReppo
    function epochEnd(uint256 epoch) public view returns (uint256) {
        return _epochEnd(epoch);
    }

    /// @inheritdoc ERC721
    function tokenURI(
        uint256 tokenId
    ) public view override returns (string memory) {
        _requireOwned(tokenId);
        return _getVeReppoStorage().baseURI;
    }

    /// @notice Returns the lockup data for a given token ID
    /// @param tokenId Token ID to get the lockup data for
    /// @return Lockup data structure
    function lockupData(
        uint256 tokenId
    ) public view returns (IVeReppo.Lockup memory) {
        if (_ownerOf(tokenId) == address(0)) revert LockupNotFound();
        VeReppoStorage storage $ = _getVeReppoStorage();
        Lockup storage lockup = $.lockups[tokenId];
        return
            IVeReppo.Lockup({
                amount: lockup.amount,
                end: lockup.end,
                autoRelocking: lockup.autoRelocking,
                points: lockup.points
            });
    }

    function _stake(
        uint256 amount,
        uint256 duration,
        address to
    ) internal returns (uint256 tokenId) {
        if (to == address(0)) revert ZeroAddress();
        assert(amount <= type(uint128).max);
        if (amount == 0) revert AmountZero();

        // duration checked inside previewPoints
        (uint256 points, uint256 end) = previewPoints(amount, duration);
        // @audit safeTransfer not required as underlyingToken reverts on failure
        Lockup memory lockup = Lockup({
            amount: uint128(amount),
            end: uint48(end),
            points: points,
            autoRelocking: false
        });
        underlyingToken.transferFrom(msg.sender, address(this), amount);
        tokenId = _mint(to, lockup);
        emit Staked(msg.sender, to, tokenId, amount, duration);
    }

    function _mint(
        address to,
        Lockup memory lockup
    ) internal returns (uint256 tokenId) {
        VeReppoStorage storage $ = _getVeReppoStorage();
        tokenId = $.nextTokenId++;
        $.lockups[tokenId] = lockup;
        _mint(to, tokenId);
        return tokenId;
    }

    function setUnderlyingToken(IERC20 _underlyingToken) external onlyOwner {
        underlyingToken = _underlyingToken;
        emit UnderlyingTokenSet(address(_underlyingToken));
    }

    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal virtual override returns (address) {
        address previousOwner = super._update(to, tokenId, auth);
        VeReppoStorage storage $ = _getVeReppoStorage();
        Lockup storage lockup = $.lockups[tokenId];
        uint256 points = lockup.points;
        uint256 relockingAmount = lockup.autoRelocking ? lockup.amount : 0;
        Balance memory transferredBalance = Balance({
            points: points,
            relockingAmount: relockingAmount
        });

        if (previousOwner != address(0) && to != address(0)) {
            revert NonTransferable();
        }

        if (previousOwner != address(0)) {
            $.userBalances[previousOwner].points -= points;
            $.userBalances[previousOwner].relockingAmount -= relockingAmount;
        }

        if (to != address(0)) {
            $.userBalances[to].points += points;
            $.userBalances[to].relockingAmount += relockingAmount;
            // Only delete lockup data when burning the token (when to == address(0))
        } else {
            // Token is being burned, firstly check if the user has enough voting power left to burn the token, then delete lockup data
            uint256 previousOwnerVotesCurrentEpoch = $.podManager.votesRevealedByVoterForEpoch(previousOwner, currentEpoch() - 1);
            if ($.userBalances[previousOwner].points < previousOwnerVotesCurrentEpoch) revert InsufficientVotingPower();
            delete $.lockups[tokenId];
        }
        _transferVotingUnits(previousOwner, to, transferredBalance);
        return previousOwner;
    }

    function _getVotingUnits(
        address user
    ) internal view virtual override returns (Balance memory) {
        VeReppoStorage storage $ = _getVeReppoStorage();
        return $.userBalances[user];
    }
}
