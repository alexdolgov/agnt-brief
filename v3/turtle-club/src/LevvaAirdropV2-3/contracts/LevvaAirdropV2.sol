// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.8.27;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "./ILevvaAirdrop.sol";

/// @dev Airdrop contract for a swap OPEN <> LEVVA
/// @notice Immutable contract for LEVVA token distribution with options to lock tokens
contract LevvaAirdropV2 is ILevvaAirdrop {
    uint64 public constant ONE_MONTH = 2592000; // 30 * 24 * 60 * 60
    uint64 public constant TWO_MONTHS = 5184000; //two months  60 * 24 * 60 * 60
    uint64 public constant EIGHT_MONTHS = 20736000; //eight months 8 * 30 * 24 * 60 * 60

    /// @notice ERC-20 token that will be distributed
    address public immutable override token;

    /// @notice Address of the token holder
    address public immutable override tokenHolder;

    /// @notice Root of a distribution merkle tree
    bytes32 public immutable override merkleRoot;

    struct LockedAmount {
        uint256 amount;
        uint64 lockedTill;
        bool released;
    }

    /// @notice Map of users and their claimed amount
    mapping(address => uint256) public override claimed;

    /// @notice Map of users and their locked amount
    mapping(address => LockedAmount) public override locked;

    constructor(address _token, address _tokenHolder, bytes32 _merkleRoot) {
        require(_token != address(0), "Zero address");
        require(_tokenHolder != address(0), "Zero address");
        require(_merkleRoot != bytes32(0), "No merkle root");

        token = _token;
        tokenHolder = _tokenHolder;
        merkleRoot = _merkleRoot;
    }

    /// @notice Verify claim by amount and proofs
    /// @param claimer Address of the claimer
    /// @param amount Amount to be claimed
    /// @param proofs Merkle tree proofs
    function verifyClaim(address claimer, uint256 amount, bytes32[] calldata proofs)
        public
        view
        override
        returns (bool success)
    {
        uint256 alreadyClaimed = claimed[claimer];
        if (alreadyClaimed > 0) {
            return false;
        }

        success =
            MerkleProof.verify(proofs, merkleRoot, keccak256(bytes.concat(keccak256(abi.encode(claimer, amount)))));
    }

    /// @notice Get lock time in seconds
    /// @param lockPeriod Lock period
    function getLockTime(LockPeriod lockPeriod) public pure override returns (uint64) {
        if (lockPeriod == LockPeriod.OneMonth) {
            return ONE_MONTH;
        } else if (lockPeriod == LockPeriod.HalfYear) {
            return TWO_MONTHS;
        } else if (lockPeriod == LockPeriod.OneYear) {
            return EIGHT_MONTHS;
        } else {
            return 0;
        }
    }

    /// @notice Get bonus amount
    /// @param lockPeriod Lock period
    /// @param amount Amount to be locked
    function getBonusAmount(LockPeriod lockPeriod, uint256 amount) public pure override returns (uint256) {
        if (lockPeriod == LockPeriod.HalfYear) {
            return (amount * 1) / 10; // 10%
        } else if (lockPeriod == LockPeriod.OneYear) {
            return (amount * 4) / 10; // 40%
        } else {
            return 0;
        }
    }

    /// @notice Claim tokens
    /// @param lockPeriod Lock period
    /// @param amount Amount to be claimed
    /// @param proofs Merkle tree proofs
    function claim(LockPeriod lockPeriod, uint256 amount, bytes32[] calldata proofs) external override {
        require(verifyClaim(msg.sender, amount, proofs), "Claim verification failed");

        if (lockPeriod == LockPeriod.None || lockPeriod == LockPeriod.OneMonth) {
            revert("Not available");
        }

        uint64 lockedTill = uint64(block.timestamp) + getLockTime(lockPeriod);
        uint256 amountWithBonus = amount + getBonusAmount(lockPeriod, amount);

        claimed[msg.sender] = amountWithBonus;
        locked[msg.sender] = LockedAmount({amount: amountWithBonus, lockedTill: lockedTill, released: false});

        emit Locked(msg.sender, lockedTill, amountWithBonus);
    }

    /// @notice Release locked tokens
    function release() external override {
        LockedAmount memory lockedAmount = locked[msg.sender];

        require(lockedAmount.amount > 0, "No amount locked");
        require(!lockedAmount.released, "Already released");
        require(lockedAmount.lockedTill < block.timestamp, "Amount still locked");

        lockedAmount.released = true;
        locked[msg.sender] = lockedAmount;

        SafeERC20.safeTransferFrom(IERC20(token), tokenHolder, msg.sender, lockedAmount.amount);

        emit Released(msg.sender, lockedAmount.amount);
    }
}
