// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import { MerkleProof } from '@openzeppelin/contracts/utils/cryptography/MerkleProof.sol';
import { IHypernativeFirewall } from './interfaces/helpers/IHypernativeFirewall.sol';
import './interfaces/IZeUSDRouterV2.sol';
import './interfaces/vaults/IVault.sol';
import './interfaces/IVaultRegistry.sol';
import './implementations/ZeUSD.sol';
import './libraries/SystemRoles.sol';
import './utils/Constants.sol';
import './interfaces/IZeDP.sol';
import './interfaces/IWithdrawalSystem.sol';
import './interfaces/access/IRegistry.sol';

/**
 * @title ZeUSD Router V2
 * @author ZeUSD Protocol Team
 * @notice Main entry point for ZeUSD protocol operations, handling deposits, withdrawals, and token rebalancing
 * @dev Implements UUPS upgradeable pattern with role-based access control and ERC7201 storage pattern
 *
 * The ZeUSDRouterV2 contract serves as the central user-facing gateway for the ZeUSD protocol,
 * managing deposits of supported assets, minting of ZeUSD tokens, and handling withdrawal
 * requests. It coordinates between different protocol components while enforcing access
 * control and security checks.
 *
 * Key Functions:
 * - Asset deposits with ZeUSD minting
 * - Withdrawal initiation via the WithdrawalSystem
 * - Legacy ZeUSD token rebalancing via merkle proofs
 * - Emergency pause/unpause capabilities
 *
 * Security Features:
 * - Reentrancy protection on all external functions
 * - Pausable operations for emergency scenarios
 * - Blacklist checking to prevent unauthorized access
 * - Input validation for all user-provided parameters
 * - Role-based access control for admin functions
 *
 * Integration Points:
 * - VaultRegistry for asset validation and deposit processing
 * - ZeUSD token for minting and burning operations
 * - ZeDP (Deposit Position) for NFT minting and management
 * - WithdrawalSystem for asset withdrawal processing
 * - System Registry for contract resolution
 *
 * Storage Architecture:
 * - ERC7201 namespaced storage pattern for upgrade safety
 * - Storage struct containing all state variables
 * - Constant storage slot to prevent collisions
 *
 * @custom:roles-and-capabilities
 * GUARDIAN_ROLE:
 * - Pause/unpause protocol operations
 * - Update merkle root for token rebalancing
 * - Perform contract upgrades via UUPS pattern
 *
 * USER CAPABILITIES:
 * - Deposit assets and mint ZeUSD (when not blacklisted)
 * - Withdraw assets by burning ZeUSD
 * - Rebalance old ZeUSD tokens to new version (with merkle proof)
 *
 * RESTRICTIONS:
 * - Blacklisted users cannot perform any operations
 * - Operations are blocked when protocol is paused
 * - Withdrawal requires NFT ownership
 * - Rebalancing requires valid merkle proof
 *
 * @custom:security-contact tech@zoth.io
 */
