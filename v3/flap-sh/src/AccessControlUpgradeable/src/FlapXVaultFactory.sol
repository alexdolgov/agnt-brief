// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {IVaultFactory} from "./interfaces/IVaultFactory.sol";
import {FlapXVault} from "./FlapXVault.sol";
import {AccessControl} from "@openzeppelin/access/AccessControl.sol";
import {Clones} from "@openzeppelin/proxy/Clones.sol";
import {ECDSA} from "@openzeppelin/utils/cryptography/ECDSA.sol";
import {EIP712} from "@openzeppelin/utils/cryptography/EIP712.sol";

/// @title FlapXVaultFactory
/// @notice Factory contract for creating FlapXVault instances
/// @dev Implements IVaultFactory interface and handles Twitter proof verification
contract FlapXVaultFactory is IVaultFactory, AccessControl, EIP712 {
    using ECDSA for bytes32;

    /// @notice Thrown when the xHandle is empty
    error EmptyXHandle();

    /// @notice The VaultPortal contract address
    address public immutable VAULT_PORTAL;

    /// @notice The vault implementation address for cloning
    address public immutable vaultImplementation;

    /// @notice Mapping from tax token to vault address
    mapping(address => address) public taxTokenToVault;

    /// @notice The Twitter oracle key address for signature verification
    address public xOracleKeyAddress;

    /// @notice The SnowBallHelper contract address
    address public snowBallHelper;

    /// @notice Default timeout period (7 days)
    uint256 public timeoutPeriod = 7 days;

    /// @notice EIP712 type hash for XProof
    bytes32 private constant XPROOF_TYPEHASH =
        keccak256("XProof(address targetAddress,address taxToken,string xHandle,uint128 XId,uint128 tweetId)");

    /// @notice XProof struct for EIP712 signature verification
    struct XProof {
        address targetAddress;
        address taxToken;
        string xHandle;
        uint128 XId;
        uint128 tweetId;
    }

    /// @notice Vault creation parameters
    struct VaultData {
        string xHandle;
    }

    /// @notice Constructor
    /// @param _vaultPortal The VaultPortal contract address
    /// @param _vaultImplementation The initial vault implementation address
    /// @param _xOracleKeyAddress The initial Twitter oracle key address
    /// @param _snowBallHelper The SnowBallHelper contract address
    constructor(address _vaultPortal, address _vaultImplementation, address _xOracleKeyAddress, address _snowBallHelper)
        EIP712("FlapXVaultFactory", "1")
    {
        if (_vaultPortal == address(0)) {
            revert ZeroAddress();
        }
        if (_vaultImplementation == address(0)) {
            revert ZeroAddress();
        }

        VAULT_PORTAL = _vaultPortal;
        vaultImplementation = _vaultImplementation;
        xOracleKeyAddress = _xOracleKeyAddress;
        snowBallHelper = _snowBallHelper;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _grantRole(DEFAULT_ADMIN_ROLE, address(_vaultPortal));
    }

    /// @notice Create a new vault instance
    /// @param taxToken The predicted tax token address (not yet deployed)
    /// @param quoteToken The quote token address
    /// @param creator The original msg.sender who initiated token creation
    /// @param vaultData Custom encoded data (VaultData struct)
    /// @return vault The address of the newly created vault
    function newVault(address taxToken, address quoteToken, address creator, bytes calldata vaultData)
        external
        override
        returns (address vault)
    {
        // Validate caller is vaultPortal
        if (msg.sender != VAULT_PORTAL) {
            revert OnlyVaultPortal();
        }

        // Decode vaultData to extract xHandle
        VaultData memory data = abi.decode(vaultData, (VaultData));

        // Validate xHandle is not empty
        if (bytes(data.xHandle).length == 0) {
            revert EmptyXHandle();
        }

        // Use deterministic cloning based on taxToken address
        bytes32 salt = bytes32(uint256(uint160(taxToken)));
        vault = Clones.cloneDeterministic(vaultImplementation, salt);

        // Initialize the vault
        FlapXVault(payable(vault)).initialize(taxToken, quoteToken, data.xHandle, timeoutPeriod);

        // Grant SNOWBALL_ROLE to the SnowBallHelper
        if (snowBallHelper != address(0)) {
            FlapXVault(payable(vault)).grantRole(keccak256("SNOWBALL_ROLE"), snowBallHelper);
        }

        // Store the mapping from tax token to vault
        taxTokenToVault[taxToken] = vault;

        return vault;
    }

    /// @notice Check if a quote token is supported
    /// @param quoteToken The quote token address
    /// @return supported True if supported (only BNB/address(0) for now)
    function isQuoteTokenSupported(address quoteToken) external pure override returns (bool supported) {
        // Only support BNB (address(0)) for now
        return quoteToken == address(0);
    }

    /// @notice Verify XProof signature
    /// @param proof The XProof struct
    /// @param signature The signature bytes
    /// @return valid True if signature is valid
    function verifyXProof(XProof calldata proof, bytes calldata signature) external view returns (bool valid) {
        // If oracle key is not set, return false
        if (xOracleKeyAddress == address(0)) {
            return false;
        }

        // Hash the struct according to EIP712
        bytes32 structHash = keccak256(
            abi.encode(
                XPROOF_TYPEHASH,
                proof.targetAddress,
                proof.taxToken,
                keccak256(bytes(proof.xHandle)),
                proof.XId,
                proof.tweetId
            )
        );

        bytes32 hash = _hashTypedDataV4(structHash);
        address signer = hash.recover(signature);

        return signer == xOracleKeyAddress;
    }

    /// @notice Set the Twitter oracle key address
    /// @param _xOracleKeyAddress The new Twitter oracle key address
    /// @dev Only DEFAULT_ADMIN_ROLE can call this
    function setxOracleKeyAddress(address _xOracleKeyAddress) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_xOracleKeyAddress == address(0)) {
            revert ZeroAddress();
        }
        xOracleKeyAddress = _xOracleKeyAddress;
    }

    /// @notice Set the timeout period
    /// @param _timeoutPeriod The new timeout period
    /// @dev Only DEFAULT_ADMIN_ROLE can call this
    function setTimeoutPeriod(uint256 _timeoutPeriod) external onlyRole(DEFAULT_ADMIN_ROLE) {
        timeoutPeriod = _timeoutPeriod;
    }

    /// @notice Set the SnowBallHelper address
    /// @param _snowBallHelper The new SnowBallHelper address
    /// @dev Only DEFAULT_ADMIN_ROLE can call this
    function setSnowBallHelper(address _snowBallHelper) external onlyRole(DEFAULT_ADMIN_ROLE) {
        snowBallHelper = _snowBallHelper;
    }

    /// @notice Grant SNOWBALL_ROLE of a specific vault to an address
    /// @param vault The vault address
    /// @param account The address to grant the role to
    /// @dev Only DEFAULT_ADMIN_ROLE can call this
    function grantVaultSnowballRole(address vault, address account) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (vault == address(0)) {
            revert ZeroAddress();
        }
        if (account == address(0)) {
            revert ZeroAddress();
        }

        // Grant SNOWBALL_ROLE to the account in the vault
        FlapXVault(payable(vault)).grantRole(FlapXVault(payable(vault)).SNOWBALL_ROLE(), account);
    }

    /// @notice Error when vault does not exist for the given tax token
    error VaultNotFound();

    /// @notice Manage a vault by proof using the tax token address
    /// @param taxToken The tax token address
    /// @param proof The XProof struct for verification
    /// @param signature The signature bytes
    /// @dev Looks up the vault address and calls manageByProof
    function manageByProof(address taxToken, XProof calldata proof, bytes calldata signature) external {
        // Get the vault address
        address vault = taxTokenToVault[taxToken];

        // Revert if vault does not exist
        if (vault == address(0)) {
            revert VaultNotFound();
        }

        // Call the vault's manageByProof method
        FlapXVault.XProof memory vaultProof = FlapXVault.XProof({
            targetAddress: proof.targetAddress,
            taxToken: proof.taxToken,
            xHandle: proof.xHandle,
            XId: proof.XId,
            tweetId: proof.tweetId
        });

        FlapXVault(payable(vault)).manageByProof(vaultProof, signature);
    }

    /// @notice Check if a user can manage a vault based on their xHandle and tweet ID
    /// @param taxToken The tax token address
    /// @param xHandle The user's Twitter handle
    /// @param tweetId The tweet ID to use for management
    /// @return canManage True if the user can manage the vault
    /// @return errorMessage Error message if canManage is false, empty string otherwise
    function canManageVault(address taxToken, string calldata xHandle, uint128 tweetId)
        external
        view
        returns (bool canManage, string memory errorMessage)
    {
        // Check if vault exists for this tax token
        address vault = taxTokenToVault[taxToken];
        if (vault == address(0)) {
            return (false, "FlapXVault not found for this tax token");
        }

        // Check if xHandle matches
        FlapXVault vaultContract = FlapXVault(payable(vault));
        if (keccak256(bytes(vaultContract.xHandle())) != keccak256(bytes(xHandle))) {
            return (false, "xHandle does not match");
        }

        // Check if vault is in snowball mode
        if (vaultContract.state() == FlapXVault.State.FALLBACK_SNOWBALL) {
            return (false, "Vault is in snowball mode");
        }

        // Check if tweet ID is greater than last tweet ID
        uint128 lastTweetId = vaultContract.lastTweetId();
        if (tweetId <= lastTweetId) {
            return (false, "The tweet is outdated");
        }

        // User can manage
        return (true, "");
    }
}
