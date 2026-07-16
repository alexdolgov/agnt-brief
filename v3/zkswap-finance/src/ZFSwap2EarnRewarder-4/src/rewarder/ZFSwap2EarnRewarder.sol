// SPDX-License-Identifier: MIT
// website: https://www.zkswap.finance

pragma solidity 0.8.23;

import "@openzeppelin/contracts/utils/cryptography/MerkleProof.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";


contract ZFSwap2EarnRewarder is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    mapping(uint256 => bytes32) public merkleRoots;
    mapping(uint256 => mapping(address => bool)) public isClaimed;

    address public immutable rewardToken;
    uint256 public currentCycle;
    bool public isClaimEnabled;

    event Claimed(uint256 indexed cycleId, address indexed account, uint256 amount);
    event AddCycle(uint256 cycleId, bytes32 merkleRoot);
    event EditCycle(uint256 cycleId, bytes32 merkleRoot);
    event Recovered(address indexed token, uint256 amount);

    constructor(
        address _rewardToken,
        uint256 _currentCycle
    ) {
        require(_rewardToken != address(0), "constructor: zero address");
        rewardToken = _rewardToken;
        currentCycle = _currentCycle;
        isClaimEnabled = true;
    }

    /// @notice Add a new reward cycle
    /// @param merkleRoot The Merkle root for the new cycle
    function addCycle(bytes32 merkleRoot) external onlyOwner {
        uint256 _newCycle = currentCycle + 1;
        merkleRoots[_newCycle] = merkleRoot;
        currentCycle = _newCycle;
        isClaimEnabled = true;
        emit AddCycle(_newCycle, merkleRoot);
    }

    /// @notice End the current reward cycle
    function endCycle() external onlyOwner {
        merkleRoots[currentCycle] = bytes32(0);
        isClaimEnabled = false;
    }

    /// @notice Claim rewards for a given cycle
    /// @param account The account claiming the reward
    /// @param cycleId The cycle id
    /// @param amount The amount to claim
    /// @param merkleProof The Merkle proof for the claim
    function claim(
        address account,
        uint256 cycleId,
        uint256 amount,
        bytes32[] calldata merkleProof
    ) external nonReentrant {
        require(isClaimEnabled, "claim: claim disabled");
        require(cycleId == currentCycle, "claim: invalid cycle");
        require(amount > 0, "claim: invalid amount");

        require(!isClaimed[cycleId][account], "claim: Reward has already claimed");
        require(_verifyClaim(account, cycleId, amount, merkleProof), "claim: Incorrect merkle proof");

        isClaimed[cycleId][account] = true;
        IERC20(rewardToken).safeTransfer(account, amount);
        emit Claimed(cycleId, account, amount);
    }

    /// @notice Verify a claim for a given cycle
    /// @param account The account to verify
    /// @param cycleId The cycle id
    /// @param amount The amount to verify
    /// @param merkleProof The Merkle proof
    /// @return valid True if the claim is valid
    function verifyClaim(
        address account,
        uint256 cycleId,
        uint256 amount,
        bytes32[] memory merkleProof
    ) public view returns (bool valid) {
        return _verifyClaim(account, cycleId, amount, merkleProof);
    }

    /// @dev Internal function to verify a claim
    function _verifyClaim(
        address _account,
        uint256 _cycle,
        uint256 _amount,
        bytes32[] memory _merkleProof
    ) private view returns (bool valid) {
        bytes32 leaf = keccak256(bytes.concat(keccak256(abi.encode(_account, _amount))));
        return MerkleProof.verify(_merkleProof, merkleRoots[_cycle], leaf);
    }

    /// @notice Edit the Merkle root for a given cycle
    /// @param cycleId The cycle id to edit (0 for current cycle)
    /// @param merkleRoot The new Merkle root
    function editCycle(uint256 cycleId, bytes32 merkleRoot) external onlyOwner {
        require(cycleId <= currentCycle, "editCycle: invalid cycleId");
        if (cycleId == 0) cycleId = currentCycle;
        merkleRoots[cycleId] = merkleRoot;

        emit EditCycle(cycleId, merkleRoot);
    }

    /// @notice Recover ERC20 tokens sent to this contract by mistake
    /// @param token The token address
    /// @param amount The amount to recover
    function recoverToken(address token, uint256 amount) onlyOwner external {
        uint256 balance = IERC20(token).balanceOf(address(this));
        if (amount > balance) amount = balance;

        IERC20(token).safeTransfer(msg.sender, amount);
        emit Recovered(token, amount);
    }

    /// @notice Enable or disable claiming
    /// @param isEnabled True to enable, false to disable
    function enableClaim(bool isEnabled) external onlyOwner {
        isClaimEnabled = isEnabled;
    }

}