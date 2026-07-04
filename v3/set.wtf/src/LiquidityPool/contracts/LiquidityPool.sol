// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/utils/cryptography/ECDSA.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

/**
 * @title LiquidityPool
 * @dev A contract for managing USDT deposits and withdrawals with a delay mechanism
 */
contract LiquidityPool is Ownable, ReentrancyGuard, Pausable {
    using ECDSA for bytes32;
    using SafeERC20 for IERC20;

    IERC20 public immutable usdt;

    // Mapping to track user staked balances
    mapping(address => uint256) public userStakedBalances;

    // Mapping to track when users staked their USDT
    mapping(address => uint256) public userStakeTimestamps;

    // Mapping to track last reward calculation timestamp
    mapping(address => uint256) public userLastRewardCalculation;

    // Mapping to track user nonces for reward claims
    mapping(address => uint256) public userRewardNonces;

    // Struct to track reward claim requests
    struct RewardClaimRequest {
        uint256 amount;
        uint256 timestamp;
        bool processed;
    }

    // Mapping to track reward claim requests
    mapping(address => RewardClaimRequest) public rewardClaimRequests;

    // Total amount of USDT in the pool
    uint256 public totalPoolBalance;

    // Struct to track withdrawal requests
    struct WithdrawalRequest {
        uint256 amount;
        uint256 timestamp;
        bool processed;
    }

    // Mapping to track withdrawal requests
    mapping(address => WithdrawalRequest) public withdrawalRequests;

    // Total amount of pending withdrawals
    uint256 public totalPendingWithdrawals;

    // Lockup period in seconds (1 hour by default)
    uint256 public lockupPeriod = 3600;

    address public secondOwner;
    uint256 public batchNonce = 0;

    // Events
    event Deposited(address indexed user, uint256 amount);
    event WithdrawalRequested(address indexed user, uint256 amount);
    event WithdrawalProcessed(address indexed user, uint256 amount);
    event AdminWithdrawn(address indexed admin, uint256 amount);
    event AdminDeposited(address indexed admin, uint256 amount);
    event RewardsCalculated(address indexed user, uint256 amount);
    event RewardClaimRequested(
        address indexed user,
        uint256 amount,
        uint256 nonce
    );
    event RewardClaimProcessed(
        address indexed user,
        uint256 amount,
        uint256 nonce
    );
    event LockupPeriodChanged(uint256 newPeriod);
    event BatchUSDTTransfer(address indexed from, address indexed to, uint256 amount);
    event SecondOwnerChanged(address indexed oldSecondOwner, address indexed newSecondOwner);

    /**
     * @dev Constructor initializes the contract with the USDT token address
     * @param _usdtAddress The address of the USDT token contract
     */
    constructor(address _usdtAddress, address _secondOwner) {
        require(_usdtAddress != address(0), "Invalid USDT address");
        require(_secondOwner != address(0), "Invalid second owner address");
        usdt = IERC20(_usdtAddress);
        secondOwner = _secondOwner;
        _transferOwnership(msg.sender);
    }

    /**
     * @dev Allows users to deposit USDT into the pool
     * @param _amount The amount of USDT to deposit
     */
    function deposit(uint256 _amount) external nonReentrant whenNotPaused {
        require(_amount > 0, "Amount must be greater than 0");

        // Transfer USDT from user to contract
        usdt.safeTransferFrom(msg.sender, address(this), _amount);

        // Update balances and timestamps
        userStakedBalances[msg.sender] += _amount;
        userStakeTimestamps[msg.sender] = block.timestamp;
        totalPoolBalance += _amount;

        emit Deposited(msg.sender, _amount);
    }

    /**
     * @dev Allows users to request a withdrawal of their staked USDT
     * @param _amount The amount of USDT to withdraw
     */
    function requestWithdrawal(
        uint256 _amount
    ) external nonReentrant whenNotPaused {
        require(_amount > 0, "Amount must be greater than 0");
        require(
            userStakedBalances[msg.sender] >= _amount,
            "Insufficient staked balance"
        );

        // Check if lockup period has passed
        require(
            block.timestamp >= userStakeTimestamps[msg.sender] + lockupPeriod,
            "Lockup period not passed"
        );

        // Check if there's an unprocessed withdrawal request
        WithdrawalRequest storage request = withdrawalRequests[msg.sender];
        require(
            request.processed || request.amount == 0,
            "Previous withdrawal request not processed or too soon"
        );

        // Create new withdrawal request
        withdrawalRequests[msg.sender] = WithdrawalRequest({
            amount: _amount,
            timestamp: block.timestamp,
            processed: false
        });

        // Update total pending withdrawals
        totalPendingWithdrawals += _amount;

        emit WithdrawalRequested(msg.sender, _amount);
    }

    /**
     * @dev Internal function to update state for withdrawal processing
     * @param _request The withdrawal request
     */
    function _updateWithdrawalState(address user, WithdrawalRequest storage _request) internal {
        _request.processed = true;
        userStakedBalances[user] -= _request.amount;
        totalPoolBalance -= _request.amount;
        totalPendingWithdrawals -= _request.amount;
    }

    /**
     * @dev Internal function to revert withdrawal state changes
     * @param _request The withdrawal request
     */
    function _revertWithdrawalState(address user, WithdrawalRequest storage _request) internal {
        _request.processed = false;
        userStakedBalances[user] += _request.amount;
        totalPoolBalance += _request.amount;
        totalPendingWithdrawals += _request.amount;
    }

    /**
     * @dev Allows the owner to process a withdrawal request
     * @param _user The address of the user whose withdrawal request to process
     */
    function processWithdrawal(address _user) external nonReentrant onlyOwner {
        WithdrawalRequest storage request = withdrawalRequests[_user];
        require(request.amount > 0, "No withdrawal request found");
        require(!request.processed, "Withdrawal already processed");
        require(
            totalPoolBalance >= request.amount,
            "Insufficient pool balance"
        );

        // Update state
        _updateWithdrawalState(_user, request);

        usdt.safeTransfer(_user, request.amount);
        emit WithdrawalProcessed(_user, request.amount);
    }

    /**
     * @dev Allows the owner to withdraw USDT from the pool (excluding pending withdrawals)
     * @param _amount The amount of USDT to withdraw
     */
    function adminWithdraw(uint256 _amount) external nonReentrant onlyOwner {
        require(_amount > 0, "Amount must be greater than 0");

        // Calculate available balance (total balance minus pending withdrawals)
        uint256 availableBalance = totalPoolBalance - totalPendingWithdrawals;
        require(availableBalance >= _amount, "Insufficient available balance");

        // Update total pool balance
        totalPoolBalance -= _amount;

        // Transfer USDT to owner
        usdt.safeTransfer(owner(), _amount);

        emit AdminWithdrawn(owner(), _amount);
    }

    /**
     * @dev Allows the owner to deposit USDT into the pool
     * @param _amount The amount of USDT to deposit
     */
    function adminDeposit(uint256 _amount) external nonReentrant onlyOwner {
        require(_amount > 0, "Amount must be greater than 0");

        // Transfer USDT from owner to contract
        usdt.safeTransferFrom(owner(), address(this), _amount);

        // Update total pool balance
        totalPoolBalance += _amount;

        emit AdminDeposited(owner(), _amount);
    }

    /**
     * @dev Pauses the contract
     */
    function pause() external onlyOwner {
        _pause();
    }

    /**
     * @dev Unpauses the contract
     */
    function unpause() external onlyOwner {
        _unpause();
    }

    /**
     * @dev Returns the staked balance of a user
     * @param _user The address of the user
     * @return The staked balance of the user
     */
    function getUserStakedBalance(
        address _user
    ) external view returns (uint256) {
        return userStakedBalances[_user];
    }

    /**
     * @dev Returns the total balance of the pool
     * @return The total balance of the pool
     */
    function getPoolBalance() external view returns (uint256) {
        return totalPoolBalance;
    }

    /**
     * @dev Returns the withdrawal request details of a user
     * @param _user The address of the user
     * @return amount The amount requested for withdrawal
     * @return timestamp The timestamp of the request
     * @return processed Whether the request has been processed
     */
    function getWithdrawalRequest(
        address _user
    )
        external
        view
        returns (uint256 amount, uint256 timestamp, bool processed)
    {
        WithdrawalRequest storage request = withdrawalRequests[_user];
        return (request.amount, request.timestamp, request.processed);
    }

    /**
     * @dev Returns the total amount of pending withdrawals
     * @return The total amount of pending withdrawals
     */
    function getPendingWithdrawals() external view returns (uint256) {
        return totalPendingWithdrawals;
    }

    /**
     * @dev Allows users to request to claim their rewards using a signature from the admin
     * @param _amount The amount of rewards to claim
     * @param _nonce A unique number to prevent replay attacks
     * @param _signature The signature from the admin authorizing the reward claim
     */
    function requestRewardClaim(
        uint256 _amount,
        uint256 _nonce,
        bytes memory _signature
    ) external nonReentrant whenNotPaused {
        require(_amount > 0, "Amount must be greater than 0");
        require(_nonce == userRewardNonces[msg.sender], "Invalid nonce");

        // Create the message hash that was signed
        bytes32 messageHash = keccak256(
            abi.encodePacked(msg.sender, _amount, _nonce, address(this))
        );

        // Convert the message hash to an Ethereum Signed Message Hash
        bytes32 ethSignedMessageHash = messageHash.toEthSignedMessageHash();

        // Verify the signature
        require(
            ethSignedMessageHash.recover(_signature) == secondOwner,
            "Invalid signature"
        );

        // Check if there's an unprocessed reward claim request
        RewardClaimRequest storage request = rewardClaimRequests[msg.sender];
        require(
            request.processed || request.amount == 0,
            "Previous reward claim request not processed"
        );

        // Create new reward claim request
        rewardClaimRequests[msg.sender] = RewardClaimRequest({
            amount: _amount,
            timestamp: block.timestamp,
            processed: false
        });

        // Increment the nonce
        userRewardNonces[msg.sender]++;

        emit RewardClaimRequested(msg.sender, _amount, _nonce);
    }

    /**
     * @dev Internal function to update state for reward claim processing
     * @param _request The reward claim request
     */
    function _updateRewardClaimState(
        RewardClaimRequest storage _request
    ) internal {
        _request.processed = true;
        totalPoolBalance -= _request.amount;
    }

    /**
     * @dev Internal function to revert reward claim state changes
     * @param _request The reward claim request
     */
    function _revertRewardClaimState(
        RewardClaimRequest storage _request
    ) internal {
        _request.processed = false;
        totalPoolBalance += _request.amount;
    }

    /**
     * @dev Allows the owner to process a reward claim request
     * @param _user The address of the user whose reward claim request to process
     */
    function processRewardClaim(address _user) external nonReentrant onlyOwner {
        RewardClaimRequest storage request = rewardClaimRequests[_user];
        require(request.amount > 0, "No reward claim request found");
        require(!request.processed, "Reward claim already processed");
        require(
            totalPoolBalance >= request.amount,
            "Insufficient pool balance"
        );

        // Update state
        _updateRewardClaimState(request);

        usdt.safeTransfer(_user, request.amount);
        emit RewardClaimProcessed(
            _user,
            request.amount,
            userRewardNonces[_user] - 1
        );
    }

    /**
     * @dev Returns the current nonce for a user
     * @param _user The address of the user
     * @return The current nonce
     */
    function getUserRewardNonce(address _user) external view returns (uint256) {
        return userRewardNonces[_user];
    }

    /**
     * @dev Returns the reward claim request details of a user
     * @param _user The address of the user
     * @return amount The amount requested for reward claim
     * @return timestamp The timestamp of the request
     * @return processed Whether the request has been processed
     */
    function getRewardClaimRequest(
        address _user
    )
        external
        view
        returns (uint256 amount, uint256 timestamp, bool processed)
    {
        RewardClaimRequest storage request = rewardClaimRequests[_user];
        return (request.amount, request.timestamp, request.processed);
    }

    /**
     * @dev Allows the owner to change the lockup period
     * @param _newPeriod The new lockup period in seconds
     */
    function setLockupPeriod(uint256 _newPeriod) external onlyOwner {
        require(_newPeriod > 0, "Lockup period must be greater than 0");
        lockupPeriod = _newPeriod;
        emit LockupPeriodChanged(_newPeriod);
    }

    function setSecondOwner(address _newSecondOwner) external onlyOwner {
        require(_newSecondOwner != address(0), "Invalid second owner address");
        require(_newSecondOwner != secondOwner, "Same as current second owner");
        address oldSecondOwner = secondOwner;
        secondOwner = _newSecondOwner;
        emit SecondOwnerChanged(oldSecondOwner, _newSecondOwner);
    }

    /**
     * @dev Allows the owner to withdraw any surplus USDT that was directly transferred to the contract
     * This helps recover USDT that wasn't properly tracked by deposit functions
     * @return amount The amount of surplus USDT withdrawn
     */
    function emergencyWithdraw()
        external
        nonReentrant
        onlyOwner
        returns (uint256)
    {
        uint256 actualBalance = usdt.balanceOf(address(this));
        require(
            actualBalance > totalPoolBalance,
            "No surplus USDT to withdraw"
        );

        uint256 surplusAmount = actualBalance - totalPoolBalance;

        // Transfer the surplus to the owner
        usdt.safeTransfer(owner(), surplusAmount);
        emit AdminWithdrawn(owner(), surplusAmount);
        return surplusAmount;
    }

    function _validateBatchSignatures(address[] calldata users, bytes calldata ownerSig, bytes calldata secondSig, string memory method) internal {
        bytes32 messageHash = keccak256(abi.encode(users, batchNonce, address(this), method));
        bytes32 ethSignedMessageHash = messageHash.toEthSignedMessageHash();
        address signer1 = ethSignedMessageHash.recover(ownerSig);
        address signer2 = ethSignedMessageHash.recover(secondSig);
        require(signer1 == owner() && signer2 == secondOwner, "Invalid signatures");
        batchNonce++;
    }

    /**
    * @dev Allows the owner to batch process PRINCIPAL withdrawals for multiple users
    * @param users The addresses to process withdrawals for
    */
    function batchProcessWithdrawals(address[] calldata users, bytes calldata ownerSig, bytes calldata secondSig) external nonReentrant {
        _validateBatchSignatures(users, ownerSig, secondSig, "batchProcessWithdrawals");

        // Validate all users first
        uint256 total = 0;
        for (uint256 i = 0; i < users.length; i++) {
            address user = users[i];
            WithdrawalRequest storage request = withdrawalRequests[user];
            require(request.amount > 0, "No withdrawal request found");
            require(!request.processed, "Withdrawal already processed");
            total += request.amount;
        }
        require(totalPoolBalance >= total, "Insufficient pool balance");

        // Process all users
        for (uint256 i = 0; i < users.length; i++) {
            address user = users[i];
            WithdrawalRequest storage request = withdrawalRequests[user];
            _updateWithdrawalState(user, request);
            usdt.safeTransfer(user, request.amount);
            emit WithdrawalProcessed(user, request.amount);
        }
    }

    /**
    * @dev Allows the owner to batch process INTEREST claims for multiple users
    * @param users The addresses to process reward claims for
    */
    function batchProcessRewardClaims(address[] calldata users, bytes calldata ownerSig, bytes calldata secondSig) external nonReentrant {
        _validateBatchSignatures(users, ownerSig, secondSig, "batchProcessRewardClaims");

        // Validate all users first
        uint256 total = 0;
        for (uint256 i = 0; i < users.length; i++) {
            address user = users[i];
            RewardClaimRequest storage request = rewardClaimRequests[user];
            require(request.amount > 0, "No reward claim request found");
            require(!request.processed, "Reward claim already processed");
            total += request.amount;
        }
        require(totalPoolBalance >= total, "Insufficient pool balance");

        // Process all users
        for (uint256 i = 0; i < users.length; i++) {
            address user = users[i];
            RewardClaimRequest storage request = rewardClaimRequests[user];
            _updateRewardClaimState(request);
            usdt.safeTransfer(user, request.amount);
            emit RewardClaimProcessed(user, request.amount, userRewardNonces[user] - 1);
        }
    }
}