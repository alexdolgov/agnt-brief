// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.21;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";

contract MerkleRewardDistributor is AccessControl, ReentrancyGuard {
    using SafeERC20 for IERC20;

    bytes32 public constant DISTRIBUTOR_ROLE = keccak256("DISTRIBUTOR_ROLE");

    IERC20 public immutable rewardToken;
    bytes32 public merkleRoot;
    uint256 public lastUpdateTime;

    // Track total claimed rewards for each user
    mapping(address => uint256) public userTotalClaimed;

    event Claimed(address indexed user, address indexed receiver, uint256 amount);
    event MerkleRootUpdated(bytes32 newMerkleRoot);
    event DistributorUpdated(address indexed newDistributor);

    constructor(address _rewardToken, address _initialDistributor) {
        require(_rewardToken != address(0), "Zero address: rewardToken");
        require(_initialDistributor != address(0), "Zero address: distributor");

        rewardToken = IERC20(_rewardToken);

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(DISTRIBUTOR_ROLE, _initialDistributor);
    }

    function updateMerkleRoot(bytes32 _merkleRoot) external onlyRole(DISTRIBUTOR_ROLE) {
        merkleRoot = _merkleRoot;
        lastUpdateTime = block.timestamp;
        emit MerkleRootUpdated(_merkleRoot);
    }

    function claim(
        address receiver,
        uint256 totalAmount,
        bytes32[] calldata merkleProof
    ) external nonReentrant returns (uint256 amountOut) {
        address user = msg.sender;

        // Verify the merkle proof using double-hashing pattern
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(user, totalAmount))));
        require(
            MerkleProof.verify(merkleProof, merkleRoot, leaf),
            "Invalid merkle proof"
        );

        // Calculate new rewards
        require(totalAmount > userTotalClaimed[user], "Nothing new to claim");
        amountOut = totalAmount - userTotalClaimed[user];

        // Update user data
        userTotalClaimed[user] = totalAmount;

        // Process claim
        if (amountOut > 0) {
            rewardToken.safeTransfer(receiver, amountOut);
            emit Claimed(user, receiver, amountOut);
        }
    }

    // Emergency function for token recovery
    function rescueTokens(address token, uint256 amount) external onlyRole(DEFAULT_ADMIN_ROLE) {
        IERC20(token).safeTransfer(msg.sender, amount);
    }
}
