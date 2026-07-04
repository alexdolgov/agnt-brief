// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
import {RageStructs} from "./RageStructs.sol";

interface IRage {
    // ERC20 Events
    event Transfer(address indexed from, address indexed to, uint256 amount);
    event Approval(address indexed owner, address indexed spender, uint256 amount);
    
    // Rage Events
    event RageChaosEngineSet(address indexed oldOwner, address indexed newOwner);
    event SupplyRequested(address indexed rce, uint256 amount, uint256 percent);
    event RageBurned(uint256 amount);
    
    // ERC20 Functions
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function allowance(address owner, address spender) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
    function transferFrom(address from, address to, uint256 amount) external returns (bool);
    function approve(address spender, uint256 amount) external returns (bool);
    
    // ERC20 Metadata
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    
    // Rage Constants
    function FINAL_MAX_SUPPLY() external view returns (uint256);
    
    // Rage View Functions
    function getTotalSupply() external view returns (uint256);
    function getInitialSupply() external view returns (uint256);
    function getMintedSupply() external view returns (uint256);
    function getBurnedSupply() external view returns (uint256);
    function getMintableSupply() external view returns (uint256);
    function getState() external view returns (RageStructs.RageState memory);
    
    // Rage State-Changing Functions
    function burn(uint256 amount) external;
    function requestSupply(uint256 percent) external;
    function setRageChaosEngine(address newOwner) external;
}