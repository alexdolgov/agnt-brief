// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

/**
 * @title BaseLockdrop
 * @notice Lockdrop contract designed to rewards users that lock their NFTs
 * for a given time with a corresponding amount of tokens
 **/
abstract contract BaseLockdrop is Ownable {
    using SafeERC20 for ERC20;

    ////////////
    // EVENTS //
    ////////////

    event Locked(
        uint256 tokenId,
        uint256 amount,
        uint256 lockDuration,
        address from,
        uint256[] baseAllocations,
        uint256[] rewards
    );
    event Quit(uint256 tokenId, uint256 lockEnd, address from);
    event Claimed(
        uint256 tokenId,
        uint256 lockEnd,
        address from,
        uint256[] rewards
    );
    event Withdrawn(
        uint256 tokenId,
        uint256 lockEnd,
        address from,
        uint256[] rewards
    );
    event TokenAdded(address token, uint256 rate, bytes32 root);
    event RootSet(address token, bytes32 root);
    event RewardsRescued(address to, uint256[] amounts);

    /////////////
    // STORAGE //
    /////////////

    // lock parameters
    address public immutable nft; // address of the nft to lock
    uint256 public immutable baseMultiplier = 1e18; // 1
    uint256 public immutable maxMultiplier;
    uint256 public immutable minLockingPeriod;
    uint256 public immutable maxLockingPeriod;

    // tokens
    address[] public tokens; // token rewards addresses
    struct TokenParameters {
        uint256 rate; // base tokens per nft value unit per second of locking
        bytes32 root; // merkle tree root used for base token allocations
    }
    mapping(address => TokenParameters) public tokenParameters;

    // contract state
    mapping(address => uint256) public pendingRewards; // rewards attributed to currently locked positions
    struct LockDrop {
        address owner;
        mapping(address => uint256) rewards;
        uint256 endDate;
        bool claimed;
        bool withdrawn;
    }
    mapping(uint256 => LockDrop) internal currentLocks;
    mapping(bytes32 => bool) public claimedAllocations; // base allocations can only be claimed once

    /////////////////
    // CONSTRUCTOR //
    /////////////////

    constructor(
        address _nft,
        uint256 _maxMultiplier,
        uint256 _minLockingPeriod,
        uint256 _maxLockingPeriod
    ) {
        require(
            _minLockingPeriod < _maxLockingPeriod,
            "Wrong locking periods input"
        );
        require(
            _maxMultiplier >= baseMultiplier,
            "Max multiplier must be greater or equal than base multiplier"
        );
        require(_nft != address(0), "Wrong nft address");
        nft = _nft;
        maxMultiplier = _maxMultiplier;
        minLockingPeriod = _minLockingPeriod;
        maxLockingPeriod = _maxLockingPeriod;
    }

    ///////////////
    // MODIFIERS //
    ///////////////

    /**
     * @notice Position lock ownership verification logic
     **/
    modifier isLockOwner(uint256 tokenId) {
        require(
            _msgSender() == currentLocks[tokenId].owner,
            "Caller is not the owner of the lock"
        );
        _;
    }

    /**
     * @notice Lock validity verification logic
     **/
    modifier validLock(uint256 lockingDuration) {
        require(
            (lockingDuration <= maxLockingPeriod) &&
                (lockingDuration >= minLockingPeriod),
            "Wrong locking duration"
        );
        require(tokens.length > 0, "No token is registered");
        _;
    }

    ///////////
    // VIEWS //
    ///////////

    /**
     * @notice Get lock for target tokenId
     **/
    function getLockParameters(uint256 tokenId)
        external
        view
        returns (
            address,
            uint256,
            bool
        )
    {
        return (
            currentLocks[tokenId].owner,
            currentLocks[tokenId].endDate,
            currentLocks[tokenId].claimed
        );
    }

    /**
     * @notice Get lock rewards for target tokenId and reward token address
     **/
    function getLockRewards(uint256 tokenId, address _token)
        external
        view
        returns (uint256)
    {
        return currentLocks[tokenId].rewards[_token];
    }

    /**
     * @notice Preview rewards for upcoming lock
     **/
    function previewRewards(
        uint256 baseAmount,
        uint256 tokenId,
        uint256 lockingDuration,
        address token
    ) external view returns (uint256 rewards) {
        require(
            (lockingDuration <= maxLockingPeriod) &&
                (lockingDuration >= minLockingPeriod),
            "Wrong locking duration"
        );
        require(tokens.length > 0, "No token is registered");
        require(tokenParameters[token].rate > 0, "Token not registered");
        rewards = _getRewardsAmount(
            baseAmount,
            lockingDuration,
            tokenId,
            token
        );
        require(
            ERC20(token).balanceOf(address(this)) >
                (pendingRewards[token] + rewards),
            "Not enough rewards left to distribute"
        );
    }

    ////////////
    // OWNER  //
    ////////////

    /**
     * @notice Add new token reward
     * Owner can add new types of token rewards
     * Distribution can begin after the lockdrop contract is sent tokens to distribute
     **/
    function addToken(
        address token,
        uint256 rate,
        bytes32 root
    ) external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            require(tokens[i] != token, "Token already supported");
        }
        tokens.push(token);
        tokenParameters[token] = TokenParameters({rate: rate, root: root});

        emit TokenAdded(token, rate, root);
    }

    /**
     * @notice Set token base allocation merkle root
     * Owner can set base allocation merkle root for a token
     * Can only be done if root was set to 0 beforehand
     **/
    function setRoot(address token, bytes32 root) external onlyOwner {
        require(
            tokenParameters[token].root == bytes32(0),
            "Root has already been set"
        );

        tokenParameters[token].root = root;

        emit RootSet(token, root);
    }

    /**
     * @notice Get back remaining rewards
     * Owner can get back remaining rewards in some circumstances
     * This function must be overidden to specify conditions for the target use case
     **/
    function rescueRewards(address to) external virtual;

    /////////////
    // LOCKING //
    /////////////

    /**
     * @notice Lock without base allocation
     * A user locks its nft in exchange for future rewards
     * The longer the user locks its position, the bigger the rewards
     **/
    function lock(uint256 tokenId, uint256 lockingDuration)
        external
        validLock(lockingDuration)
    {
        uint256[] memory noAllocations = new uint256[](tokens.length);
        _lock(tokenId, noAllocations, lockingDuration);
    }

    /**
     * @notice Lock with base allocation
     * A merkle tree root is specified at deployment time including base token allocations
     * These allocations serve as a base amount to compute future rewards
     * Base allocations benefit from multipliers
     **/
    function lock(
        bytes32[][] calldata proofs,
        uint256[] memory baseAllocations,
        uint256 tokenId,
        uint256 lockingDuration
    ) external validLock(lockingDuration) {
        for (uint256 i = 0; i < tokens.length; i++) {
            if (baseAllocations[i] > 0) {
                bytes32 leaf = keccak256(
                    abi.encode(_msgSender(), baseAllocations[i])
                );
                require(
                    !claimedAllocations[leaf],
                    "Base allocation already claimed"
                );
                require(
                    MerkleProof.verify(
                        proofs[i],
                        tokenParameters[tokens[i]].root,
                        leaf
                    ),
                    "Proof is not valid"
                );
                claimedAllocations[leaf] = true; // claimed allocations that are quitted cannot be claimed again
            }
        }
        _lock(tokenId, baseAllocations, lockingDuration);
    }

    ///////////////
    // RELEASING //
    ///////////////

    /**
     * @notice Stops lock before maturity, renouncing to rewards
     **/
    function quit(uint256 tokenId) external virtual isLockOwner(tokenId) {
        require(
            block.timestamp < currentLocks[tokenId].endDate,
            "Quit too late"
        );

        for (uint256 i = 0; i < tokens.length; i++) {
            pendingRewards[tokens[i]] -= currentLocks[tokenId].rewards[
                tokens[i]
            ];
            currentLocks[tokenId].rewards[tokens[i]] = 0;
        }
        uint256 endDate = currentLocks[tokenId].endDate;
        delete currentLocks[tokenId];

        ERC721(nft).transferFrom(address(this), _msgSender(), tokenId);

        emit Quit(tokenId, endDate, _msgSender());
    }

    /**
     * @notice Withdraw locked nft
     * Sends back nft after the lock is successfully completed
     * A lock is considered final when both token is withdrawn and rewards are claimed
     * Logic can be modified by inheriting contracts
     **/
    function withdraw(uint256 tokenId) public virtual isLockOwner(tokenId) {
        require(
            block.timestamp >= currentLocks[tokenId].endDate,
            "Withdraw too early"
        );

        uint256[] memory rewards = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            rewards[i] = currentLocks[tokenId].rewards[tokens[i]];
            if (currentLocks[tokenId].claimed)
                currentLocks[tokenId].rewards[tokens[i]] = 0;
        }
        uint256 endDate = currentLocks[tokenId].endDate;
        // lock rewards were already claimed
        if (currentLocks[tokenId].claimed) {
            delete currentLocks[tokenId];
        } else {
            currentLocks[tokenId].withdrawn = true;
        }

        ERC721(nft).transferFrom(address(this), _msgSender(), tokenId);

        emit Withdrawn(tokenId, endDate, _msgSender(), rewards);
    }

    /**
     * @notice Claim lock rewards
     * Send token rewards after a lock is successfully completed
     * A lock is considered final when both token is withdrawn and rewards are claimed
     * Logic can be modified by inheriting contracts
     **/
    function claim(uint256 tokenId) public virtual isLockOwner(tokenId) {
        require(
            block.timestamp >= currentLocks[tokenId].endDate,
            "Claim too early"
        );
        require(!currentLocks[tokenId].claimed, "Lock already claimed");

        bool toDelete = currentLocks[tokenId].withdrawn;
        uint256[] memory rewards = new uint256[](tokens.length);
        for (uint256 i = 0; i < tokens.length; i++) {
            pendingRewards[tokens[i]] -= currentLocks[tokenId].rewards[
                tokens[i]
            ];
            rewards[i] = currentLocks[tokenId].rewards[tokens[i]];
            if (toDelete) currentLocks[tokenId].rewards[tokens[i]] = 0;
        }
        uint256 endDate = currentLocks[tokenId].endDate;
        // locked token was already withdrawn
        if (toDelete) {
            delete currentLocks[tokenId];
        } else {
            currentLocks[tokenId].claimed = true;
        }

        for (uint256 i = 0; i < tokens.length; i++) {
            ERC20(tokens[i]).safeTransfer(_msgSender(), rewards[i]);
        }
        emit Claimed(tokenId, endDate, _msgSender(), rewards);
    }

    /**
     * @notice Claim lock rewards and withdraw position
     * Helper method to do both actions in the same transaction
     **/
    function claimAndWithdraw(uint256 tokenId) external {
        claim(tokenId);
        withdraw(tokenId);
    }

    //////////////////////////////
    // INTERNAL VIRTUAL METHODS //
    //////////////////////////////

    /**
     * @notice Internal lock logic
     * Computes rewards, gets target position and saves data for future position releasing
     **/
    function _lock(
        uint256 tokenId,
        uint256[] memory baseAllocations,
        uint256 lockingDuration
    ) internal virtual;

    /**
     * @notice Computes token rewards amount
     **/
    function _getRewardsAmount(
        uint256 baseAmount,
        uint256 lockingDuration,
        uint256 tokenId,
        address token
    ) internal view virtual returns (uint256 rewardsAmount);

    /**
     * @notice Computes token rewards multiplier
     * the longer the lock, the bigger the reward
     **/
    function _getMultiplier(uint256 lockingDuration, uint256 tokenId)
        internal
        view
        virtual
        returns (uint256 multiplier);
}
