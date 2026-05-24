// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/utils/math/Math.sol';
import { SendParam, MessagingFee, MessagingReceipt, OFTReceipt } from '@layerzerolabs/oft-evm/contracts/interfaces/IOFT.sol';
import './implementations/LZAdapter.sol';
import './interfaces/IZeUSDRouter.sol';
import './interfaces/ISubVault.sol';
import './interfaces/ICollateralVault.sol';
import './interfaces/access/IAccessController.sol';
import './implementations/ZeUSD.sol';
import './libraries/DataTypes.sol';
import './libraries/SystemRoles.sol';
import './utils/AccessChecker.sol';
import './utils/Constants.sol';
import './implementations/ZeUSD_CDP.sol';
import './interfaces/IWithdrawalSystem.sol';
import './interfaces/access/IRegistry.sol';
import './interfaces/IZeUSD_CDP.sol';

/**
 * @title ZeUSD Router Implementation
 * @author ZeUSD Protocol Team
 * @notice Main entry point for ZeUSD protocol operations
 * @dev Implements UUPS upgradeable pattern with role-based access control
 * @custom:security-contact paras@zoth.io
 *
 * Security Considerations:
 * - Reentrancy protection on all state-modifying functions
 * - Role-based access control for admin functions
 * - Asset validation sequences
 * - LayerZero bridge security assumptions
 * - Proper upgrade pattern implementation
 *
 * Role Capabilities:
 * DEFAULT_ADMIN_ROLE:
 * - Can grant/revoke all roles
 * - Can upgrade contract
 * - Can perform all admin functions
 *
 * ADMIN_ROLE:
 * - Can configure assets
 * - Can manage whitelist/blacklist
 * - Can pause/unpause operations
 *
 * State Management:
 * - Active: All operations allowed
 * - Paused: No mints/burns
 * - Emergency: Only admin functions
 */
