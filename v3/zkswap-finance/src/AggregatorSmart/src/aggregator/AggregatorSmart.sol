// SPDX-License-Identifier: GPL-2.0-or-later
// website: https://www.zkswap.finance

pragma solidity 0.8.27;

import '@openzeppelin-v5/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin-v5/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin-v5/contracts/utils/ReentrancyGuard.sol';


/// @notice Interface for Permit2, a token approval system
interface IPermit2 {
    function approve(address token, address spender, uint160 amount, uint48 expiration) external;
    function allowance(address owner, address token, address spender) external view returns (uint160 amount, uint48 expiration, uint48 nonce);
}

/// @title AggregatorSmart
/// @notice A smart contract that allows users to interact with whitelisted swap aggregators
/// @dev This contract serves as a trusted intermediary for executing swaps through various aggregators
contract AggregatorSmart is ReentrancyGuard {
    using SafeERC20 for IERC20;
    /// @notice The address representing ETH, used for native ETH transactions
    address constant ETH_ADDRESS = address(1);

    /// @notice The owner of this contract who can whitelist/remove aggregators
    address public owner;
    
    /// @notice Mapping to track whitelisted aggregator contracts
    mapping(address => bool) public whitelistedAggregators;

    /// @notice Address of the Permit2 contract for token approvals
    mapping(address => address) public aggregatorWithPermit2;
    
    /// @notice Emitted when an aggregator is added to the whitelist
    /// @param aggregator The address of the aggregator contract
    event AggregatorWhitelisted(address indexed aggregator);

    /// @notice Emitted when an aggregator is set with a Permit2 contract
    /// @param aggregator The address of the aggregator contract
    /// @param permit2 The address of the Permit2 contract associated with the aggregator
    event AggregatorWithPermit2(address indexed aggregator, address indexed permit2);
    
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
    
    /// @notice Emitted when tokens are approved for an aggregator
    /// @param token The token address that was approved
    /// @param aggregator The aggregator that was approved to spend tokens
    /// @param amount The approved amount
    event TokenApproved(address indexed token, address indexed aggregator, uint256 amount);
    
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
    
    /// @notice Modifier to restrict access to only the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "AggregatorSmart: caller is not the owner");
        _;
    }
    
    /// @notice Constructor sets the deployer as the initial owner
    constructor() {
        owner = msg.sender;
        emit OwnershipTransferred(address(0), msg.sender);
    }


    /// @notice Executes a swap through a whitelisted aggregator
    /// @param aggregator The address of the whitelisted aggregator to use
    /// @param tokenIn The address of the input token
    /// @param amountIn The amount of input tokens to swap
    /// @param callData The calldata to execute on the aggregator
    /// @return success Whether the aggregator call was successful
    /// @return returnData The return data from the aggregator call
    function swapSmart(
        address aggregator,
        address tokenIn,
        uint256 amountIn,
        bytes calldata callData
    ) nonReentrant payable external returns (bool success, bytes memory returnData) {
        // Verify aggregator is whitelisted
        require(whitelistedAggregators[aggregator], "AggregatorSmart: aggregator not whitelisted");
        require(amountIn > 0, "AggregatorSmart: amount must be greater than 0");
        require(callData.length > 0, "AggregatorSmart: empty calldata");
        
        // Emit the swap executed event
        emit SwapSmart(msg.sender, aggregator, tokenIn, amountIn);

        if (tokenIn == ETH_ADDRESS) {
            // Handle native ETH swap
            require(msg.value == amountIn, "AggregatorSmart: ETH amount mismatch");
            
            // Execute the swap through the aggregator with ETH value
            (success, returnData) = aggregator.call{value: amountIn}(callData);
            require(success, "AggregatorSmart: aggregator call failed");
        } else {
            // Handle ERC20 token swap
            require(tokenIn != address(0), "AggregatorSmart: invalid token address");
            require(msg.value == 0, "AggregatorSmart: unexpected ETH sent for ERC20 swap");
                        
            // Transfer tokens from user to this contract
            IERC20(tokenIn).safeTransferFrom(msg.sender, address(this), amountIn);
            
            address permit2Address = aggregatorWithPermit2[aggregator];
            if (permit2Address != address(0)) {
                // Approve the Permit2 contract to spend the tokens if needed
                approveIfNeeded(tokenIn, permit2Address, amountIn);
                // Approve the aggregator to spend the tokens through Permit2
                approveAggregatorThroughPermit2(tokenIn, aggregator, permit2Address, amountIn);
            }
            else {
                // Approve the aggregator to spend the tokens if needed
                approveIfNeeded(tokenIn, aggregator, amountIn);
            }

            
            // Execute the swap through the aggregator
            (success, returnData) = aggregator.call(callData);
            require(success, "AggregatorSmart: aggregator call failed");
        }

    }

    /// @notice Safely approves tokens for spending, handling non-standard tokens
    /// @param token The token contract address
    /// @param spender The address to approve for spending
    /// @param amount The amount to approve
    function approveIfNeeded(address token, address spender, uint256 amount) internal {
        IERC20 tokenContract = IERC20(token);
        uint256 currentAllowance = tokenContract.allowance(address(this), spender);
        
        if (currentAllowance < amount) {
            // First set allowance to 0 to handle non-standard tokens like USDT
            if (currentAllowance > 0) {
                _removeAllowance(token, spender);
            }
            
            // Then set the required allowance
            (bool success, ) = token.call(
                abi.encodeWithSelector(tokenContract.approve.selector, spender, type(uint256).max)
            );
            require(success, "AggregatorSmart: approve failed");
            
            emit TokenApproved(token, spender, type(uint256).max);
        }
    }
    
    /// @notice Give Universal Router permission through Permit2's allowance system
    function approveAggregatorThroughPermit2(address token, address aggregator, address permit2, uint256 amount) internal {
        IPermit2 permit2Contract = IPermit2(permit2);
        
        // Check current Permit2 allowance
        (uint160 currentAmount, uint48 expiration,) = permit2Contract.allowance(address(this), token, aggregator);
        
        // If allowance is insufficient or expired, set new allowance
        if (currentAmount < amount || expiration < block.timestamp + 3600) {
            permit2Contract.approve(
                token,
                aggregator,
                type(uint160).max,
                uint48(block.timestamp + 365 days)
            );
        }
    }

    /// @notice Adds an aggregator to the whitelist
    /// @param aggregator The address of the aggregator contract to whitelist
    function setWhitelistAggregator(address aggregator) external onlyOwner {
        require(aggregator != address(0), "AggregatorSmart: invalid aggregator address");
        require(!whitelistedAggregators[aggregator], "AggregatorSmart: aggregator already whitelisted");
        
        whitelistedAggregators[aggregator] = true;
        emit AggregatorWhitelisted(aggregator);
    }

    function setAggregatorWithPermit2(address aggregator, address permit2) external onlyOwner {
        require(aggregator != address(0), "AggregatorSmart: invalid aggregator address");
        require(permit2 != address(0), "AggregatorSmart: invalid permit2 address");
        aggregatorWithPermit2[aggregator] = permit2;

        emit AggregatorWithPermit2(aggregator, permit2);
    }
    
    /// @notice Removes an aggregator from the whitelist
    /// @param aggregator The address of the aggregator contract to remove
    function removeAggregator(address aggregator) external onlyOwner {
        require(whitelistedAggregators[aggregator], "AggregatorSmart: aggregator not whitelisted");
        
        whitelistedAggregators[aggregator] = false;
        emit AggregatorRemoved(aggregator);
    }

    /// @notice Check if an aggregator is whitelisted
    /// @param aggregator The aggregator address to check
    /// @return Whether the aggregator is whitelisted
    function isWhitelisted(address aggregator) external view returns (bool) {
        return whitelistedAggregators[aggregator];
    }
    
    /// @notice Emergency function to recover any tokens stuck in the contract
    /// @param token The address of the token to recover
    /// @param to The address to send the recovered tokens to
    /// @param amount The amount of tokens to recover
    function emergencyRecover(address token, address to, uint256 amount) external onlyOwner {
        require(to != address(0), "AggregatorSmart: invalid recipient address");
        IERC20(token).safeTransfer(to, amount);
        
        emit EmergencyRecover(token, to, amount);
    }
    
    /// @notice Emergency function to recover ETH stuck in the contract
    /// @param to The address to send the ETH to
    /// @param amount The amount of ETH to recover
    function emergencyRecoverETH(address payable to, uint256 amount) external onlyOwner {
        require(to != address(0), "AggregatorSmart: invalid recipient address");
        require(address(this).balance >= amount, "AggregatorSmart: insufficient balance");
        (bool success, ) = to.call{value: amount}("");
        require(success, "AggregatorSmart: ETH transfer failed");

        emit EmergencyRecoverETH(to, amount);
    }
    
    /// @notice Removes allowance for a spender on a specific token
    /// @param token The address of the token to remove allowance for
    /// @param spender The address of the spender to remove allowance for
    function removeAllowance(address token, address spender) external onlyOwner {
        require(token != address(0), "AggregatorSmart: invalid token address");
        require(spender != address(0), "AggregatorSmart: invalid spender address");
        
        _removeAllowance(token, spender);
    }

    /// @notice Internal function to remove allowance for a spender on a specific token
    /// @param token The address of the token to remove allowance for
    /// @param spender The address of the spender to remove allowance for
    function _removeAllowance(address token, address spender) internal {
        IERC20 tokenContract = IERC20(token);
        // Use low-level call to handle tokens that don't return bool
        (bool success, ) = token.call(
            abi.encodeWithSelector(tokenContract.approve.selector, spender, 0)
        );
        require(success, "AggregatorSmart: approve to 0 failed");
    }

        
    /// @notice Transfers ownership of the contract to a new account
    /// @param newOwner The address of the new owner
    function transferOwnership(address newOwner) external onlyOwner {
        require(newOwner != address(0), "AggregatorSmart: new owner is the zero address");
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
    }
    

    /// @notice Fallback function to receive ETH (needed for some aggregator interactions)
    receive() external payable {}
}
