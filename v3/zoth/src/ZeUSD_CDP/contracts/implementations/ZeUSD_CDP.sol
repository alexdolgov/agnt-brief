// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721URIStorageUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol';
import '@openzeppelin/contracts/utils/Strings.sol';
import '../libraries/DataTypes.sol';
import '../interfaces/IZeDP.sol';
import '@openzeppelin/contracts/interfaces/IERC165.sol';

/**
 * @title Deposit NFT (ZeUSD_CDP)
 * @author ZeUSD Protocol Team
 * @notice NFT contract representing user deposits in the ZeUSD protocol
 * @dev Implements UUPS upgradeable pattern with ERC721 extensions and ERC7201 storage pattern
 *
 * The ZeUSD_CDP contract is an ERC721 token implementation that represents users'
 * deposits in the ZeUSD protocol. Each token contains detailed metadata about the
 * deposit including asset types, amounts, prices, and vault information.
 *
 * Core Functionality:
 * - Minting deposit NFTs for protocol users
 * - Tracking deposit parameters and metadata
 * - Managing withdrawal status updates
 * - Burning tokens during redemption
 * - Enumerating token ownership
 *
 * Token Features:
 * - ERC721 standard compliance for maximum wallet compatibility
 * - URI storage for rich metadata rendering
 * - Enumerable extension for ownership tracking
 * - Sequential token ID issuance
 *
 * Storage Architecture:
 * - Uses ERC7201 namespaced storage pattern for upgrade safety
 * - CDP-specific storage struct for deposit metadata
 * - Token ID counter with auto-incrementing logic
 *
 * @custom:roles-and-capabilities
 * ROUTER_ROLE:
 * - Mint new deposit NFTs
 * - Update withdrawal status
 * - Burn NFTs during redemption
 *
 * GATEKEEPER_ROLE:
 * - Update base URI for token metadata
 * - Modify deposit metadata when necessary
 *
 * GUARDIAN_ROLE:
 * - Perform contract upgrades via UUPS pattern
 *
 * Security Considerations:
 * - Strict access control for minting and burning operations
 * - Reentrancy protection on all state-modifying functions
 * - Token existence validation before operations
 * - Address validation to prevent zero-address operations
 * - Proper initialization of the upgradeability pattern
 *
 * @custom:security-contact tech@zoth.io
 */
