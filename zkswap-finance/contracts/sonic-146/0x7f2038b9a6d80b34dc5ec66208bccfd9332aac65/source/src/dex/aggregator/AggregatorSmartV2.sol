// SPDX-License-Identifier: GPL-2.0-or-later
// website: https://www.zkswap.finance

pragma solidity 0.8.27;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

/// @notice Interface for Permit2, a token approval system (Uniswap UniversalRouter)
interface IPermit2 {
    function approve(address token, address spender, uint160 amount, uint48 expiration) external;

    function allowance(address owner, address token, address spender)
        external
        view
        returns (uint160 amount, uint48 expiration, uint48 nonce);
}

/// @title AggregatorSmart V2
/// @notice A flexible smart contract supporting multiple DEX aggregator approval patterns
/// @dev Supports: Direct approval, Permit2 (Uniswap)
contract AggregatorSmartV2 is ReentrancyGuard {
    using SafeERC20 for IERC20;

    // ============================================
    // Constants & Enums     
    // ============================================

    /// @notice The address representing native ETH, used for native ETH transactions
    /// @dev This follows the standard used by 1inch, Paraswap, and other aggregators
    address constant ETH_ADDRESS = 0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE;

    /// @notice Defines the approval mechanism for each aggregator
    enum ApprovalType {
        DIRECT,        // Direct ERC20 approval to aggregator (e.g., 1inch, Paraswap, TokenApprove Proxy,..)
        PERMIT2       // Approve through Permit2 (e.g., Uniswap UniversalRouter)
    }


    // ============================================
    // Structs
    // ============================================

    /// @notice Configuration for each aggregator
    struct AggregatorConfig {
        bool isWhitelisted;
        ApprovalType approvalType;
        address approvalTarget;  // The address to approve (aggregator, Permit2, or proxy)
    }

    // ============================================
    // State Variables
    // ============================================

    /// @notice The owner of this contract who can configure aggregators
    address public owner;

    /// @notice Mapping of aggregator address to its configuration
    mapping(address => AggregatorConfig) public aggregatorConfigs;

    // ============================================
    // Events
    // ============================================

    /// @notice Emitted when an aggregator is configured
    /// @param aggregator The address of the aggregator contract
    /// @param approvalType The type of approval mechanism
    /// @param approvalTarget The address to approve
    event AggregatorConfigured(
        address indexed aggregator,
        ApprovalType approvalType,
        address approvalTarget
    );

    /// @notice Emitted when an aggregator is removed from the whitelist
    /// @param aggregator The address of the aggregator contract
    event AggregatorRemoved(address indexed aggregator);

    /// @notice Emitted when a swap is executed
    /// @param user The address of the user initiating the swap
    /// @param aggregator The aggregator contract used for the swap
    /// @param tokenIn The input token address
    /// @param amountIn The amount of input tokens
    event SwapSmart(
        address indexed user,
        address indexed aggregator,
        address indexed tokenIn,
        uint256 amountIn
    );

    /// @notice Emitted when tokens are approved for a target
    /// @param token The token address that was approved
    /// @param target The target that was approved to spend tokens
    /// @param amount The approved amount
    event TokenApproved(address indexed token, address indexed target, uint256 amount);

    /// @notice Emitted when tokens are recovered in an emergency
    /// @param token The address of the token that was recovered
    /// @param to The address to which the tokens were sent
    /// @param amount The amount of tokens that were recovered
    event EmergencyRecover(address indexed token, address indexed to, uint256 amount);

    /// @notice Emitted when ETH is recovered in an emergency
    /// @param to The address to which the ETH was sent
    /// @param amount The amount of ETH that was recovered
    event EmergencyRecoverETH(address indexed to, uint256 amount);

    /// @notice Emitted when ownership is transferred
    /// @param previousOwner The previous owner address
    /// @param newOwner The new owner address
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    /// @notice Emitted when Permit2 approval is refreshed
    /// @param token The token address that was approved
    /// @param aggregator The aggregator that was approved to spend tokens via Permit2
    /// @param amount The approved amount
    /// @param expiration The expiration timestamp
    event Permit2ApprovalRefreshed(
        address indexed token,
        address indexed aggregator,
        uint160 amount,
        uint48 expiration
    );

    // ============================================
    // Modifiers
    // ============================================

    /// @notice Modifier to restrict access to only the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "AggregatorSmart: caller is not the owner");
        _;
    }

    // ============================================
    // Constructor
    // ============================================

    /// @notice Constructor sets the deployer as the initial owner
    constructor() {
        owner = msg.sender;
        emit OwnershipTransferred(address(0), msg.sender);
    }

    // ============================================
    // Main Swap Function
    // ============================================

    /// @notice Executes a swap through a configured aggregator
    /// @param aggregator The address of the whitelisted aggregator
    /// @param tokenIn The address of the input token (use ETH_ADDRESS for native ETH)
    /// @param amountIn The amount of input tokens to swap
    /// @param callData The calldata to execute on the aggregator
    /// @return success Whether the aggregator call was successful
    /// @return returnData The return data from the aggregator call
    function swapSmart(
        address aggregator,
        address tokenIn,
        uint256 amountIn,
        bytes calldata callData
    ) external payable nonReentrant returns (bool success, bytes memory returnData) {
        // Validate inputs
        AggregatorConfig memory config = aggregatorConfigs[aggregator];
        require(config.isWhitelisted, "AggregatorSmart: aggregator not whitelisted");
        require(amountIn > 0, "AggregatorSmart: amount must be greater than 0");
        require(callData.length > 0, "AggregatorSmart: empty calldata");
        
        // Emit the swap executed event
        emit SwapSmart(msg.sender, aggregator, tokenIn, amountIn);

        // Handle ETH vs ERC20
        if (tokenIn == ETH_ADDRESS) {
            require(msg.value == amountIn, "AggregatorSmart: ETH amount mismatch");

            // Execute swap with ETH value
            (success, returnData) = aggregator.call{value: amountIn}(callData);
            require(success, "AggregatorSmart: aggregator call failed");
        } else {
            require(tokenIn != address(0), "AggregatorSmart: invalid token address");
            require(msg.value == 0, "AggregatorSmart: unexpected ETH sent for ERC20 swap");

            // Pull tokens from user to this contract
            IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);

            // Handle approval based on aggregator type
            _handleApproval(tokenIn, amountIn, aggregator, config);

            // Execute swap
            (success, returnData) = aggregator.call(callData);
            require(success, "AggregatorSmart: aggregator call failed");
        }

    }

    // ============================================
    // Internal Approval Logic
    // ============================================

    /// @notice Routes to the appropriate approval mechanism based on aggregator config
    function _handleApproval(
        address token,
        uint256 amount,
        address aggregator,
        AggregatorConfig memory config
    ) internal {
        if (config.approvalType == ApprovalType.DIRECT) {
            _handleDirectApproval(token, config.approvalTarget, amount);
        } else if (config.approvalType == ApprovalType.PERMIT2) {
            _handlePermit2Approval(token, config.approvalTarget, aggregator, amount);
        } else {
            revert("AggregatorSmart: unknown approval type");
        }
    }

    /// @notice Direct ERC20 approval (e.g., 1inch, Paraswap)
    function _handleDirectApproval(address token, address spender, uint256 amount) internal {
        _approveIfNeeded(token, spender, amount);
    }

    /// @notice Permit2 approval (e.g., Uniswap UniversalRouter)
    /// @dev Pattern: Contract -> Approve Permit2 -> Permit2.approve(aggregator)
    function _handlePermit2Approval(
        address token,
        address permit2Address,
        address aggregator,
        uint256 amount
    ) internal {
        // Step 1: Approve Permit2 to spend tokens from this contract
        _approveIfNeeded(token, permit2Address, amount);

        // Step 2: Use Permit2 to approve the aggregator (UniversalRouter)
        IPermit2 permit2 = IPermit2(permit2Address);
        (uint160 currentAmount, uint48 expiration,) = permit2.allowance(address(this), token, aggregator);

        // Refresh allowance if insufficient or expiring soon
        if (currentAmount < amount || expiration < block.timestamp + 3600) {
            uint48 newExpiration = uint48(block.timestamp + 365 days);
            permit2.approve(token, aggregator, type(uint160).max, newExpiration);
            emit Permit2ApprovalRefreshed(token, aggregator, type(uint160).max, newExpiration);
        }
    }

    /// @notice Internal helper to approve tokens if needed
    function _approveIfNeeded(address token, address spender, uint256 amount) internal {
        IERC20 tokenContract = IERC20(token);
        uint256 currentAllowance = tokenContract.allowance(address(this), spender);

        if (currentAllowance < amount) {
            // Reset to 0 first for tokens like USDT
            if (currentAllowance > 0) {
                _resetAllowance(token, spender);
            }

            // Approve max amount
            (bool success, bytes memory returnData) = token.call(abi.encodeWithSelector(IERC20.approve.selector, spender, type(uint256).max));
            require(success && (returnData.length == 0 || abi.decode(returnData, (bool))), "AggregatorSmart: approve failed");
            emit TokenApproved(token, spender, type(uint256).max);
        }
    }

    // ============================================
    // Admin Functions - Aggregator Configuration
    // ============================================

    /// @notice Configure an aggregator with DIRECT approval (e.g., 1inch, Paraswap)
    /// @param aggregator The aggregator contract address
    function addDirectAggregator(address aggregator, address approvalTarget) external onlyOwner {
        require(aggregator != address(0), "AggregatorSmart: invalid aggregator");
        require(!aggregatorConfigs[aggregator].isWhitelisted, "AggregatorSmart: already configured");

        aggregatorConfigs[aggregator] = AggregatorConfig({
            isWhitelisted: true,
            approvalType: ApprovalType.DIRECT,
            approvalTarget: approvalTarget // Approve aggregator directly
        });

        emit AggregatorConfigured(aggregator, ApprovalType.DIRECT, approvalTarget);
    }

    /// @notice Configure an aggregator with PERMIT2 approval (e.g., Uniswap UniversalRouter)
    /// @param aggregator The aggregator contract address (e.g., UniversalRouter)
    /// @param permit2Address The Permit2 contract address
    function addPermit2Aggregator(address aggregator, address permit2Address) external onlyOwner {
        require(aggregator != address(0), "AggregatorSmart: invalid aggregator");
        require(permit2Address != address(0), "AggregatorSmart: invalid permit2");
        require(!aggregatorConfigs[aggregator].isWhitelisted, "AggregatorSmart: already configured");

        aggregatorConfigs[aggregator] = AggregatorConfig({
            isWhitelisted: true,
            approvalType: ApprovalType.PERMIT2,
            approvalTarget: permit2Address // Approve Permit2 contract
        });

        emit AggregatorConfigured(aggregator, ApprovalType.PERMIT2, permit2Address);
    }

    /// @notice Remove an aggregator from whitelist
    function removeAggregator(address aggregator) external onlyOwner {
        require(aggregatorConfigs[aggregator].isWhitelisted, "AggregatorSmart: not whitelisted");

        delete aggregatorConfigs[aggregator];
        emit AggregatorRemoved(aggregator);
    }

    /// @notice Check if an aggregator is whitelisted
    /// @param aggregator The aggregator address to check
    /// @return Whether the aggregator is whitelisted
    function isWhitelisted(address aggregator) external view returns (bool) {
        return aggregatorConfigs[aggregator].isWhitelisted;
    }

    /// @notice Get full configuration for an aggregator
    function getAggregatorConfig(address aggregator) external view returns (AggregatorConfig memory) {
        return aggregatorConfigs[aggregator];
    }

    // ============================================
    // Emergency Functions
    // ============================================

    function emergencyRecover(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0), "AggregatorSmart: invalid recipient");
        IERC20(token).safeTransfer(to, amount);
        emit EmergencyRecover(token, to, amount);
    }

    function emergencyRecoverETH(address payable to, uint256 amount) external onlyOwner {
        require(to != address(0), "AggregatorSmart: invalid recipient");
        require(address(this).balance >= amount, "AggregatorSmart: insufficient balance");
        (bool success,) = to.call{value: amount}("");
        require(success, "AggregatorSmart: ETH transfer failed");
        emit EmergencyRecoverETH(to, amount);
    }

    function removeAllowance(address token, address spender) external onlyOwner {
        require(token != address(0), "AggregatorSmart: invalid token");
        require(spender != address(0), "AggregatorSmart: invalid spender");
        _resetAllowance(token, spender);
    }

    function _resetAllowance(address token, address spender) internal {
        IERC20 tokenContract = IERC20(token);
        (bool success,) = token.call(abi.encodeWithSelector(tokenContract.approve.selector, spender, 0));
        require(success, "AggregatorSmart: reset allowance failed");
    }

    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "AggregatorSmart: zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }

    receive() external payable {}
}
