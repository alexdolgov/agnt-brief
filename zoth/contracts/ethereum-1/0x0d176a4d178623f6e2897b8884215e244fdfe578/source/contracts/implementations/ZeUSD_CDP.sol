// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721URIStorageUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/token/ERC721/extensions/ERC721EnumerableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol';
import '../interfaces/access/IAccessController.sol';
import '../interfaces/access/IRegistry.sol';
import '../libraries/DataTypes.sol';
import '../utils/AccessChecker.sol';
import '../utils/Constants.sol';
import '../libraries/SystemRoles.sol';
import '../interfaces/IZeUSD_CDP.sol';
import '@openzeppelin/contracts/interfaces/IERC165.sol';

/**
 * @title Deposit NFT
 * @author ZeUSD Protocol Team
 * @notice NFT contract representing user deposits in the protocol
 * @dev Implements UUPS upgradeable pattern with ERC721 extensions
 * @custom:security-contact paras@zoth.io
 *
 * Core Features:
 * - ERC721 token standard
 * - URI storage for metadata
 * - Enumerable extension for tracking
 * - Deposit metadata storage
 * - Role-based access control
 *
 * Security Considerations:
 * - Only router can mint/burn
 * - Admin-controlled URI updates
 * - Protected upgrade mechanism
 * - Token ID uniqueness
 * - Metadata integrity
 *
 * Storage Layout:
 * - Token metadata
 * - Deposit details
 * - URI configuration
 * - Access control state
 *
 * Role Requirements:
 * DEFAULT_ADMIN_ROLE:
 * - Can update base URI
 * - Can upgrade contract
 *
 * UPGRADER_ROLE:
 * - Can perform contract upgrades
 */
