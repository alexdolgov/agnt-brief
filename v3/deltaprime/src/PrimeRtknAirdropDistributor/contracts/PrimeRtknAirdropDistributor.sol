// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

interface IRtknToPrimeConverter {
    function users(uint256 index) external view returns (address);
    function getTotalUsers() external view returns (uint256);
    function previewFuturePrimeAmountBasedOnPledgedAmountForUser(address user) external view returns (uint256);
}

/**
 * @title PrimeRtknAirdropDistributor
 * @dev Contract for distributing a percentage of PRIME token allocations to users from RtknToPrimeConverter
 * @notice This contract operates in two phases:
 *         1. Processing: Read and calculate user allocations from rTKNConverter
 *         2. Airdropping: Distribute PRIME tokens to eligible users
 */
contract PrimeRtknAirdropDistributor is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    // Immutable references to external contracts
    IRtknToPrimeConverter public immutable rTKNConverter;
    IERC20 public immutable primeToken;
    
    // Distribution percentage scaled by 1e18 (e.g., 5% = 0.05e18 = 50000000000000000)
    uint256 public immutable distributionPercentage;
    
    enum Phase {
        Processing,    // Reading and calculating user allocations
        Airdropping   // Distributing PRIME tokens
    }
    
    Phase public currentPhase;
    
    // User data mappings
    mapping(address => uint256) public userAllocation;
    mapping(address => bool) public userProcessed;
    mapping(address => bool) public userAirdropped;
    mapping(address => uint256) public userPrimeReceived; // Track actual PRIME sent to each user
    
    // Arrays and counters for batch processing
    address[] public eligibleUsers;
    uint256 public currentProcessingIndex;
    uint256 public currentAirdropIndex;
    uint256 public totalAllocation;
    uint256 public totalPrimeDistributed; // Track total PRIME actually sent
    
    // Events
    event UserProcessed(address indexed user, uint256 originalAllocation, uint256 distributionAllocation);
    event UserAirdropped(address indexed user, uint256 amount);
    event PhaseChanged(Phase newPhase);
    event TokensWithdrawn(address indexed token, address indexed recipient, uint256 amount);
    event EmergencyWithdraw(address indexed token, address indexed recipient, uint256 amount);
    
    /**
     * @dev Constructor sets up the airdrop distributor
     * @param _rTKNConverter Address of the RtknToPrimeConverter contract
     * @param _primeToken Address of the PRIME token contract
     * @param _distributionPercentage Percentage to distribute (scaled by 1e18)
     */
    constructor(
        address _rTKNConverter,
        address _primeToken,
        uint256 _distributionPercentage
    ) {
        require(_rTKNConverter != address(0), "Invalid rTKN converter address");
        require(_primeToken != address(0), "Invalid PRIME token address");
        require(_distributionPercentage > 0 && _distributionPercentage <= 1e18, "Invalid distribution percentage");
        
        rTKNConverter = IRtknToPrimeConverter(_rTKNConverter);
        primeToken = IERC20(_primeToken);
        distributionPercentage = _distributionPercentage;
        currentPhase = Phase.Processing;
    }
    
    /**
     * @dev Process users in batches to calculate their PRIME allocations
     * @param batchSize Number of users to process in this batch
     */
    function processUsers(uint256 batchSize) external nonReentrant {
        require(currentPhase == Phase.Processing, "Not in processing phase");
        require(batchSize > 0, "Batch size must be greater than zero");
        
        uint256 totalUsers = rTKNConverter.getTotalUsers();
        require(currentProcessingIndex < totalUsers, "All users already processed");
        
        uint256 endIndex = currentProcessingIndex + batchSize;
        if (endIndex > totalUsers) {
            endIndex = totalUsers;
        }
        
        for (uint256 i = currentProcessingIndex; i < endIndex; i++) {
            address user = rTKNConverter.users(i);
            
            // Skip if user was already processed (safety check)
            if (!userProcessed[user]) {
                uint256 originalPrimeAmount = rTKNConverter.previewFuturePrimeAmountBasedOnPledgedAmountForUser(user);
                uint256 distributionAllocation = (originalPrimeAmount * distributionPercentage) / 1e18;
                
                if (distributionAllocation > 0) {
                    userAllocation[user] = distributionAllocation;
                    eligibleUsers.push(user);
                    totalAllocation += distributionAllocation;
                }
                
                userProcessed[user] = true;
                emit UserProcessed(user, originalPrimeAmount, distributionAllocation);
            }
        }
        
        currentProcessingIndex = endIndex;
    }
    
    /**
     * @dev Transition from Processing to Airdropping phase
     * @notice Can only be called by owner after all users are processed
     */
    function startAirdropPhase() external onlyOwner {
        require(currentPhase == Phase.Processing, "Already in airdrop phase");
        require(currentProcessingIndex == rTKNConverter.getTotalUsers(), "Processing not complete");
        require(primeToken.balanceOf(address(this)) >= totalAllocation, "Insufficient PRIME tokens for airdrop");
        
        currentPhase = Phase.Airdropping;
        emit PhaseChanged(Phase.Airdropping);
    }
    
    /**
     * @dev Rescue PRIME tokens before airdrop phase starts
     * @notice Can only be called during Processing phase in case something goes wrong
     * @param amount Amount of PRIME tokens to rescue (0 = all)
     */
    function rescuePrimeTokens(uint256 amount) external onlyOwner {
        require(currentPhase == Phase.Processing, "Can only rescue PRIME during processing phase");
        
        uint256 contractBalance = primeToken.balanceOf(address(this));
        require(contractBalance > 0, "No PRIME tokens to rescue");
        
        uint256 rescueAmount = amount == 0 ? contractBalance : amount;
        require(rescueAmount <= contractBalance, "Insufficient balance");
        
        primeToken.safeTransfer(owner(), rescueAmount);
        emit TokensWithdrawn(address(primeToken), owner(), rescueAmount);
    }
    
    /**
     * @dev Airdrop PRIME tokens to users in batches
     * @param batchSize Number of users to airdrop to in this batch
     */
    function airdropTokens(uint256 batchSize) external nonReentrant {
        require(currentPhase == Phase.Airdropping, "Not in airdrop phase");
        require(batchSize > 0, "Batch size must be greater than zero");
        require(currentAirdropIndex < eligibleUsers.length, "All airdrops completed");
        
        uint256 endIndex = currentAirdropIndex + batchSize;
        if (endIndex > eligibleUsers.length) {
            endIndex = eligibleUsers.length;
        }
        
        for (uint256 i = currentAirdropIndex; i < endIndex; i++) {
            address user = eligibleUsers[i];
            
            // Safety check to prevent double airdrop
            if (!userAirdropped[user] && userAllocation[user] > 0) {
                uint256 amount = userAllocation[user];
                userAirdropped[user] = true;
                userPrimeReceived[user] = amount; // Track actual amount sent
                totalPrimeDistributed += amount; // Track total distributed
                
                primeToken.safeTransfer(user, amount);
                emit UserAirdropped(user, amount);
            }
        }
        
        currentAirdropIndex = endIndex;
    }
    
    /**
     * @dev Withdraw remaining tokens after airdrop completion
     * @param token Address of token to withdraw
     */
    function withdrawRemainingTokens(address token) external onlyOwner {
        require(currentPhase == Phase.Airdropping, "Must be in airdrop phase");
        require(currentAirdropIndex == eligibleUsers.length, "Airdrop not complete");
        
        IERC20 tokenContract = IERC20(token);
        uint256 balance = tokenContract.balanceOf(address(this));
        
        if (balance > 0) {
            tokenContract.safeTransfer(owner(), balance);
            emit TokensWithdrawn(token, owner(), balance);
        }
    }
    
    /**
     * @dev Emergency withdraw function in case of issues
     * @param token Address of token to withdraw
     * @param recipient Address to receive the tokens
     * @notice PRIME tokens cannot be withdrawn once airdrop phase has started
     */
    function emergencyWithdraw(address token, address recipient) external onlyOwner {
        require(recipient != address(0), "Invalid recipient");
        
        // Prevent PRIME rescue once airdrop phase has started
        if (token == address(primeToken)) {
            require(currentPhase == Phase.Processing, "Cannot rescue PRIME after airdrop started");
        }
        
        IERC20 tokenContract = IERC20(token);
        uint256 balance = tokenContract.balanceOf(address(this));
        
        if (balance > 0) {
            tokenContract.safeTransfer(recipient, balance);
            emit EmergencyWithdraw(token, recipient, balance);
        }
    }
    
    // View functions
    
    /**
     * @dev Get total number of eligible users (users with non-zero allocations)
     */
    function getTotalEligibleUsers() external view returns (uint256) {
        return eligibleUsers.length;
    }
    
    /**
     * @dev Get processing progress
     */
    function getProcessingProgress() external view returns (uint256 processed, uint256 total) {
        return (currentProcessingIndex, rTKNConverter.getTotalUsers());
    }
    
    /**
     * @dev Get airdrop progress
     */
    function getAirdropProgress() external view returns (uint256 airdropped, uint256 total) {
        return (currentAirdropIndex, eligibleUsers.length);
    }
    
    /**
     * @dev Check if processing is complete
     */
    function isProcessingComplete() external view returns (bool) {
        return currentProcessingIndex == rTKNConverter.getTotalUsers();
    }
    
    /**
     * @dev Check if airdrop is complete
     */
    function isAirdropComplete() external view returns (bool) {
        return currentPhase == Phase.Airdropping && currentAirdropIndex == eligibleUsers.length;
    }
    
    /**
     * @dev Get user's allocation amount
     */
    function getUserAllocation(address user) external view returns (uint256) {
        return userAllocation[user];
    }
    
    /**
     * @dev Check if user has been processed
     */
    function isUserProcessed(address user) external view returns (bool) {
        return userProcessed[user];
    }
    
    /**
     * @dev Check if user has received airdrop
     */
    function isUserAirdropped(address user) external view returns (bool) {
        return userAirdropped[user];
    }
    
    /**
     * @dev Get how much PRIME tokens a user actually received
     * @param user Address of the user
     * @return amount Amount of PRIME tokens received (0 if not airdropped yet)
     */
    function getUserPrimeReceived(address user) external view returns (uint256) {
        return userPrimeReceived[user];
    }
    
    /**
     * @dev Get complete user airdrop status
     * @param user Address of the user
     * @return allocation Amount allocated to user
     * @return received Amount actually received by user
     * @return isAirdropped Whether user has been airdropped
     */
    function getUserAirdropStatus(address user) external view returns (
        uint256 allocation,
        uint256 received, 
        bool isAirdropped
    ) {
        return (
            userAllocation[user],
            userPrimeReceived[user],
            userAirdropped[user]
        );
    }
    
    /**
     * @dev Get total PRIME tokens required for complete airdrop
     */
    function getRequiredPrimeBalance() external view returns (uint256) {
        return totalAllocation;
    }
    
    /**
     * @dev Get current PRIME token balance of contract
     */
    function getCurrentPrimeBalance() external view returns (uint256) {
        return primeToken.balanceOf(address(this));
    }
    
    /**
     * @dev Get distribution percentage (scaled by 1e18)
     */
    function getDistributionPercentage() external view returns (uint256) {
        return distributionPercentage;
    }
    
    /**
     * @dev Get total PRIME tokens actually distributed so far
     */
    function getTotalPrimeDistributed() external view returns (uint256) {
        return totalPrimeDistributed;
    }
}