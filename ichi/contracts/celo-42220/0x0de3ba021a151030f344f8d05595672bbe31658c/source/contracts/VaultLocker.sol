// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.7.6;
pragma abicoder v2;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { IUniswapV3Pool } from "@uniswap/v3-core/contracts/interfaces/IUniswapV3Pool.sol";
import { IICHIVault } from "./interfaces/IICHIVault.sol";
import { IGnosisSafe } from "./interfaces/IGnosisSafe.sol";
import { Multicall } from "./Multicall.sol";
import { IVolatilityCheck } from "./interfaces/IVolatilityCheck.sol";
import { Enum } from "./common/Enum.sol";

contract VaultLocker is Ownable, Multicall {

    int24 private constant MIN_TICK = -887272;
    int24 private constant MAX_TICK = 887272;
    uint256 private constant TICK_PROXIMITY_THRESHOLD = 100000; 
    
    IVolatilityCheck public immutable volatilityCheck;
    
    // Events
    event VaultLocked(address indexed vault, uint256 volatility, int24 currentTick);
    
    constructor(address _volatilityCheck) {
        require(_volatilityCheck != address(0), "VaultLocker: zero volatility check address");
        volatilityCheck = IVolatilityCheck(_volatilityCheck);
    }

    /**
     * @notice Check if vault should be locked (view function)
     * @param vault Address of the vault to check
     * @param volatilityThreshold Volatility threshold percentage (e.g., 1000 = 10%)
     * @return shouldLock True if vault should be locked
     */
    function checkUpkeep(address vault, uint256 volatilityThreshold) 
        external 
        view 
        returns (bool shouldLock) 
    {
        (bool shouldLockResult, , ) = _checkUpkeep(vault, volatilityThreshold);
        return shouldLockResult;
    }

    /**
     * @notice Internal function to check if vault should be locked and return volatility data
     * @param vault Address of the vault to check
     * @param volatilityThreshold Volatility threshold percentage (e.g., 1000 = 10%)
     * @return shouldLock True if vault should be locked
     * @return currentTick Current tick of the vault
     * @return volatility Current volatility of the vault
     */
    function _checkUpkeep(address vault, uint256 volatilityThreshold) 
        internal 
        view 
        returns (bool shouldLock, int24 currentTick, uint256 volatility) 
    {
        require(vault != address(0), "VaultLocker: zero vault address");
        
        IICHIVault ichiVault = IICHIVault(vault);
        
        // Check if vault is already locked based on allowed tokens
        bool allowToken0 = ichiVault.allowToken0();
        bool allowToken1 = ichiVault.allowToken1();
        
        bool isLocked = (allowToken0 && ichiVault.deposit0Max() == 0) || 
                        (allowToken1 && ichiVault.deposit1Max() == 0);
        
        if (isLocked) return (false, 0, 0); // Already locked
        
        // Get current tick
        currentTick = ichiVault.currentTick();
        
        // Check tick proximity first 
        if (currentTick <= (MIN_TICK + int24(TICK_PROXIMITY_THRESHOLD)) || 
            currentTick >= (MAX_TICK - int24(TICK_PROXIMITY_THRESHOLD))) {
            return (true, currentTick, 0);
        }
        
        // Check volatility last
        volatility = volatilityCheck.currentVolatility(vault);
        return (volatility > volatilityThreshold, currentTick, volatility);
    }
    
    /**
     * @notice Perform the actual vault locking
     * @param vault Address of the vault to lock
     * @param volatilityThreshold Volatility threshold percentage (e.g., 1000 = 10%)
     */
    function performUpkeep(address vault, uint256 volatilityThreshold) external onlyOwner {
        require(vault != address(0), "VaultLocker: zero vault address");
        
        // Check if upkeep is needed and get volatility / tick
        (bool shouldLock, int24 currentTick, uint256 volatility) = _checkUpkeep(vault, volatilityThreshold);
        
        if (shouldLock) {
            IICHIVault ichiVault = IICHIVault(vault);
            
            // Get safe address and execute lock
            address safe = ichiVault.owner();
            
            // Set deposit max to 0,0 to lock the vault
            IGnosisSafe(safe).execTransactionFromModule(
                vault,
                0,
                abi.encodeWithSelector(IICHIVault.setDepositMax.selector, 0, 0),
                Enum.Operation.Call
            );
            
            emit VaultLocked(vault, volatility, currentTick);
        }
    }
}
