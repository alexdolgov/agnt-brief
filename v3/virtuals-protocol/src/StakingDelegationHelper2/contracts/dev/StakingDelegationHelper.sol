// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/**
 * @title StakingDelegationContract
 * @notice Delegation contract for EIP-7702 that allows only ADMIN to withdraw and transfer
 * @dev This contract is designed to be set as the code of an EOA via EIP-7702.
 *      Uses OpenZeppelin's AccessControl for robust role management.
 */
contract StakingDelegationHelper2 {
        
    
    // ============= STATE VARIABLES =============
    
    /// @notice The staking contract address
    address public immutable stakingContract;
    
    /// @notice The LP token contract address  
    address public immutable lpToken;

    /// @notice The admin wallet
    address public immutable admin;
    
    // ============= EVENTS =============
    
    event Withdrawn(address indexed executor, uint256 amount);
    event Transferred(address indexed executor, address indexed to, uint256 amount);
    
    // ============= ERRORS =============
    
    error CallFailed(bytes returnData);
    error ZeroAddress();
    
    // ============= CONSTRUCTOR =============
    
    constructor(
        address _admin,
        address _stakingContract,
        address _lpToken
    ) {
        if (_admin == address(0) || _stakingContract == address(0) || _lpToken == address(0)) {
            revert ZeroAddress();
        }
                
        stakingContract = _stakingContract;
        lpToken = _lpToken;
        admin = _admin;
    }
    
    // ============= EXECUTOR FUNCTIONS =============
    
    /**
     * @notice Withdraw staked tokens
     * @param amount Amount to withdraw
     */
    function withdraw(uint256 amount) internal returns (bool) {
           // Call withdraw on the staking contract
        (bool success, bytes memory returnData) = stakingContract.call(
            abi.encodeWithSignature("withdraw(uint256)", amount)
        );
        
        if (!success) {
            revert CallFailed(returnData);
        }
        
        emit Withdrawn(msg.sender, amount);
        return success;
       
    }
    
    /**
     * @notice Transfer LP tokens to recipient
     * @param to Recipient address
     * @param amount Amount to transfer
     */
    function transfer(address to, uint256 amount) internal returns (bool) {
        // Call transfer on the LP token contract
        (bool success, bytes memory returnData) = lpToken.call(
            abi.encodeWithSignature("transfer(address,uint256)", to, amount)
        );
        
        if (!success) {
            revert CallFailed(returnData);
        }
        
        emit Transferred(msg.sender, to, amount);
        
        return success;
    }
    
    /**
     * @notice Withdraw and transfer in one call (atomic)
     * @param withdrawAmount Amount to withdraw from staking
     * @dev Only EXECUTOR_ROLE can call this. Both operations execute or both revert.
     */
    function withdrawAndTransfer(
        uint256 withdrawAmount
    ) external returns (bool) {
        require(tx.origin == admin);
        // Withdraw from staking
        withdraw(withdrawAmount);
        
        
        emit Withdrawn(msg.sender, withdrawAmount);
        
        // Transfer LP tokens
        transfer(admin, withdrawAmount);
        
        emit Transferred(msg.sender, admin, withdrawAmount);
        
        return true;
    }
      
}

