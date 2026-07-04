// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Address.sol";

contract FeeDistributor is ReentrancyGuard {
    using SafeERC20 for IERC20;
    using Address for address payable;

    // Owner address
    address public owner;

    // YieldManagerV2 contract address
    address public yieldManager;

    // Bucket structure
    struct Bucket {
        uint256 lowerLimit;     // Inclusive lower limit
        uint256 upperLimit;     // Exclusive upper limit (0 means no upper limit)
        uint256 percentage;     // Percentage allocated to this bucket (e.g., 150000 for 15%)
        uint256 totalAdjustedStake;    // Total adjusted stake in this bucket
        mapping(address => uint256) accFeePerAdjustedToken; // Accumulated fee per adjusted token per token address (scaled by 1e18)
    }

    Bucket[] public buckets;

    // User's adjusted stake in each bucket
    mapping(address => mapping(uint256 => uint256)) public userAdjustedStakeInBucket;

    // User's accumulated fee per adjusted token paid in each bucket per token
    mapping(address => mapping(uint256 => mapping(address => uint256))) public userAccFeePerAdjustedTokenPaid;

    // User's unclaimed fees per token
    mapping(address => mapping(address => uint256)) public userUnclaimedFees;

    // Registered tokens for fee distribution
    mapping(address => bool) public isTokenRegistered;
    address[] private _registeredTokens;

    event FeesReceived(address indexed token, uint256 amount);
    event FeeClaimed(address indexed user, address indexed token, uint256 amount);
    event TokensRegistered(address[] tokens);
    event TokensDeregistered(address[] tokens);
    event OwnerChanged(address oldOwner, address newOwner);
    event YieldManagerChanged(address oldAddress, address newYieldManager);
    event BucketsUpdated();

    modifier onlyOwner() {
        require(msg.sender == owner, "Unauthorized");
        _;
    }

    constructor(address _yieldManager) {
        require(_yieldManager != address(0), "YieldManager address cannot be zero");
        owner = msg.sender;
        yieldManager = _yieldManager;

        // Register ETH by default
        isTokenRegistered[address(0)] = true;
        _registeredTokens.push(address(0));
    }

    // Function to update buckets
    function updateBuckets(
        uint256[] memory lowerLimits,
        uint256[] memory upperLimits,
        uint256[] memory percentages
    ) external onlyOwner {
        require(
            lowerLimits.length == upperLimits.length && upperLimits.length == percentages.length,
            "Array lengths mismatch"
        );

        delete buckets;

        uint256 totalPercentage = 0;
        for (uint256 i = 0; i < lowerLimits.length; i++) {
            Bucket storage bucket = buckets.push();
            bucket.lowerLimit = lowerLimits[i];
            bucket.upperLimit = upperLimits[i];
            bucket.percentage = percentages[i];
            bucket.totalAdjustedStake = 0;

            totalPercentage += percentages[i];
        }

        require(totalPercentage <= 1000000, "Total percentage exceeds 100%");
        emit BucketsUpdated();
    }

    // Function to receive fees (ETH)
    receive() external payable {
        _distributeFees(address(0), msg.value);
        emit FeesReceived(address(0), msg.value);
    }

    // Function to receive ERC20 fees
    function receiveERC20Fees(address token, uint256 amount) external {
        require(isTokenRegistered[token], "Token not registered");
        IERC20(token).safeTransferFrom(msg.sender, address(this), amount);
        _distributeFees(token, amount);
        emit FeesReceived(token, amount);
    }

    // Internal function to distribute fees
    function _distributeFees(address token, uint256 amount) internal {
        uint256 totalUndistributedFees = 0;
        uint256 totalAllocatedPercentage = 0;

        // First pass: allocate fees to buckets and collect undistributed fees
        for (uint256 i = 0; i < buckets.length; i++) {
            Bucket storage bucket = buckets[i];
            uint256 bucketFee = (amount * bucket.percentage) / 1000000;

            if (bucket.totalAdjustedStake > 0) {
                bucket.accFeePerAdjustedToken[token] += (bucketFee * 1e18) / bucket.totalAdjustedStake;
                totalAllocatedPercentage += bucket.percentage;
            } else {
                // Add the bucket's fee to the total undistributed fees
                totalUndistributedFees += bucketFee;
            }
        }

        // If there are undistributed fees, redistribute them
        if (totalUndistributedFees > 0 && totalAllocatedPercentage > 0) {
            // Redistribute fees proportionally based on bucket percentages
            for (uint256 i = 0; i < buckets.length; i++) {
                Bucket storage bucket = buckets[i];

                if (bucket.totalAdjustedStake > 0) {
                    // Calculate the bucket's share of the undistributed fees
                    uint256 bucketShare = (totalUndistributedFees * bucket.percentage) / totalAllocatedPercentage;

                    // Update the accumulated fee per adjusted token
                    bucket.accFeePerAdjustedToken[token] += (bucketShare * 1e18) / bucket.totalAdjustedStake;
                }
            }
        }
    }

    // Function to be called by YieldManagerV2 when a user's adjusted stake changes
    function updateUserStake(
        address user,
        uint256 previousAdjustedStake,
        uint256 newAdjustedStake
    ) external {
        require(msg.sender == yieldManager, "Unauthorized");

        // Update user rewards before changing the stake
        _updateUserRewards(user);

        // Adjust user's adjusted stakes in buckets
        if (previousAdjustedStake > 0) {
            _adjustUserAdjustedStakeInBuckets(user, previousAdjustedStake, false);
        }

        if (newAdjustedStake > 0) {
            _adjustUserAdjustedStakeInBuckets(user, newAdjustedStake, true);
        }
    }

    // Internal function to update user rewards
    function _updateUserRewards(address user) internal {
        for (uint256 i = 0; i < buckets.length; i++) {
            Bucket storage bucket = buckets[i];
            uint256 userAdjustedStakeInThisBucket = userAdjustedStakeInBucket[user][i];

            if (userAdjustedStakeInThisBucket == 0) {
                continue;
            }

            for (uint256 j = 0; j < _registeredTokens.length; j++) {
                address token = _registeredTokens[j];

                uint256 accumulatedFeePerToken = bucket.accFeePerAdjustedToken[token];
                uint256 userPaidFeePerToken = userAccFeePerAdjustedTokenPaid[user][i][token];

                uint256 owed = (userAdjustedStakeInThisBucket * (accumulatedFeePerToken - userPaidFeePerToken)) / 1e18;

                if (owed > 0) {
                    userUnclaimedFees[user][token] += owed;
                }

                userAccFeePerAdjustedTokenPaid[user][i][token] = accumulatedFeePerToken;
            }
        }
    }

    // Internal function to adjust user's adjusted stakes in buckets
    function _adjustUserAdjustedStakeInBuckets(
        address user,
        uint256 adjustedStakeAmount,
        bool isAdding
    ) internal {
        uint256 remainingAdjustedStake = adjustedStakeAmount;

        for (uint256 i = 0; i < buckets.length; i++) {
            Bucket storage bucket = buckets[i];
            if (remainingAdjustedStake == 0) {
                break;
            }

            uint256 bucketAdjustedStake = _calculateAdjustedStakeInBucket(
                bucket.lowerLimit,
                bucket.upperLimit,
                adjustedStakeAmount
            );

            if (isAdding) {
                bucket.totalAdjustedStake += bucketAdjustedStake;
                userAdjustedStakeInBucket[user][i] += bucketAdjustedStake;
            } else {
                bucket.totalAdjustedStake -= bucketAdjustedStake;
                userAdjustedStakeInBucket[user][i] -= bucketAdjustedStake;
            }

            remainingAdjustedStake -= bucketAdjustedStake;
        }
    }

    // Internal function to calculate adjusted stake amount in a bucket
    function _calculateAdjustedStakeInBucket(
        uint256 lowerLimit,
        uint256 upperLimit,
        uint256 adjustedStakeAmount
    ) internal pure returns (uint256) {
        uint256 upper = upperLimit == 0 ? type(uint256).max : upperLimit;
        uint256 stakeInBucket = 0;

        if (adjustedStakeAmount >= lowerLimit) {
            uint256 minUpper = adjustedStakeAmount < upper ? adjustedStakeAmount : upper;
            stakeInBucket = minUpper - lowerLimit;
        }

        return stakeInBucket;
    }

    // Function for users to claim fees per token
    function claimFees(address token) external nonReentrant {
        require(isTokenRegistered[token], "Token not registered");

        _updateUserRewards(msg.sender);

        uint256 totalClaimable = userUnclaimedFees[msg.sender][token];
        require(totalClaimable > 0, "No fees to claim");

        userUnclaimedFees[msg.sender][token] = 0;

        if (token == address(0)) {
            payable(msg.sender).sendValue(totalClaimable);
        } else {
            IERC20(token).safeTransfer(msg.sender, totalClaimable);
        }

        emit FeeClaimed(msg.sender, token, totalClaimable);
    }

    function pendingFees(address user, address token) public view returns (uint256) {
        uint256 totalPending = userUnclaimedFees[user][token];

        for (uint256 i = 0; i < buckets.length; i++) {
            Bucket storage bucket = buckets[i];
            uint256 userAdjustedStakeInThisBucket = userAdjustedStakeInBucket[user][i];

            if (userAdjustedStakeInThisBucket == 0) {
                continue;
            }

            uint256 accumulatedFeePerToken = bucket.accFeePerAdjustedToken[token];
            uint256 userPaidFeePerToken = userAccFeePerAdjustedTokenPaid[user][i][token];

            if (accumulatedFeePerToken > userPaidFeePerToken) {
                uint256 owed = (userAdjustedStakeInThisBucket * (accumulatedFeePerToken - userPaidFeePerToken)) / 1e18;
                totalPending += owed;
            }
        }

        return totalPending;
    }

    function pendingFeesForAllTokens(address user) external view returns (address[] memory tokens, uint256[] memory amounts) {
        tokens = _registeredTokens;
        amounts = new uint256[](tokens.length);

        for (uint256 j = 0; j < tokens.length; j++) {
            amounts[j] = pendingFees(user, tokens[j]);
        }
    }

    // Function to register tokens
    function registerTokens(address[] memory tokens) external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            if (!isTokenRegistered[tokens[i]]) {
                isTokenRegistered[tokens[i]] = true;
                _registeredTokens.push(tokens[i]);
            }
        }
        emit TokensRegistered(tokens);
    }

    // Function to deregister tokens
    function deregisterTokens(address[] memory tokens) external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            if (isTokenRegistered[tokens[i]]) {
                isTokenRegistered[tokens[i]] = false;

                // Remove from _registeredTokens array
                for (uint256 j = 0; j < _registeredTokens.length; j++) {
                    if (_registeredTokens[j] == tokens[i]) {
                        _registeredTokens[j] = _registeredTokens[_registeredTokens.length - 1];
                        _registeredTokens.pop();
                        break;
                    }
                }
            }
        }
        emit TokensDeregistered(tokens);
    }

    // Function to change owner
    function changeOwner(address newOwner) external onlyOwner {
        require(newOwner != address(0), "Zero address");
        address oldOwner = owner;
        owner = newOwner;
        emit OwnerChanged(oldOwner, newOwner);
    }

    // Function to change YieldManagerV2 address
    function changeYieldManager(address newYieldManager) external onlyOwner {
        require(newYieldManager != address(0), "Zero address");
        address oldAddress = yieldManager;
        yieldManager = newYieldManager;
        emit YieldManagerChanged(oldAddress, newYieldManager);
    }

    // Function to get registered tokens
    function getRegisteredTokens() external view returns (address[] memory) {
        return _registeredTokens;
    }

    function emergencyWithdraw(address _token, address _to, uint256 _amount, bool isEthNative) external onlyOwner {
        if (isEthNative) {
            payable(_to).sendValue(_amount);
        } else {
            IERC20(_token).safeTransfer(_to, _amount);
        }
    }
}