contract ZeUSD_Router is IZeUSDRouter, Initializable, UUPSUpgradeable, ReentrancyGuardUpgradeable {
    using Math for uint256;
    using SafeERC20 for IERC20;

    /// @dev SECURITY CONSIDERATIONS:
    /// - Reentrancy protection in mint/burn operations
    /// - Asset validation sequences
    /// - Proper order of operations (burn before transfer, etc.)
    /// - LayerZero bridge security assumptions
    /// - Role-based access control for admin functions
    /// - Proper upgrade pattern implementation

    /// @dev ROLE CAPABILITIES:
    /// DEFAULT_DEFAULT_ADMIN_ROLE:
    /// - Can grant/revoke all roles
    /// - Can upgrade contract
    /// - Can perform all admin functions
    /// - Super admin capabilities
    ///
    /// DEFAULT_ADMIN_ROLE:
    /// - Can configure assets
    /// - Can manage whitelist/blacklist
    /// - Can pause/unpause operations
    /// - Cannot grant/revoke roles

    /// @dev ERROR HANDLING STRATEGY:
    /// - All operations revert on failure
    /// - Detailed error messages for debugging
    /// - Proper error propagation from sub-contracts
    /// - Emergency pause functionality available

    /// @dev MATHEMATICAL CONSIDERATIONS:
    /// - 1:1 ratio maintained for all mints/burns
    /// - No precision loss in calculations
    /// - Proper balance checks before operations
    /// - Dust amount considerations

    /// @dev STATE TRANSITIONS:
    /// Valid states:
    /// - Active: All operations allowed
    /// - Paused: No mints/burns
    /// - Emergency: Only admin functions
    /// State changes require proper authorization

    /// @dev GAS OPTIMIZATION NOTES:
    /// - Storage access optimized
    /// - Batch operations where possible
    /// - Memory vs Storage usage optimized
    /// - Loop optimizations in deposit checks

    /// @dev ACCESS CONTROL MATRIX:
    /// Role              | Mint | Burn | Admin | Emergency
    /// DEFAULT_ADMIN     |  No  |  No  |  Yes  |   Yes
    /// ADMIN             |  No  |  No  |  Yes  |   Yes
    /// Whitelisted       |  Yes |  Yes |  No   |   No
    /// Blacklisted       |  No  |  No  |  No   |   No

    /// @dev EVENT USAGE GUIDE:
    /// Critical Events (Monitor These):
    /// - Mint/Burn operations
    /// - Role changes
    /// - Emergency actions
    /// - Integration updates
    /// Informational Events:
    /// - Whitelist changes
    /// - Parameter updates

    /// @dev Role definitions
    bytes32 public constant DEFAULT_ADMIN_ROLE = keccak256('DEFAULT_ADMIN_ROLE');

    /// @notice Whitelist mapping
    /// @dev Tracks addresses that are allowed to use the protocol
    mapping(address => bool) private _whitelisted;

    /// @notice Protocol contracts
    ICollateralVault public collateralVault;
    ZeUSD public zeusdToken;
    LZAdapter public lzAdapter;
    IZeUSD_CDP public depositNFT;

    /// @notice Global pause status
    bool public depositsPaused;

    bool private isInitialApprovalSet;

    /// @notice Access controller contract reference
    IAccessController public accessController;

    IWithdrawalSystem public withdrawalSystem;

    /// @dev Add this mapping with other state variables
    mapping(address => DataTypes.DepositMetadata[]) private userPositions;

    /**
     * @notice Ensures caller is whitelisted
     * @dev Prevents non-whitelisted addresses from using protocol
     * @custom:security Access control check
     */
    modifier whitelistedOnly() {
        if (!_whitelisted[msg.sender]) revert NotWhitelisted(msg.sender);
        _;
    }

    /**
     * @notice Ensures caller is not blacklisted
     * @dev Additional security layer to block malicious addresses
     * @custom:security Access control check
     */
    modifier notBlacklisted() {
        if (zeusdToken.isBlacklisted(msg.sender)) revert Blacklisted(msg.sender);
        _;
    }

    /**
     * @notice Ensures operations are not paused
     * @dev Global pause check for emergency situations
     * @custom:security System state check
     */
    modifier whenNotPaused() {
        if (depositsPaused) revert DepositsArePaused();
        _;
    }

    /**
     * @notice Ensures amount is not zero
     * @dev Prevents zero-value transactions
     * @param amount Amount to validate
     * @custom:security Input validation
     */
    modifier validAmount(uint256 amount) {
        if (amount == 0) revert ZeroAmount();
        _;
    }

    /**
     * @dev Prevents initialization of implementation contract
     */
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the router contract
     * @dev Sets up initial contract references
     * @param _collateralVault CollateralVault address
     * @param _zeusdToken ZeUSD token address
     * @param _lzAdapter LayerZero adapter address
     * @param _admin Admin address
     * @custom:security Only callable once
     */
    function initialize(
        address _collateralVault,
        address _zeusdToken,
        address _lzAdapter,
        address _admin
    ) external initializer {
        __UUPSUpgradeable_init();

        if (_collateralVault == address(0)) revert InvalidAddress(_collateralVault);
        if (_zeusdToken == address(0)) revert InvalidAddress(_zeusdToken);
        if (_lzAdapter == address(0)) revert InvalidAddress(_lzAdapter);
        if (_admin == address(0)) revert InvalidAddress(_admin);

        collateralVault = ICollateralVault(_collateralVault);
        zeusdToken = ZeUSD(_zeusdToken);
        lzAdapter = LZAdapter(_lzAdapter);
    }

    /**
     * @notice Initializes V2 of the router contract
     * @dev Sets up registry connections and additional contracts
     * @param registryContract Registry contract address
     * @custom:security Only callable during V2 upgrade
     */
    function initializeV2(address registryContract) public reinitializer(2) {
        if (registryContract == address(0)) revert InvalidAddress(registryContract);

        IRegistry registry = IRegistry(registryContract);

        accessController = IAccessController(
            registry.getContract(Constants.CONTRACT_ACCESS_CONTROLLER)
        );

        withdrawalSystem = IWithdrawalSystem(
            registry.getContract(Constants.CONTRACT_WITHDRAWAL_SYSTEM)
        );

        depositNFT = IZeUSD_CDP(registry.getContract(Constants.CONTRACT_DEPOSIT_NFT));

        if (address(accessController) == address(0))
            revert InvalidAddress(address(accessController));
        if (address(withdrawalSystem) == address(0))
            revert InvalidAddress(address(withdrawalSystem));
        if (address(depositNFT) == address(0)) revert InvalidAddress(address(depositNFT));

        emit V2Initialized(
            address(accessController),
            address(withdrawalSystem),
            address(depositNFT)
        );
    }

    /**
     * @notice Internal mint function for all mint operations
     * @dev Handles asset transfers and NFT minting
     * @param collateralAddress Primary collateral asset address
     * @param asset Asset being deposited
     * @param amount Amount to deposit
     * @param nftRecipient Address to receive minted NFT
     * @param zeusdRecipient Address to receive minted ZeUSD
     * @return tokenId Minted NFT token ID
     * @return msgReceipt LayerZero messaging receipt
     * @return oftReceipt LayerZero OFT receipt
     * @custom:security Validates assets and amounts
     */
    function _mint(
        address collateralAddress,
        address asset,
        uint256 amount,
        address nftRecipient,
        address zeusdRecipient
    )
        internal
        returns (uint256 tokenId, MessagingReceipt memory msgReceipt, OFTReceipt memory oftReceipt)
    {
        address subvault = collateralVault.getSubVaultAddress(collateralAddress);
        if (subvault == address(0)) revert AssetNotSupported(collateralAddress);
        if (!ISubVault(subvault).isAssetSupported(asset)) revert AssetNotSupported(asset);

        // Transfer asset to subvault
        IERC20(asset).safeTransferFrom(msg.sender, subvault, amount);

        // Handle stable deposits
        if (asset != collateralAddress) {
            bool result = ISubVault(subvault).handleDeposit(msg.sender, asset, amount);
            if (!result) revert DepositFailed('SubVault operation failed');
        }
        if (asset == 0x866A2BF4E572CbcF37D5071A7a58503Bfb36be1b) {
            bool result = ISubVault(subvault).handleDeposit(msg.sender, asset, amount);
            if (!result) revert DepositFailed('SubVault operation failed');
        }

        // Get next token ID and metadata
        tokenId = depositNFT.getNextTokenId();
        DataTypes.DepositMetadata memory metadata = collateralVault.validateAndPrepareDeposit(
            nftRecipient, // Use NFT recipient here
            collateralAddress,
            asset,
            amount,
            tokenId
        );

        // Mint NFT and tokens to different recipients
        tokenId = depositNFT.mint(nftRecipient, metadata);
        zeusdToken.mint(zeusdRecipient, metadata.zeusdMinted);

        // Record position using metadata directly
        userPositions[nftRecipient].push(metadata);

        emit DepositProcessed(nftRecipient, tokenId, asset, amount, metadata.zeusdMinted);
    }

    /**
     * @notice Mints ZeUSD using collateral asset
     * @dev Direct deposit of primary collateral
     * @param collateralAddress Collateral asset address
     * @param amount Amount to deposit
     * @return tokenId Minted NFT token ID
     * @custom:security Multiple access controls and validations
     */
    function mintWithCollateral(
        address collateralAddress,
        uint256 amount
    )
        external
        override
        nonReentrant
        whenNotPaused
        whitelistedOnly
        notBlacklisted
        validAmount(amount)
        returns (uint256 tokenId)
    {
        (tokenId, , ) = _mint(collateralAddress, collateralAddress, amount, msg.sender, msg.sender);
    }

    /**
     * @notice Mints ZeUSD using stable asset
     * @dev Deposit of supported stable asset
     * @param collateralAddress Primary collateral asset address
     * @param asset Stable asset address
     * @param amount Amount to deposit
     * @return tokenId Minted NFT token ID
     * @custom:security Multiple access controls and validations
     */

    function mintWithStable(
        address collateralAddress,
        address asset,
        uint256 amount
    )
        external
        override
        nonReentrant
        whenNotPaused
        whitelistedOnly
        notBlacklisted
        validAmount(amount)
        returns (uint256 tokenId)
    {
        (tokenId, , ) = _mint(collateralAddress, asset, amount, msg.sender, msg.sender);
    }

    /**
     * @notice Mints and bridges ZeUSD via LayerZero
     * @dev Routes to appropriate subvault based on collateral
     * @param collateralAddress Primary collateral asset address
     * @param amount Amount to deposit
     * @param sendParam LayerZero send parameters
     * @param nativeFee LayerZero message fee
     * @return tokenId Minted NFT token ID
     * @custom:security Validates bridge setup and fees
     */
    function mintWithCollateralAndBridge(
        address collateralAddress,
        uint256 amount,
        SendParam memory sendParam,
        MessagingFee memory nativeFee
    )
        external
        payable
        override
        nonReentrant
        whenNotPaused
        whitelistedOnly
        notBlacklisted
        validAmount(amount)
        returns (uint256 tokenId)
    {
        if (!isInitialApprovalSet) revert InitialApproval('Initial approval not set');

        // Mint NFT to user, ZeUSD to router
        (tokenId, , ) = _mint(
            collateralAddress,
            collateralAddress,
            amount,
            msg.sender,
            address(this)
        );

        // Bridge ZeUSD
        try lzAdapter.send{ value: msg.value }(sendParam, nativeFee, msg.sender) returns (
            MessagingReceipt memory _msgReceipt,
            OFTReceipt memory _oftReceipt
        ) {
            emit BridgeInitiated(msg.sender, collateralAddress, amount);
            return tokenId;
        } catch Error(string memory reason) {
            revert BridgeFailed(reason);
        }
    }

    /**
     * @notice Mints and bridges stables via LayerZero
     * @dev Routes to appropriate subvault based on asset
     * @param collateralAddress Primary collateral asset address
     * @param asset Stable asset address
     * @param amount Amount to deposit
     * @param sendParam LayerZero send parameters
     * @param nativeFee LayerZero message fee
     * @return tokenId Minted NFT token ID
     * @custom:security Validates bridge setup and fees
     */
    function mintWithStableAndBridge(
        address collateralAddress,
        address asset,
        uint256 amount,
        SendParam memory sendParam,
        MessagingFee memory nativeFee
    )
        external
        payable
        override
        nonReentrant
        whenNotPaused
        whitelistedOnly
        notBlacklisted
        validAmount(amount)
        returns (uint256 tokenId)
    {
        if (!isInitialApprovalSet) revert InitialApproval('Initial approval not set');

        // Mint NFT to user, ZeUSD to router
        (tokenId, , ) = _mint(collateralAddress, asset, amount, msg.sender, address(this));

        // Bridge ZeUSD
        try lzAdapter.send{ value: msg.value }(sendParam, nativeFee, msg.sender) returns (
            MessagingReceipt memory _msgReceipt,
            OFTReceipt memory _oftReceipt
        ) {
            emit BridgeInitiated(msg.sender, asset, amount);
            return tokenId;
        } catch Error(string memory reason) {
            revert BridgeFailed(reason);
        }
    }

    /**
     * @notice Burns ZeUSD tokens to reclaim assets
     * @dev Initiates withdrawal through withdrawal system
     * @param nftTokenId User's deposit NFT ID
     * @custom:security Validates NFT ownership and burn amount
     */
    function burn(uint256 nftTokenId) external nonReentrant whenNotPaused {
        // Verify NFT ownership
        require(depositNFT.ownerOf(nftTokenId) == msg.sender, 'Not NFT owner');

        // Get deposit details from NFT
        DataTypes.DepositMetadata memory metadata = depositNFT.getDepositDetails(nftTokenId);

        // Burn zeUSD equivalent to the deposited amount
        zeusdToken.burnFrom(msg.sender, metadata.zeusdMinted);

        // Burn NFT
        depositNFT.burn(nftTokenId);

        // Initiate withdrawal through withdrawal system
        withdrawalSystem.initiateWithdrawal(nftTokenId, msg.sender, metadata.amount, metadata);
    }

    /**
     * @notice Sets whitelist status for an account
     * @dev Only DEFAULT_ADMIN_ROLE can modify whitelist
     * @param account Address to whitelist/unwhitelist
     * @param status New whitelist status
     * @custom:security Access controlled operation
     * @custom:emits WhitelistStatusChanged
     */
    function setWhitelistStatus(address account, bool status) external override {
        AccessChecker.checkRole(accessController, SystemRoles.RISK_CONTROLLER_ROLE, msg.sender);
        if (account == address(0)) revert InvalidAddress(account);
        _whitelisted[account] = status;
        emit WhitelistStatusChanged(account, status);
    }

    /**
     * @notice Sets multiple whitelist statuses
     * @dev Batch operation for whitelist management
     * @param accounts Addresses to update
     * @param statuses New whitelist statuses
     * @custom:security Access controlled operation
     * @custom:emits MultipleWhitelistStatusChanged
     */
    function setMultipleWhitelistStatus(
        address[] calldata accounts,
        bool[] calldata statuses
    ) external override {
        AccessChecker.checkRole(accessController, SystemRoles.RISK_CONTROLLER_ROLE, msg.sender);
        if (accounts.length != statuses.length) revert InvalidArrayLength();
        if (accounts.length == 0) revert InvalidArrayLength();

        for (uint256 i = 0; i < accounts.length; i++) {
            if (accounts[i] == address(0)) revert InvalidAddress(accounts[i]);
            _whitelisted[accounts[i]] = statuses[i];
        }

        emit MultipleWhitelistStatusChanged(accounts, statuses);
    }

    /**
     * @notice Sets global deposit pause status
     * @dev Emergency pause functionality
     * @param paused New pause status
     * @custom:security Access controlled operation
     * @custom:emits DepositsStatusChanged
     */
    function setDepositsPaused(bool paused) external override {
        AccessChecker.checkRole(accessController, SystemRoles.RISK_CONTROLLER_ROLE, msg.sender);
        depositsPaused = paused;
        emit DepositsStatusChanged(paused);
    }

    /**
     * @notice Updates LayerZero adapter
     * @dev Changes bridge adapter address
     * @param newAdapter New adapter address
     * @custom:security Access controlled operation
     * @custom:emits LZAdapterUpdated
     */
    function setLZAdapter(address newAdapter) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (newAdapter == address(0)) revert InvalidAddress(newAdapter);
        address oldAdapter = address(lzAdapter);
        lzAdapter = LZAdapter(newAdapter);
        emit LZAdapterUpdated(oldAdapter, newAdapter);
    }

    /**
     * @notice Sets up initial approval for bridge operations
     * @dev Required before any bridge operations can occur
     * @custom:security Access controlled operation
     */
    function setupInitialApproval() external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (isInitialApprovalSet)
            revert InitialApproval('ZeUSD_Router: Initial approval already set');
        zeusdToken.approve(address(lzAdapter), type(uint256).max);
        isInitialApprovalSet = true;
    }

    /**
     * @notice Resets bridge approval
     * @dev Removes approval for bridge operations
     * @custom:security Access controlled operation
     */
    function resetApproval() external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (!isInitialApprovalSet) revert InitialApproval('ZeUSD_Router: Initial approval not set');
        zeusdToken.approve(address(lzAdapter), 0);
        isInitialApprovalSet = false;
    }

    /**
     * @notice Checks if an account is whitelisted
     * @param account Address to check
     * @return bool Whitelist status
     */
    function isWhitelisted(address account) external view override returns (bool) {
        return _whitelisted[account];
    }

    /**
     * @notice Gets Layer Zero fee quote
     * @param sendParam Send parameters
     * @return MessagingFee Fee details
     */
    function getQuoteFee(
        SendParam memory sendParam
    ) external view override returns (MessagingFee memory) {
        return lzAdapter.quoteSend(sendParam, false);
    }

    /**
     * @notice Updates contract addresses
     * @dev Allows updating core contract references
     * @param params Address update parameters
     * @custom:security Access controlled operation
     * @custom:emits AddressesUpdated
     */
    function updateAddresses(DataTypes.AddressUpdateParams calldata params) public {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);

        if (params.updateCollateralVault) {
            if (params.collateralVault == address(0)) revert InvalidAddress(params.collateralVault);
            collateralVault = ICollateralVault(params.collateralVault);
        }

        if (params.updateZeusdToken) {
            if (params.zeusdToken == address(0)) revert InvalidAddress(params.zeusdToken);
            zeusdToken = ZeUSD(params.zeusdToken);
        }

        if (params.updateLzAdapter) {
            if (params.lzAdapter == address(0)) revert InvalidAddress(params.lzAdapter);
            lzAdapter = LZAdapter(params.lzAdapter);
        }

        emit AddressesUpdated(
            params.updateCollateralVault ? params.collateralVault : address(collateralVault),
            params.updateZeusdToken ? params.zeusdToken : address(zeusdToken),
            params.updateLzAdapter ? params.lzAdapter : address(lzAdapter)
        );
    }

    /**
     * @notice Authorizes contract upgrades
     * @dev Only UPGRADER_ROLE can upgrade the contract
     * @custom:security Critical upgrade operation
     */
    function _authorizeUpgrade(address /*newImplementation*/) internal view override {
        AccessChecker.checkRole(accessController, SystemRoles.UPGRADER_ROLE, msg.sender);
    }

    /**
     * @notice Gets all positions for a user
     * @param user Address of the user
     * @return positions Array of Position structs
     */
    function getUserPositions(
        address user
    ) external view returns (DataTypes.DepositMetadata[] memory) {
        return userPositions[user];
    }

    /**
     * @notice Gets all active positions for a user
     * @param user Address to query positions for
     * @return tokenIds Array of active token IDs
     * @return metadata Array of corresponding deposit metadata
     */
    function getUserActivePositions(
        address user
    )
        external
        view
        override
        returns (uint256[] memory tokenIds, DataTypes.DepositMetadata[] memory metadata)
    {
        // Get all token IDs owned by user
        tokenIds = depositNFT.getTokensByOwner(user);

        // Get metadata for each token
        metadata = new DataTypes.DepositMetadata[](tokenIds.length);
        for (uint256 i = 0; i < tokenIds.length; i++) {
            metadata[i] = depositNFT.getDepositDetails(tokenIds[i]);
        }

        return (tokenIds, metadata);
    }

    /**
     * @notice Gets details for a specific active position
     * @param tokenId NFT token ID to query
     * @return metadata Deposit metadata for the active position
     */
    function getActivePositionDetails(
        uint256 tokenId
    ) external view override returns (DataTypes.DepositMetadata memory metadata) {
        require(depositNFT.ownerOf(tokenId) != address(0), 'Token burned or nonexistent');
        return depositNFT.getDepositDetails(tokenId);
    }

    /**
     * @notice Issues NFTs for historical deposits
     * @dev Admin only function to retroactively create NFTs for deposits made before NFT system
     * @param issuer Original depositor address
     * @param collateralAddress Address of the collateral token
     * @param asset Address of the deposited asset
     * @param amount Amount of asset deposited
     * @param zeusdMinted Amount of ZeUSD minted
     * @param depositTimestamp Original deposit timestamp
     * @param collateralPrice Price of collateral at deposit time
     * @param subVault Address of the subvault
     * @param tokenType Type of token deposited (stable/non-stable)
     */
    function issueHistoricalNFT(
        address issuer,
        address collateralAddress,
        address asset,
        uint256 amount,
        uint256 zeusdMinted,
        uint256 depositTimestamp,
        uint256 collateralPrice,
        address subVault,
        string calldata integrationType,
        DataTypes.TokenType tokenType
    ) public nonReentrant {
        // Check admin role
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);

        // Validate inputs
        if (issuer == address(0)) revert InvalidAddress(issuer);
        if (collateralAddress == address(0)) revert InvalidAddress(collateralAddress);
        if (asset == address(0)) revert InvalidAddress(asset);
        if (subVault == address(0)) revert InvalidAddress(subVault);
        if (amount == 0) revert InvalidAmount();
        if (zeusdMinted == 0) revert InvalidAmount();
        if (collateralPrice == 0) revert InvalidAmount();
        if (depositTimestamp >= block.timestamp) revert InvalidTimestamp();

        // Create metadata
        DataTypes.DepositMetadata memory metadata = DataTypes.DepositMetadata({
            issuer: issuer,
            collateralAddress: collateralAddress,
            asset: asset,
            amount: amount,
            zeusdMinted: zeusdMinted,
            depositTimestamp: depositTimestamp,
            tokenId: depositNFT.getNextTokenId(),
            collateralPrice: collateralPrice,
            subVault: subVault,
            integrationType: integrationType,
            tokenType: tokenType
        });

        // Mint NFT
        uint256 tokenId = depositNFT.mint(issuer, metadata);

        // Record position
        userPositions[issuer].push(metadata);

        emit HistoricalNFTIssued(
            issuer,
            tokenId,
            collateralAddress,
            asset,
            amount,
            zeusdMinted,
            depositTimestamp,
            collateralPrice,
            subVault,
            tokenType
        );
    }

    function batchIssueHistoricalNFTs(
        address[] calldata issuers,
        address[] calldata collateralAddresses,
        address[] calldata assets,
        uint256[] calldata amounts,
        uint256[] calldata zeusdMinted,
        uint256[] calldata depositTimestamps,
        uint256[] calldata collateralPrices,
        address[] calldata subVaults,
        string[] calldata integrationTypes,
        uint256[] calldata tokenTypes
    ) external {
        require(
            issuers.length == collateralAddresses.length &&
                issuers.length == assets.length &&
                issuers.length == amounts.length &&
                issuers.length == zeusdMinted.length &&
                issuers.length == depositTimestamps.length &&
                issuers.length == collateralPrices.length &&
                issuers.length == subVaults.length &&
                issuers.length == integrationTypes.length &&
                issuers.length == tokenTypes.length,
            'Array lengths mismatch'
        );

        for (uint i = 0; i < issuers.length; i++) {
            issueHistoricalNFT(
                issuers[i],
                collateralAddresses[i],
                assets[i],
                amounts[i],
                zeusdMinted[i],
                depositTimestamps[i],
                collateralPrices[i],
                subVaults[i],
                integrationTypes[i],
                DataTypes.TokenType(tokenTypes[i])
            );
        }
    }
}
