// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.28;

import "./AccountDiamond.sol";
import "./FacetRegistry.sol";
import "../storage/TokenStorage.sol";

/**
 * @title AccountFactory
 * @dev Dynamic factory contract that deploys diamond-based AccountDiamond contracts
 */
contract AccountFactory {
    // Core contracts
    TokenStorage public immutable tokenStorage;
    FacetRegistry public immutable facetRegistry;
    
    // Factory state
    address public owner;
    mapping(address => address) public accounts; // user => account
    mapping(address => address) public accountOwners; // account => owner
    mapping(address => bool) public accountExists;
    uint256 public accountCount;
    
    // Events
    event AccountCreated(address indexed account, address indexed owner, address indexed accountContract);
    
    // Errors
    error AccountAlreadyExists(address account);
    error AccountCreationFailed(address account);
    error Unauthorized();
    
    /**
     * @dev Constructor - uses centralized facet registry
     * @param _tokenStorage The token storage contract address
     * @param _facetRegistry The centralized facet registry address
     */
    constructor(
        address _tokenStorage,
        address _facetRegistry
    ) {
        require(_tokenStorage != address(0));
        require(_facetRegistry != address(0));
        
        tokenStorage = TokenStorage(_tokenStorage);
        facetRegistry = FacetRegistry(_facetRegistry);
        owner = msg.sender;
    }

    /**
     * @dev Creates a new AccountDiamond using centralized facet registry
     * @param account The address for which to create an account
     * @return accountContract The address of the deployed AccountDiamond contract
     */
    function createAccount(address account) external returns (address accountContract) {
        // Check if account already exists
        if (accountExists[account]) {
            revert AccountAlreadyExists(account);
        }
        
        // Generate salt from account address
        bytes32 salt = keccak256(abi.encodePacked(account));
        
        // Encode constructor parameters for AccountDiamond
        bytes memory bytecode = abi.encodePacked(
            type(AccountDiamond).creationCode,
            abi.encode(address(facetRegistry))
        );
        
        // Deploy using CREATE2
        assembly {
            accountContract := create2(0, add(bytecode, 0x20), mload(bytecode), salt)
        }
        
        // Check if deployment was successful
        if (accountContract == address(0)) {
            revert AccountCreationFailed(account);
        }
        
        // Update mappings
        accounts[account] = accountContract;
        accountOwners[accountContract] = account;
        accountExists[account] = true;
        accountCount++;
        
        // Account is already tracked in factory mappings
        
        emit AccountCreated(account, account, accountContract);
        
        return accountContract;
    }
    
    /**
     * @dev Get facet registry version
     * @return Current registry version
     */
    function getRegistryVersion() external view returns (uint256) {
        return facetRegistry.getVersion();
    }

    
    /**
     * @dev Get account for a user
     * @param user The user address
     * @return The account address
     */
    function getAccount(address user) external view returns (address) {
        return accounts[user];
    }
    
    /**
     * @dev Check if account exists
     * @param account The account address
     * @return True if account exists
     */
    function isAccount(address account) external view returns (bool) {
        return accountExists[account];
    }
    
    /**
     * @dev Gets account owner
     */
    function getAccountOwner(address _account) external view returns (address) {
        address accountOwner = accountOwners[_account];
        require(accountOwner != address(0));
        return accountOwner;
    }

    /**
     * @dev Gets the account for a user
     */
    function getUserAccount(address _user) external view returns (address) {
        return accounts[_user];
    }

    /**
     * @dev Checks if account exists (check if owner exists)
     */
    function isUserAccount(address _account) external view virtual returns (bool) {
        return accountOwners[_account] != address(0);
    }
    
    /**
     * @dev Get the total number of accounts created
     */
    function getAccountCount() external view returns (uint256) {
        return accountCount;
    }
}