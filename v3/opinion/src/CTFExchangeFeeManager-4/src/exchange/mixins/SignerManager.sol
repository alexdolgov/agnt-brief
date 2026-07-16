// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

import { Auth } from "./Auth.sol";
import { ISignerManager } from "../interfaces/ISignerManager.sol";

/// @title SignerManager
/// @notice Manages hierarchical authorization signer permissions for referral system
/// @dev Implements a three-tier permission system:
///      - Super Admin (contract deployer): Can manage Referral Signer Admins
///      - Referral Signer Admin: Can manage Referral Signers (multiple allowed)
///      - Referral Signer: Can authorize referral configs and trader referrals (multiple allowed)
abstract contract SignerManager is Auth, ISignerManager {
    
    // ============ Storage ============
    
    /// @notice Mapping from address to referral signer admin status
    mapping(address => bool) public referralSignerAdmins;
    
    /// @notice Mapping from address to referral signer status  
    mapping(address => bool) public referralSigners;
    
    /// @notice Track total number of referral signer admins
    uint256 public totalReferralSignerAdmins;
    
    /// @notice Track total number of referral signers
    uint256 public totalReferralSigners;
    
    // ============ Modifiers ============
    
    modifier onlyReferralSignerAdmin() {
        if (!referralSignerAdmins[msg.sender]) revert NotSignerAdmin();
        _;
    }
    
    modifier onlyReferralSigner() {
        if (!referralSigners[msg.sender]) revert NotSigner();
        _;
    }
    
    modifier onlyReferralSignerOrAdmin() {
        if (!referralSigners[msg.sender] && !referralSignerAdmins[msg.sender] && admins[msg.sender] != 1) {
            revert NotAuthorizedSigner();
        }
        _;
    }
    
    // ============ Constructor ============
    
    constructor() {
        // Contract deployer becomes the first referral signer admin and referral signer
        referralSignerAdmins[msg.sender] = true;
        referralSigners[msg.sender] = true;
        totalReferralSignerAdmins = 1;
        totalReferralSigners = 1;
        
        emit SignerAdminAdded(msg.sender, msg.sender);
        emit SignerAdded(msg.sender, msg.sender);
    }
    
    // ============ Super Admin Functions (only Admin) ============
    
    /// @inheritdoc ISignerManager
    function addSignerAdmin(address signerAdmin) external onlyAdmin {
        if (signerAdmin == address(0)) revert InvalidAddress();
        if (referralSignerAdmins[signerAdmin]) revert SignerAdminAlreadyExists();
        
        referralSignerAdmins[signerAdmin] = true;
        totalReferralSignerAdmins++;
        
        emit SignerAdminAdded(signerAdmin, msg.sender);
    }
    
    /// @inheritdoc ISignerManager
    function removeSignerAdmin(address signerAdmin) external onlyAdmin {
        if (!referralSignerAdmins[signerAdmin]) revert SignerAdminNotFound();
        
        referralSignerAdmins[signerAdmin] = false;
        totalReferralSignerAdmins--;
        
        emit SignerAdminRemoved(signerAdmin, msg.sender);
    }
    
    // ============ Signer Admin Functions ============
    
    /// @inheritdoc ISignerManager
    function addSigner(address signer) external onlyReferralSignerAdmin {
        if (signer == address(0)) revert InvalidAddress();
        if (referralSigners[signer]) revert SignerAlreadyExists();
        
        referralSigners[signer] = true;
        totalReferralSigners++;
        
        emit SignerAdded(signer, msg.sender);
    }
    
    /// @inheritdoc ISignerManager
    function removeSigner(address signer) external onlyReferralSignerAdmin {
        if (!referralSigners[signer]) revert SignerNotFound();
        
        referralSigners[signer] = false;
        totalReferralSigners--;
        
        emit SignerRemoved(signer, msg.sender);
    }
    
    /// @inheritdoc ISignerManager
    function batchAddSigners(address[] calldata newSigners) external onlyReferralSignerAdmin {
        uint256 length = newSigners.length;
        if (length == 0) revert InvalidInput();
        
        for (uint256 i = 0; i < length; i++) {
            address signer = newSigners[i];
            if (signer == address(0)) revert InvalidAddress();
            if (referralSigners[signer]) continue; // Skip if already exists
            
            referralSigners[signer] = true;
            totalReferralSigners++;
            
            emit SignerAdded(signer, msg.sender);
        }
    }
    
    /// @inheritdoc ISignerManager
    function batchRemoveSigners(address[] calldata removedSigners) external onlyReferralSignerAdmin {
        uint256 length = removedSigners.length;
        if (length == 0) revert InvalidInput();
        
        for (uint256 i = 0; i < length; i++) {
            address signer = removedSigners[i];
            if (!referralSigners[signer]) continue; // Skip if doesn't exist
            
            referralSigners[signer] = false;
            totalReferralSigners--;
            
            emit SignerRemoved(signer, msg.sender);
        }
    }
    
    // ============ Self-Management Functions ============
    
    /// @inheritdoc ISignerManager
    function renounceSignerAdmin() external onlyReferralSignerAdmin {
        referralSignerAdmins[msg.sender] = false;
        totalReferralSignerAdmins--;
        
        emit SignerAdminRemoved(msg.sender, msg.sender);
    }
    
    /// @inheritdoc ISignerManager
    function renounceSigner() external onlyReferralSigner {
        referralSigners[msg.sender] = false;
        totalReferralSigners--;
        
        emit SignerRemoved(msg.sender, msg.sender);
    }
    
    // ============ View Functions ============
    
    /// @inheritdoc ISignerManager
    function isSignerAdmin(address account) external view returns (bool) {
        return referralSignerAdmins[account];
    }
    
    /// @inheritdoc ISignerManager
    function isSigner(address account) external view returns (bool) {
        return referralSigners[account];
    }
    
    /// @inheritdoc ISignerManager
    function isAuthorizedSigner(address account) external view returns (bool) {
        return referralSigners[account] || referralSignerAdmins[account] || admins[account] == 1;
    }
    
    /// @inheritdoc ISignerManager
    function getSignerStats() external view returns (uint256 signerAdminCount, uint256 signerCount) {
        return (totalReferralSignerAdmins, totalReferralSigners);
    }
    
    // ============ Internal Functions ============
    
    /// @notice Internal function to check if an address is an authorized signer
    /// @param account The address to check
    /// @return True if the address is authorized to sign
    function _isAuthorizedSigner(address account) internal view returns (bool) {
        return referralSigners[account] || referralSignerAdmins[account] || admins[account] == 1;
    }
}