contract ZeUSD_CDP is
    ERC721URIStorageUpgradeable,
    ERC721EnumerableUpgradeable,
    AccessManagedUpgradeable,
    ReentrancyGuardUpgradeable,
    UUPSUpgradeable,
    IZeDP
{
    /**
     * @notice Storage location for ERC7201 storage pattern
     * @dev keccak256(abi.encode(uint256(keccak256("zeusd.cdp.storage")) - 1)) & ~bytes32(uint256(0xff))
     * @custom:security Critical for storage layout - do not modify
     */
    bytes32 private constant STORAGE_SLOT =
        0x481add3d30afbdf67a4ad1ee8cd03818856269963eb5d60da6dc6dcc40f98d00;

    /**
     * @notice Main storage structure for the CDP
     * @dev All state variables should be added here to maintain upgradeability
     * @custom:security-considerations Ensure proper initialization in upgrades
     */
    struct CDPStorage {
        // Base URI for token metadata
        string baseURI;
        // Auto-incrementing token ID counter
        uint256 tokenIdCounter;
        // Next token ID counter
        uint256 nextTokenId;
        // Deposit details mapped to token ID
        mapping(uint256 => DataTypes.DepositMetadata) depositDetails;
    }

    /**
     * @notice Retrieves storage pointer for ERC7201 storage
     * @dev Uses assembly for consistent storage slot access
     * @return $ Storage pointer to CDPStorage struct
     * @custom:security Critical for storage access - do not modify
     */
    function _cdpStorage() internal pure returns (CDPStorage storage $) {
        bytes32 slot = STORAGE_SLOT;
        assembly {
            $.slot := slot
        }
    }

    /// @notice Validates that an address is not zero
    /// @param _address Address to validate
    /// @dev Throws ZeDP_InvalidAddress error if address is zero
    /// @custom:security Basic address validation modifier
    modifier validAddress(address _address) {
        if (_address == address(0)) revert ZeDP_InvalidAddress(_address);
        _;
    }

    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializes the ZeUSD_CDP contract
     * @dev Sets initial state and base NFT parameters
     * @param name Token name
     * @param symbol Token symbol
     * @param _accessManager Access manager contract address
     */
    function initialize(
        string memory name,
        string memory symbol,
        address _accessManager
    ) external initializer {
        if (_accessManager == address(0)) revert ZeDP_InvalidAddress(_accessManager);

        __ERC721_init(name, symbol);
        __ERC721Enumerable_init();
        __ERC721URIStorage_init();
        __AccessManaged_init(_accessManager);
        __UUPSUpgradeable_init();
        __ReentrancyGuard_init();

        CDPStorage storage $ = _cdpStorage();
        $.nextTokenId = 1; // Start token IDs from 1
    }

    /**
     * @notice Gets the access manager interface
     * @return The access manager contract instance
     */
    function accessManager() external view returns (IAccessManager) {
        return IAccessManager(authority());
    }

    /**
     * @notice Gets the next token ID without incrementing
     * @return The next token ID that will be used
     */
    function getNextTokenId() external view returns (uint256) {
        return _cdpStorage().nextTokenId;
    }

    /**
     * @notice Mints a new deposit NFT
     * @param to Address to mint the NFT to
     * @param metadata Deposit metadata to store
     * @return tokenId The ID of the minted token
     * @custom:security Only callable by ROUTER
     * @custom:emits ZeDPMinted
     */
    function mint(
        address to,
        DataTypes.DepositMetadata calldata metadata
    ) external nonReentrant restricted validAddress(to) returns (uint256 tokenId) {
        CDPStorage storage $ = _cdpStorage();
        tokenId = $.nextTokenId++;
        _safeMint(to, tokenId);
        $.depositDetails[tokenId] = metadata;

        emit ZeDPMinted(tokenId, to, metadata);
        return tokenId;
    }

    /**
     * @notice Updates withdrawal status for a token
     * @param tokenId Token ID to update
     * @param status New withdrawal status
     * @custom:security Only callable by ROUTER
     * @return Success indicator
     */
    function updateWithdrawalStatus(
        uint256 tokenId,
        bool status
    ) external nonReentrant restricted returns (bool) {
        if (!_exists(tokenId)) revert ZeDP_TokenNotExists(tokenId);

        CDPStorage storage $ = _cdpStorage();
        $.depositDetails[tokenId].isWithdrawInitiated = status;
        emit ZeDPMetadataUpdated(tokenId, $.depositDetails[tokenId]);
        return true;
    }

    /**
     * @notice Burns a deposit NFT
     * @param tokenId ID of token to burn
     * @custom:security Only callable by ROUTER
     * @custom:emits ZeDPBurned
     */
    function burn(uint256 tokenId) external nonReentrant restricted {
        if (!_exists(tokenId)) revert ZeDP_TokenNotExists(tokenId);

        address owner = ownerOf(tokenId);
        _burn(tokenId);

        CDPStorage storage $ = _cdpStorage();
        delete $.depositDetails[tokenId];

        emit ZeDPBurned(tokenId, owner);
    }

    /**
     * @notice Updates the base URI for token metadata
     * @param newBaseURI New base URI to set
     * @custom:security Only callable by GATEKEEPER_ROLE
     * @custom:emits ZeDPBaseURIUpdated
     */
    function setBaseURI(string memory newBaseURI) external restricted {
        CDPStorage storage $ = _cdpStorage();
        $.baseURI = newBaseURI;
        emit ZeDPBaseURIUpdated(newBaseURI);
    }

    /**
     * @notice Returns the base URI for token metadata
     * @return string Base URI
     */
    function _baseURI() internal view override returns (string memory) {
        return _cdpStorage().baseURI;
    }

    /**
     * @notice Generates the token URI combining base URI and token ID
     * @param tokenId Token ID to get URI for
     * @return Full token URI
     * @custom:security Validates token existence
     */
    function tokenURI(
        uint256 tokenId
    ) public view override(ERC721Upgradeable, ERC721URIStorageUpgradeable) returns (string memory) {
        if (!_exists(tokenId)) revert ZeDP_TokenNotExists(tokenId);

        string memory baseTokenURI = _baseURI();
        if (bytes(baseTokenURI).length == 0) {
            return '';
        }

        return string(abi.encodePacked(baseTokenURI, Strings.toString(tokenId)));
    }

    /**
     * @notice Gets deposit details for a specific token ID
     * @param tokenId ID of the token to query
     * @return metadata Deposit metadata associated with the token
     * @custom:security Validates token existence
     */
    function getDepositDetails(
        uint256 tokenId
    ) external view override returns (DataTypes.DepositMetadata memory metadata) {
        if (!_exists(tokenId)) revert ZeDP_TokenNotExists(tokenId);
        return _cdpStorage().depositDetails[tokenId];
    }

    /**
     * @notice Gets all token IDs owned by a specific address
     * @param owner Address to query tokens for
     * @return Array of token IDs
     */
    function getTokensByOwner(address owner) external view returns (uint256[] memory) {
        uint256 balance = balanceOf(owner);
        uint256[] memory tokenIds = new uint256[](balance);

        for (uint256 i = 0; i < balance; i++) {
            tokenIds[i] = tokenOfOwnerByIndex(owner, i);
        }

        return tokenIds;
    }

    /**
     * @notice Authorizes contract upgrades
     * @custom:security Critical upgrade operation, only callable by GUARDIAN_ROLE
     */
    function _authorizeUpgrade(address newImplementation) internal override restricted {}

    /**
     * @notice Interface support check
     * @dev ERC165 interface detection
     * @param interfaceId Interface identifier to check
     * @return bool True if interface is supported
     */
    function supportsInterface(
        bytes4 interfaceId
    )
        public
        view
        virtual
        override(ERC721URIStorageUpgradeable, ERC721EnumerableUpgradeable, IERC165)
        returns (bool)
    {
        return super.supportsInterface(interfaceId);
    }

    /**
     * @notice Checks if a token exists
     * @param tokenId Token ID to check
     * @return bool True if token exists
     */
    function _exists(uint256 tokenId) internal view returns (bool) {
        try this.ownerOf(tokenId) returns (address) {
            return true;
        } catch {
            return false;
        }
    }

    /**
     * @notice Increases balance for enumerable extension
     * @dev Required override for ERC721Enumerable
     * @param account Address to increase balance for
     * @param amount Amount to increase by
     */
    function _increaseBalance(
        address account,
        uint128 amount
    ) internal virtual override(ERC721Upgradeable, ERC721EnumerableUpgradeable) {
        super._increaseBalance(account, amount);
    }

    /**
     * @notice Updates token ownership
     * @dev Required override for ERC721Enumerable
     * @param to New owner address
     * @param tokenId Token ID to update
     * @param auth Address authorized for transfer
     * @return address Previous owner
     */
    function _update(
        address to,
        uint256 tokenId,
        address auth
    ) internal virtual override(ERC721Upgradeable, ERC721EnumerableUpgradeable) returns (address) {
        return super._update(to, tokenId, auth);
    }

    /**
     * @notice Updates deposit metadata for a specific token
     * @param tokenId ID of the token to update
     * @param params Parameters for updating deposit metadata
     * @custom:security Only callable by GATEKEEPER_ROLE
     * @custom:emits ZeDPMetadataUpdated
     * @custom:architecture This function is part of the protocol's system-wide upgrade mechanism.
     * Following architectural improvements to the protocol, this administrative function enables
     * the necessary migration of existing deposit records to maintain compatibility with the
     * enhanced system design. This ensures continuity of service for users during protocol evolution
     * while preserving data integrity. The function is governed through strict role-based access
     * control and all updates are transparently logged through events for full auditability.
     * This capability is documented in our protocol governance documentation and is limited to
     * specific upgrade scenarios.
     */
    function updateDepositMetadata(
        uint256 tokenId,
        DataTypes.MetadataUpdateParams calldata params
    ) external nonReentrant restricted {
        if (!_exists(tokenId)) revert ZeDP_TokenNotExists(tokenId);

        CDPStorage storage $ = _cdpStorage();
        DataTypes.DepositMetadata storage metadata = $.depositDetails[tokenId];

        if (params.updateRwa) {
            if (params.rwa == address(0)) revert ZeDP_InvalidAddress(params.rwa);
            metadata.rwa = params.rwa;
        }

        if (params.updateAssetDeposited) {
            if (params.assetDeposited == address(0))
                revert ZeDP_InvalidAddress(params.assetDeposited);
            metadata.assetDeposited = params.assetDeposited;
        }

        if (params.updateAssetAmount) {
            metadata.assetAmountDeposited = params.assetAmountDeposited;
        }

        if (params.updateRwaAmount) {
            metadata.rwaAmount = params.rwaAmount;
        }

        if (params.updateZeusdMinted) {
            metadata.zeusdMinted = params.zeusdMinted;
        }

        if (params.updateRwaPrice) {
            metadata.rwaPrice = params.rwaPrice;
        }

        if (params.updateAssetPrice) {
            metadata.assetPrice = params.assetPrice;
        }

        if (params.updateVaultAddress) {
            if (params.vaultAddress == address(0)) revert ZeDP_InvalidAddress(params.vaultAddress);
            metadata.vaultAddress = params.vaultAddress;
        }

        if (params.updateVaultName) {
            metadata.vaultName = params.vaultName;
        }

        emit ZeDPMetadataUpdated(tokenId, metadata);
    }
}