contract ZeUSDRouterV2 is
    IZeUSDRouterV2,
    UUPSUpgradeable,
    ReentrancyGuardUpgradeable,
    PausableUpgradeable,
    AccessManagedUpgradeable
{
    using SafeERC20 for IERC20;

    /**
     * @notice Main storage structure for the router
     * @dev All state variables should be added here to maintain upgradeability
     * @custom:security-considerations Ensure proper initialization in upgrades
     */
    struct Storage {
        bytes32 merkleRoot;
        IRegistry registry;
        mapping(address => bool) whitelisted;
        address migrationTreasury;
        mapping(bytes32 => bool) usedMerkleLeaves; // Track used merkle leaves to prevent replay attacks
    }

    /**
     * @notice Storage location for ERC7201 storage pattern
     * @dev keccak256(abi.encode(uint256(keccak256("zeusd.router.storage")) - 1)) & ~bytes32(uint256(0xff))
     * @custom:security Critical for storage layout - do not modify
     */
    bytes32 private constant ZEUSD_ROUTER_STORAGE_LOCATION =
        0xeddcf7f77e032899ed6065a18790edcb7ee2c6509b1abec826782b9a7e12f100;

    bytes32 private constant HYPERNATIVE_ORACLE_STORAGE_SLOT =
        bytes32(uint256(keccak256('eip1967.hypernative.firewall')) - 1);
    bytes32 private constant HYPERNATIVE_ADMIN_STORAGE_SLOT =
        bytes32(uint256(keccak256('eip1967.hypernative.admin')) - 1);
    bytes32 private constant HYPERNATIVE_MODE_STORAGE_SLOT =
        bytes32(uint256(keccak256('eip1967.hypernative.is_strict_mode')) - 1);

    event FirewallAdminChanged(address indexed previousAdmin, address indexed newAdmin);
    event FirewallAddressChanged(address indexed previousFirewall, address indexed newFirewall);

    /**
     * @notice Retrieves storage pointer for ERC7201 storage
     * @dev Uses assembly for consistent storage slot access
     * @return $ Storage pointer to Storage struct
     * @custom:security Critical for storage access - do not modify
     */
    function _getStorage() private pure returns (Storage storage $) {
        bytes32 position = ZEUSD_ROUTER_STORAGE_LOCATION;
        assembly {
            $.slot := position
        }
    }

    /**
     * @notice Ensures caller is not blacklisted
     * @dev Reverts if the caller is blacklisted in the ZeUSD token contract
     * @custom:security Critical access control check
     */
    modifier notBlacklisted() {
        Storage storage $ = _getStorage();
        if (ZeUSD($.registry.getContract(Constants.CONTRACT_ZEUSD_TOKEN)).isBlacklisted(msg.sender))
            revert ZeUSDRouter_Blacklisted(msg.sender);
        _;
    }

    /**
     * @notice Ensures amount is not zero
     * @dev Prevents zero-value transactions
     * @param amount Amount to validate
     * @custom:security Input validation
     */
    modifier validAmount(uint256 amount) {
        if (amount == 0) revert ZeUSDRouter_ZeroAmount();
        _;
    }

    modifier onlyFirewallApproved() {
        address firewallAddress = _hypernativeFirewall();
        if (firewallAddress == address(0)) {
            _;
            return;
        }

        IHypernativeFirewall firewall = IHypernativeFirewall(firewallAddress);
        firewall.validateForbiddenContextInteraction(tx.origin, msg.sender);
        _;
    }

    modifier onlyFirewallApprovedAllowEOA() {
        address firewallAddress = _hypernativeFirewall();
        if (firewallAddress == address(0)) {
            _;
            return;
        }
        IHypernativeFirewall firewall = IHypernativeFirewall(firewallAddress);
        firewall.validateBlacklistedAccountInteraction(msg.sender);
        if (tx.origin == msg.sender && msg.sender.code.length == 0) {
            _;
            return;
        }

        firewall.validateForbiddenContextInteraction(tx.origin, msg.sender);
        _;
    }

    modifier onlyNotBlacklistedEOA() {
        address firewallAddress = _hypernativeFirewall();
        if (firewallAddress == address(0)) {
            _;
            return;
        }

        IHypernativeFirewall firewall = IHypernativeFirewall(firewallAddress);
        require(
            msg.sender == tx.origin && msg.sender.code.length == 0,
            'FirewallProtected: caller is not EOA'
        );
        firewall.validateBlacklistedAccountInteraction(msg.sender);
        _;
    }

    modifier onlyFirewallAdmin() {
        require(
            msg.sender == hypernativeFirewallAdmin(),
            'FirewallProtected: caller is not the firewall admin'
        );
        _;
    }

    /**
     * @dev Prevents implementation contract from being initialized
     * @custom:oz-upgrades-unsafe-allow constructor
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the ZeUSD Router contract
     * @dev Only callable once during proxy deployment
     * @param registry Address of the system registry
     * @param merkleRoot Initial merkle root for rebalancing verification
     * @param _accessManager Address of the access manager
     * @param _firewall Address of HypernativeFirewallProtected contract
     * @param _migrationTreasury Address where old tokens will be transferred during rebalancing
     * @custom:security Only callable once and only by owner
     */
    function initialize(
        address registry,
        bytes32 merkleRoot,
        address _accessManager,
        address _firewall,
        address _migrationTreasury
    ) external initializer {
        if (registry == address(0)) revert ZeUSDRouter_InvalidAddress(registry);
        if (_accessManager == address(0)) revert ZeUSDRouter_InvalidAddress(_accessManager);
        if (_firewall == address(0)) revert ZeUSDRouter_InvalidAddress(_firewall);
        if (_migrationTreasury == address(0)) revert ZeUSDRouter_InvalidAddress(_migrationTreasury);
        _changeFirewallAdmin(msg.sender);
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();
        __Pausable_init();
        __AccessManaged_init(_accessManager);

        Storage storage $ = _getStorage();

        $.registry = IRegistry(registry);
        $.merkleRoot = merkleRoot;
        $.migrationTreasury = _migrationTreasury;
        setFirewall(_firewall);
    }

    /**
     * @notice Get the access manager contract
     * @return IAccessManager interface to the access manager
     */
    function accessManager() external view returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Internal mint function for all mint operations
     * @dev Handles asset transfers and NFT minting
     * @param rwaAddress RWA asset address
     * @param assetAddress Asset being deposited
     * @param amount Amount to deposit
     * @param nftRecipient Address to receive minted NFT
     * @param zeusdRecipient Address to receive minted ZeUSD
     * @return tokenId Minted NFT token ID
     * @return zeusdMinted Amount of ZeUSD minted
     * @custom:security Validates assets and amounts
     */
    function _mint(
        address rwaAddress,
        address assetAddress,
        uint256 amount,
        address nftRecipient,
        address zeusdRecipient
    ) internal returns (uint256 tokenId, uint256 zeusdMinted) {
        Storage storage $ = _getStorage();

        address vaultAddress = IVaultRegistry(
            $.registry.getContract(Constants.CONTRACT_VAULT_REGISTRY)
        ).getVaultAddress(rwaAddress);
        if (vaultAddress == address(0)) revert ZeUSDRouter_AssetNotSupported(rwaAddress);
        if (!IVault(vaultAddress).isAssetSupported(assetAddress))
            revert ZeUSDRouter_AssetNotSupported(assetAddress);

        IERC20(assetAddress).safeTransferFrom(msg.sender, vaultAddress, amount);

        (bool result, uint256 rwaAmount) = IVault(vaultAddress).handleDeposit(
            msg.sender,
            assetAddress,
            amount
        );
        if (!result || rwaAmount == 0)
            revert ZeUSDRouter_DepositFailed('SubVault operation failed');

        tokenId = IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)).getNextTokenId();

        DataTypes.DepositMetadata memory metadata = IVaultRegistry(
            $.registry.getContract(Constants.CONTRACT_VAULT_REGISTRY)
        ).validateAndPrepareDeposit(
                nftRecipient,
                rwaAddress,
                assetAddress,
                amount,
                rwaAmount,
                tokenId
            );

        ZeUSD($.registry.getContract(Constants.CONTRACT_ZEUSD_TOKEN)).mint(
            zeusdRecipient,
            metadata.zeusdMinted
        );
        tokenId = IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)).mint(
            nftRecipient,
            metadata
        );

        emit Deposit(nftRecipient, tokenId, assetAddress, amount, metadata.zeusdMinted);
        return (tokenId, metadata.zeusdMinted);
    }

    /**
     * @notice Mints ZeUSD using collateral asset
     * @dev Direct deposit of primary collateral
     * @param rwaAddress RWA token address
     * @param assetAddress Asset being deposited
     * @param amount Amount to deposit
     * @return tokenId Minted NFT token ID
     * @return zeusdMinted Amount of ZeUSD minted
     * @custom:security Multiple access controls and validations
     */
    function deposit(
        address rwaAddress,
        address assetAddress,
        uint256 amount
    )
        external
        override
        nonReentrant
        whenNotPaused
        notBlacklisted
        onlyWhitelisted
        onlyFirewallApproved
        validAmount(amount)
        returns (uint256, uint256)
    {
        revert ZeUSDRouter_DepositsPaused();
    }

    /**
     * @notice Burns ZeUSD tokens to reclaim assets
     * @dev Initiates withdrawal through withdrawal system
     * @param nftTokenId User's deposit NFT ID
     * @custom:security Validates NFT ownership and burn amount
     */
    function withdraw(
        uint256 nftTokenId
    ) external nonReentrant whenNotPaused onlyWhitelisted onlyFirewallApproved {
        Storage storage $ = _getStorage();

        if (
            IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)).ownerOf(nftTokenId) !=
            msg.sender
        ) revert ZeUSDRouter_NotNFTOwner();

        DataTypes.DepositMetadata memory metadata = IZeDP(
            $.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)
        ).getDepositDetails(nftTokenId);
        if (metadata.isWithdrawInitiated) revert ZeUSDRouter_WithdrawalInitiated();
        if (
            !IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)).updateWithdrawalStatus(
                nftTokenId,
                true
            )
        ) revert ZeUSDRouter_WithdrawalFailed();

        ZeUSD($.registry.getContract(Constants.CONTRACT_ZEUSD_TOKEN)).burnFrom(
            msg.sender,
            metadata.zeusdMinted
        );

        IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)).safeTransferFrom(
            msg.sender,
            address($.registry.getContract(Constants.CONTRACT_WITHDRAWAL_SYSTEM)),
            nftTokenId
        );

        // Initiate withdrawal through withdrawal system
        IWithdrawalSystem($.registry.getContract(Constants.CONTRACT_WITHDRAWAL_SYSTEM))
            .initiateWithdrawal(nftTokenId, msg.sender, metadata);
    }

    /**
     * @notice Ensures caller is whitelisted for rebalancing
     * @dev Reverts if the caller is not whitelisted
     * @custom:security Critical access control check
     */
    modifier onlyWhitelisted() {
        Storage storage $ = _getStorage();
        if (!$.whitelisted[msg.sender]) revert ZeUSDRouter_NotWhitelisted(msg.sender);
        _;
    }

    /**
     * @notice Rebalances ZeUSD tokens from old system to new system with merkle verification
     * @dev Burns old ZeUSD and mints new ZeUSD based on verified data from merkle proof
     * @param proof Merkle proof for verification
     * @param rebalanceData Simplified rebalance data containing only user-provided values
     * @custom:security Critical function - uses merkle proof to prevent unlimited minting
     */
    function rebalanceZeUSD(
        bytes32[] calldata proof,
        DataTypes.RebalanceData calldata rebalanceData
    ) external nonReentrant whenNotPaused onlyWhitelisted onlyFirewallApproved {
        Storage storage $ = _getStorage();

        // Get new token ID
        uint256 tokenId = IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP))
            .getNextTokenId();

        // Get vault address for USYC
        address vaultAddress = IVaultRegistry(
            $.registry.getContract(Constants.CONTRACT_VAULT_REGISTRY)
        ).getVaultAddress($.registry.getContract(Constants.CONTRACT_USYC));

        // Create new metadata with system-determined values and user-provided data
        DataTypes.DepositMetadata memory metadata = DataTypes.DepositMetadata({
            issuer: msg.sender,
            rwa: $.registry.getContract(Constants.CONTRACT_USYC),
            assetDeposited: $.registry.getContract(Constants.CONTRACT_USDC),
            assetAmountDeposited: rebalanceData.assetAmountDeposited,
            rwaAmount: rebalanceData.rwaAmount,
            zeusdMinted: rebalanceData.zeusdMinted,
            depositTimestamp: block.timestamp,
            tokenId: tokenId,
            rwaPrice: rebalanceData.rwaPrice,
            assetPrice: rebalanceData.assetPrice,
            vaultAddress: vaultAddress,
            vaultName: 'USYC Vault',
            isStable: true,
            isWithdrawInitiated: false,
            isLiquidated: false
        });

        // Create the leaf hash for merkle verification
        bytes32 leaf = keccak256(
            bytes.concat(
                keccak256(
                    abi.encode(
                        msg.sender,
                        metadata.issuer,
                        metadata.rwa,
                        metadata.assetDeposited,
                        metadata.assetAmountDeposited,
                        metadata.rwaAmount,
                        metadata.zeusdMinted,
                        metadata.rwaPrice,
                        metadata.assetPrice,
                        metadata.vaultAddress,
                        metadata.vaultName,
                        metadata.isStable,
                        metadata.isWithdrawInitiated,
                        metadata.isLiquidated
                    )
                )
            )
        );

        // Validate proof length to prevent empty proof bypass
        if (proof.length == 0) {
            revert ZeUSDRouter_EmptyMerkleProof();
        }

        // Verify the merkle proof
        if (!MerkleProof.verify(proof, $.merkleRoot, leaf)) {
            revert ZeUSDRouter_InvalidProof();
        }

        // Check if this leaf has already been used to prevent replay attacks
        if ($.usedMerkleLeaves[leaf]) {
            revert ZeUSDRouter_MerkleLeafAlreadyUsed();
        }

        // Mark this leaf as used
        $.usedMerkleLeaves[leaf] = true;

        // Get all old NFTs owned by the user
        uint256[] memory allNftTokenIds = IZeDP(
            $.registry.getContract(Constants.CONTRACT_ZEUSD_CDP_OLD)
        ).getTokensByOwner(msg.sender);

        // Calculate total old ZeUSD required
        uint256 totalOldZeUSDRequired = 0;
        for (uint256 i = 0; i < allNftTokenIds.length; i++) {
            DataTypes.DepositMetadata memory oldMetadata = IZeDP(
                $.registry.getContract(Constants.CONTRACT_ZEUSD_CDP_OLD)
            ).getDepositDetails(allNftTokenIds[i]);
            totalOldZeUSDRequired += oldMetadata.zeusdMinted;
        }

        // Verify user has enough old ZeUSD balance
        uint256 currentOldZeUSDBalance = ZeUSD(
            $.registry.getContract(Constants.CONTRACT_ZEUSD_TOKEN_OLD)
        ).balanceOf(msg.sender);
        if (currentOldZeUSDBalance < totalOldZeUSDRequired) {
            revert ZeUSDRouter_InsufficientOldZeUSDBalance();
        }

        // Transfer old ZeUSD to migration treasury instead of burning
        ZeUSD($.registry.getContract(Constants.CONTRACT_ZEUSD_TOKEN_OLD)).transferFrom(
            msg.sender,
            $.migrationTreasury,
            totalOldZeUSDRequired
        );

        // Transfer old NFTs to migration treasury instead of burning
        for (uint256 i = 0; i < allNftTokenIds.length; i++) {
            IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP_OLD)).transferFrom(
                msg.sender,
                $.migrationTreasury,
                allNftTokenIds[i]
            );
        }

        // Mint new ZeUSD
        ZeUSD($.registry.getContract(Constants.CONTRACT_ZEUSD_TOKEN)).mint(
            msg.sender,
            rebalanceData.zeusdMinted
        );

        // Mint new NFT
        IZeDP($.registry.getContract(Constants.CONTRACT_ZEUSD_CDP)).mint(msg.sender, metadata);

        emit Rebalance(msg.sender, tokenId, rebalanceData.zeusdMinted);
    }

    /**
     * @notice Sets the whitelist status for an address
     * @param account Address to set whitelist status for
     * @param status New whitelist status
     * @custom:security Only callable by GATEKEEPER_ROLE
     */
    function setWhitelistStatus(address account, bool status) external restricted {
        if (account == address(0)) revert ZeUSDRouter_InvalidAddress(account);
        Storage storage $ = _getStorage();
        $.whitelisted[account] = status;
        emit WhitelistStatusUpdated(account, status);
    }

    /**
     * @notice Checks if an address is whitelisted
     * @param account Address to check
     * @return bool True if address is whitelisted
     */
    function isWhitelisted(address account) external view returns (bool) {
        Storage storage $ = _getStorage();
        return $.whitelisted[account];
    }

    /**
     * @notice Pauses router operations
     * @custom:security Only callable by GUARDIAN_ROLE
     */
    function pause() external restricted {
        _pause();
    }

    /**
     * @notice Unpauses router operations
     * @custom:security Only callable by GUARDIAN_ROLE
     */
    function unpause() external restricted {
        _unpause();
    }

    /**
     * @notice Updates the merkle root
     * @custom:security Only callable by GUARDIAN_ROLE
     */
    function updateMerkleRoot(bytes32 _merkleRoot) external restricted {
        Storage storage $ = _getStorage();
        $.merkleRoot = _merkleRoot;

        emit MerkleRootUpdated(_merkleRoot);
    }

    /**
     * @notice Sets the migration treasury address
     * @param _migrationTreasury New migration treasury address
     * @custom:security Only callable by TREASURY_ROLE
     */
    function setMigrationTreasury(address _migrationTreasury) external restricted {
        if (_migrationTreasury == address(0)) revert ZeUSDRouter_InvalidAddress(_migrationTreasury);
        Storage storage $ = _getStorage();
        address oldTreasury = $.migrationTreasury;
        $.migrationTreasury = _migrationTreasury;

        emit MigrationTreasuryUpdated(oldTreasury, _migrationTreasury);
    }

    /**
     * @notice Gets the current migration treasury address
     * @return address Current migration treasury address
     */
    function getMigrationTreasury() external view returns (address) {
        Storage storage $ = _getStorage();
        return $.migrationTreasury;
    }

    /**
     * @notice Authorizes contract upgrades
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address newImplementation) internal override restricted {}

    function firewallRegister(address _account) public virtual {
        address firewallAddress = _hypernativeFirewall();
        bool isStrictMode = _hypernativeFirewallIsStrictMode();
        IHypernativeFirewall firewall = IHypernativeFirewall(firewallAddress);
        firewall.register(_account, isStrictMode);
    }

    /**
     * @dev Admin only function, sets new firewall admin. set to address(0) to revoke firewall
     */
    function setFirewall(address _firewall) public onlyFirewallAdmin {
        address oldFirewall = _hypernativeFirewall();
        _setAddressBySlot(HYPERNATIVE_ORACLE_STORAGE_SLOT, _firewall);
        emit FirewallAddressChanged(oldFirewall, _firewall);
    }

    function setIsStrictMode(bool _mode) public onlyFirewallAdmin {
        _setValueBySlot(HYPERNATIVE_MODE_STORAGE_SLOT, _mode ? 1 : 0);
    }

    function changeFirewallAdmin(address _newAdmin) public onlyFirewallAdmin {
        require(_newAdmin != address(0), 'Firewall admin cannot be set to 0');
        _changeFirewallAdmin(_newAdmin);
    }

    function _changeFirewallAdmin(address _newAdmin) internal {
        address oldAdmin = hypernativeFirewallAdmin();
        _setAddressBySlot(HYPERNATIVE_ADMIN_STORAGE_SLOT, _newAdmin);
        emit FirewallAdminChanged(oldAdmin, _newAdmin);
    }

    function _setAddressBySlot(bytes32 slot, address newAddress) internal {
        assembly {
            sstore(slot, newAddress)
        }
    }

    function _setValueBySlot(bytes32 _slot, uint256 _value) internal {
        assembly {
            sstore(_slot, _value)
        }
    }

    function hypernativeFirewallAdmin() public view returns (address) {
        return _getAddressBySlot(HYPERNATIVE_ADMIN_STORAGE_SLOT);
    }

    function _hypernativeFirewallIsStrictMode() private view returns (bool) {
        return _getValueBySlot(HYPERNATIVE_MODE_STORAGE_SLOT) == 1;
    }

    function _hypernativeFirewall() private view returns (address) {
        return _getAddressBySlot(HYPERNATIVE_ORACLE_STORAGE_SLOT);
    }

    function _getAddressBySlot(bytes32 slot) internal view returns (address addr) {
        assembly {
            addr := sload(slot)
        }
    }

    function _getValueBySlot(bytes32 _slot) internal view returns (uint256 value) {
        assembly {
            value := sload(_slot)
        }
    }
}