contract ZeUSD_CDP is
    ERC721URIStorageUpgradeable,
    ERC721EnumerableUpgradeable,
    UUPSUpgradeable,
    IZeUSD_CDP
{
    /// @notice Access controller contract reference
    /// @dev Used for role checks
    IAccessController public accessController;

    /// @notice Router contract that can mint/burn NFTs
    /// @dev Only address allowed to mint and burn
    address public router;

    /// @notice Base URI for token metadata
    /// @dev Used as prefix for all token URIs
    string public baseURI;

    /// @notice Auto-incrementing token ID counter
    /// @dev Ensures unique token IDs
    uint256 private _tokenIdCounter;

    /// @notice Deposit details mapped to token ID
    /// @dev Stores deposit metadata for each token
    mapping(uint256 => DataTypes.DepositMetadata) public depositDetails;

    /// @notice Next token ID counter
    /// @dev Used to get the next token ID without incrementing
    uint256 private _nextTokenId;

    /**
     * @notice Emitted when a deposit NFT is minted
     * @param tokenId ID of minted token
     * @param owner Address receiving the token
     * @param metadata Associated deposit metadata
     */
    event ZeUSD_CDPMinted(
        uint256 indexed tokenId,
        address indexed owner,
        DataTypes.DepositMetadata metadata
    );

    /**
     * @notice Emitted when a deposit NFT is burned
     * @param tokenId ID of burned token
     * @param owner Last owner of the token
     */
    event ZeUSD_CDPBurned(uint256 indexed tokenId, address indexed owner);

    /**
     * @notice Emitted when base URI is updated
     * @param newBaseURI New base URI value
     */
    event BaseURIUpdated(string newBaseURI);

    /**
     * @notice Emitted when deposit metadata is updated
     * @param tokenId ID of the token whose metadata was updated
     * @param metadata Updated deposit metadata
     */
    event DepositMetadataUpdated(uint256 indexed tokenId, DataTypes.DepositMetadata metadata);

    /**
     * @notice Error thrown for invalid address inputs
     * @param addr The invalid address
     */
    error InvalidAddress(address addr);

    /**
     * @notice Error thrown for unauthorized operations
     * @param message Error description
     */
    error Unauthorized(string message);

    /**
     * @notice Error thrown when token doesn't exist
     * @param tokenId ID of non-existent token
     */
    error TokenNotExists(uint256 tokenId);

    function initialize(
        string memory name,
        string memory symbol,
        string memory initialBaseURI,
        address _router,
        address registryContract
    ) public initializer {
        __ERC721_init(name, symbol);
        __ERC721URIStorage_init();
        __ERC721Enumerable_init();
        __UUPSUpgradeable_init();

        if (_router == address(0)) revert InvalidAddress(_router);
        if (registryContract == address(0)) revert InvalidAddress(registryContract);

        router = _router;
        baseURI = initialBaseURI;
        accessController = IAccessController(
            IRegistry(registryContract).getContract(Constants.CONTRACT_ACCESS_CONTROLLER)
        );
    }

    /**
     * @notice Gets the next token ID without incrementing
     * @return The next token ID that will be used
     */
    function getNextTokenId() external view returns (uint256) {
        return _nextTokenId;
    }

    /**
     * @notice Mints a new deposit NFT
     * @dev Only callable by router
     * @param to Address to mint the NFT to
     * @param metadata Deposit metadata to store
     * @return tokenId The ID of the minted token
     * @custom:security Validates router and recipient
     * @custom:emits ZeUSD_CDPMinted
     */
    function mint(
        address to,
        DataTypes.DepositMetadata calldata metadata
    ) external returns (uint256 tokenId) {
        if (msg.sender != router) revert Unauthorized('Only router can mint');
        if (to == address(0)) revert InvalidAddress(to);

        tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
        depositDetails[tokenId] = metadata;

        emit ZeUSD_CDPMinted(tokenId, to, metadata);
        return tokenId;
    }

    /**
     * @notice Burns a deposit NFT
     * @dev Can be called by router or token owner
     * @param tokenId ID of token to burn
     * @custom:security Validates caller authorization
     * @custom:emits ZeUSD_CDPBurned
     */
    function burn(uint256 tokenId) external {
        if (!_exists(tokenId)) revert TokenNotExists(tokenId);
        if (msg.sender != router && msg.sender != ownerOf(tokenId))
            revert Unauthorized('Not authorized to burn');

        address owner = ownerOf(tokenId);
        _burn(tokenId);
        delete depositDetails[tokenId];

        emit ZeUSD_CDPBurned(tokenId, owner);
    }

    /**
     * @notice Updates the base URI for token metadata
     * @dev Only callable by admin
     * @param newBaseURI New base URI to set
     * @custom:security Requires DEFAULT_ADMIN_ROLE
     * @custom:emits BaseURIUpdated
     */
    function setBaseURI(string memory newBaseURI) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        baseURI = newBaseURI;
        emit BaseURIUpdated(newBaseURI);
    }

    /**
     * @notice Returns the base URI for token metadata
     * @return string Base URI
     */
    function _baseURI() internal view override returns (string memory) {
        return baseURI;
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
        if (!_exists(tokenId)) revert TokenNotExists(tokenId);

        string memory baseTokenURI = _baseURI();
        if (bytes(baseTokenURI).length == 0) {
            return '';
        }

        return string(abi.encodePacked(baseTokenURI, _toString(tokenId)));
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
        require(_exists(tokenId), 'Token does not exist');
        return depositDetails[tokenId];
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
     * @notice Converts uint256 to string
     * @param value Number to convert
     * @return string String representation
     */
    function _toString(uint256 value) internal pure returns (string memory) {
        if (value == 0) {
            return '0';
        }
        uint256 temp = value;
        uint256 digits;
        while (temp != 0) {
            digits++;
            temp /= 10;
        }
        bytes memory buffer = new bytes(digits);
        while (value != 0) {
            digits -= 1;
            buffer[digits] = bytes1(uint8(48 + uint256(value % 10)));
            value /= 10;
        }
        return string(buffer);
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
     * @notice Sets the router contract address
     * @dev Only callable by DEFAULT_ADMIN_ROLE
     * @param _router New router address
     */
    function setRouter(address _router) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (_router == address(0)) revert InvalidAddress(_router);
        router = _router;
    }

    /**
     * @notice Updates deposit metadata for a specific token
     * @dev Only callable by DEFAULT_ADMIN_ROLE
     * @param tokenId ID of the token to update
     * @param params Parameters for updating deposit metadata
     * @custom:security Validates caller authorization and token existence
     * @custom:emits DepositMetadataUpdated
     */
    function updateDepositMetadata(
        uint256 tokenId,
        DataTypes.MetadataUpdateParams calldata params
    ) external {
        AccessChecker.checkRole(accessController, SystemRoles.DEFAULT_ADMIN_ROLE, msg.sender);
        if (!_exists(tokenId)) revert TokenNotExists(tokenId);

        DataTypes.DepositMetadata storage metadata = depositDetails[tokenId];

        if (params.updateIssuer) {
            if (params.issuer == address(0)) revert InvalidAddress(params.issuer);
            metadata.issuer = params.issuer;
        }

        if (params.updateCollateralAddress) {
            if (params.collateralAddress == address(0))
                revert InvalidAddress(params.collateralAddress);
            metadata.collateralAddress = params.collateralAddress;
        }

        if (params.updateAsset) {
            if (params.asset == address(0)) revert InvalidAddress(params.asset);
            metadata.asset = params.asset;
        }

        if (params.updateAmount) {
            metadata.amount = params.amount;
        }

        if (params.updateZeusdMinted) {
            metadata.zeusdMinted = params.zeusdMinted;
        }

        if (params.updateDepositTimestamp) {
            metadata.depositTimestamp = params.depositTimestamp;
        }

        if (params.updateCollateralPrice) {
            metadata.collateralPrice = params.collateralPrice;
        }

        if (params.updateSubVault) {
            if (params.subVault == address(0)) revert InvalidAddress(params.subVault);
            metadata.subVault = params.subVault;
        }

        if (params.updateIntegrationType) {
            metadata.integrationType = params.integrationType;
        }

        if (params.updateTokenType) {
            metadata.tokenType = params.tokenType;
        }

        emit DepositMetadataUpdated(tokenId, metadata);
    }
}
