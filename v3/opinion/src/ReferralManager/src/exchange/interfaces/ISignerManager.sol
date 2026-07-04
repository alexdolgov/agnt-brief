// SPDX-License-Identifier: MIT
pragma solidity <0.9.0;

/// @title ISignerManager
/// @notice Interface for hierarchical referral authorization signer management
interface ISignerManager {
    
    // ============ Events ============
    
    /// @notice Emitted when a new referral signer admin is added
    /// @param signerAdmin The address of the new referral signer admin
    /// @param addedBy The address that added the referral signer admin
    event SignerAdminAdded(address indexed signerAdmin, address indexed addedBy);
    
    /// @notice Emitted when a referral signer admin is removed
    /// @param signerAdmin The address of the removed referral signer admin
    /// @param removedBy The address that removed the referral signer admin
    event SignerAdminRemoved(address indexed signerAdmin, address indexed removedBy);
    
    /// @notice Emitted when a new referral signer is added
    /// @param signer The address of the new referral signer
    /// @param addedBy The address that added the referral signer
    event SignerAdded(address indexed signer, address indexed addedBy);
    
    /// @notice Emitted when a referral signer is removed
    /// @param signer The address of the removed referral signer
    /// @param removedBy The address that removed the referral signer
    event SignerRemoved(address indexed signer, address indexed removedBy);
    
    // ============ Errors ============
    
    /// @notice Thrown when caller is not a referral signer admin
    error NotSignerAdmin();
    
    /// @notice Thrown when caller is not a referral signer
    error NotSigner();
    
    /// @notice Thrown when caller is not an authorized referral signer
    error NotAuthorizedSigner();
    
    /// @notice Thrown when trying to add a referral signer admin that already exists
    error SignerAdminAlreadyExists();
    
    /// @notice Thrown when trying to remove a referral signer admin that doesn't exist
    error SignerAdminNotFound();
    
    /// @notice Thrown when trying to add a referral signer that already exists
    error SignerAlreadyExists();
    
    /// @notice Thrown when trying to remove a referral signer that doesn't exist
    error SignerNotFound();
    
    /// @notice Thrown when an invalid address is provided
    error InvalidAddress();
    
    /// @notice Thrown when invalid input is provided
    error InvalidInput();
    
    // ============ Super Admin Functions (only Admin) ============
    
    /// @notice Adds a new referral signer admin
    /// @dev Can only be called by contract admin (super admin)
    /// @param signerAdmin The address to add as referral signer admin
    function addSignerAdmin(address signerAdmin) external;
    
    /// @notice Removes a referral signer admin
    /// @dev Can only be called by contract admin (super admin)
    /// @param signerAdmin The address to remove from referral signer admin
    function removeSignerAdmin(address signerAdmin) external;
    
    // ============ Referral Signer Admin Functions ============
    
    /// @notice Adds a new referral signer
    /// @dev Can only be called by referral signer admin
    /// @param signer The address to add as referral signer
    function addSigner(address signer) external;
    
    /// @notice Removes a referral signer
    /// @dev Can only be called by referral signer admin
    /// @param signer The address to remove from referral signer
    function removeSigner(address signer) external;
    
    /// @notice Adds multiple referral signers in a single transaction
    /// @dev Can only be called by referral signer admin
    /// @param newSigners Array of addresses to add as referral signers
    function batchAddSigners(address[] calldata newSigners) external;
    
    /// @notice Removes multiple referral signers in a single transaction
    /// @dev Can only be called by referral signer admin
    /// @param removedSigners Array of addresses to remove from referral signers
    function batchRemoveSigners(address[] calldata removedSigners) external;
    
    // ============ Self-Management Functions ============
    
    /// @notice Allows a referral signer admin to renounce their role
    function renounceSignerAdmin() external;
    
    /// @notice Allows a referral signer to renounce their role
    function renounceSigner() external;
    
    // ============ View Functions ============
    
    /// @notice Checks if an address is a referral signer admin
    /// @param account The address to check
    /// @return True if the address is a referral signer admin
    function isSignerAdmin(address account) external view returns (bool);
    
    /// @notice Checks if an address is a referral signer
    /// @param account The address to check
    /// @return True if the address is a referral signer
    function isSigner(address account) external view returns (bool);
    
    /// @notice Checks if an address is authorized to sign referrals (referral signer, referral signer admin, or admin)
    /// @param account The address to check
    /// @return True if the address is authorized to sign referrals
    function isAuthorizedSigner(address account) external view returns (bool);
    
    /// @notice Gets the current counts of referral signer admins and referral signers
    /// @return signerAdminCount The total number of referral signer admins
    /// @return signerCount The total number of referral signers
    function getSignerStats() external view returns (uint256 signerAdminCount, uint256 signerCount);
}
