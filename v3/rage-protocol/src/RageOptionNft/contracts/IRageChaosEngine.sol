// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {RageStructs} from "./RageStructs.sol";

interface IRageChaosEngine {
    // Events
    event LockNft(uint256 nftId);
    event AutomatorSet(address automator);
    event RageBuyingProtocolProposed(address indexed proposer, address indexed pendingRbp);
    event RageBuyingProtocolSet(address indexed newRbp);
    event OwnershipTransferred(address indexed oldOwner, address indexed newOwner);
    event SupplyRequested(uint256 percent);
    event SupplyBurned(uint256 amount);
    event YearlyAllowanceRequested(address indexed requester, address indexed recipient, uint256 amount, uint256 activeSupply);
    event RageTransferred(address recipient, uint256 amount);
    event ConfigChanged(uint256 stackRage, uint256 stackHestia, uint256 boostRage, uint128 crushDecrease, bool crushBuy, uint256 burstRage, uint256 burstLoop, uint256 slippage, address podAddress, address sideAddress1, address sideAddress2);
    event PoolBoosted(uint256 rageIncrease, uint256 usdcIncrease);
    event UnderlyingStacked(uint256 rageSold, uint256 pHestia, uint256 pCircle);
    event RageCrushed(uint256 rageBurned, uint256 usdcBought);
    event RageBursted(uint256 rageCollected, uint256 usdcCollected);
    
    // Withdrawal functions
    function withdrawEth() external;
    function withdrawToken(address tokenAdr) external;
    
    // NFT management
    function lockNFT() external;
    
    // Ownership and access control
    function transferOwnership(address newOwner) external;
    function setRageBuyingProtocol(address newRbp) external;
    function setAutomator(address automator) external;
    
    // RAGE token operations
    function requestSupply(uint256 percent) external;
    function burnSupply(uint256 amount) external;
    function requestYearlyAllowance(uint256 percent) external;
    function transferRage(address recipient, uint256 amount) external;
    
    // Configuration
    function setConfigs(RageStructs.RceConfig calldata newConfig) external;
    
    // Core functionality
    function stackUnderlying() external;
    function poolBoost() external;
    function rageCrush() external;
    function rageBurst() external;
    
    // View functions
    function getMultisig() external pure returns (address);
    function getAutomator() external view returns (address);
    function getOwners() external view returns (address owner1, address owner2);
    function getRageBuyingProtocol() external view returns (address);
    function getActiveSupply() external view returns (uint256);
    function getRageInNft() external view returns (uint256);
    function getState() external view returns (RageStructs.RceState memory);
}
