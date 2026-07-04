// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";

/**
 * @title MetaStreet ERC721 Base Contract v2
 * @author MetaStreet Foundation
 */
contract MS721v2 is ERC721Upgradeable, AccessControlUpgradeable {
    /*------------------------------------------------------------------------*/
    /* Constants */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Implementation version
     */
    string public constant IMPLEMENTATION_VERSION = "1.0";

    /**
     * @notice Token base URI storage location
     * @dev keccak256(abi.encode(uint256(keccak256("ms721v2.tokenBaseURI")) - 1)) & ~bytes32(uint256(0xff));
     */
    bytes32 private constant TOKEN_BASE_URI_STORAGE_LOCATION =
        0x3b883f686c0dbb248d72dc609a15027adba961f69c7d62bcc513416e06cdd100;

    /**
     * @notice Contract URI storage location
     * @dev keccak256(abi.encode(uint256(keccak256("ms721v2.contractURI")) - 1)) & ~bytes32(uint256(0xff));
     */
    bytes32 private constant CONTRACT_URI_STORAGE_LOCATION =
        0x7d03ac654f6f5b8824a842ac62ef58f73368e150688823b84dd5dd9dc97ed800;

    /*------------------------------------------------------------------------*/
    /* Access Control Roles */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Metadata admin role
     */
    bytes32 public constant METADATA_ADMIN_ROLE = keccak256("METADATA_ADMIN_ROLE");

    /**
     * @notice Mint admin role
     */
    bytes32 public constant MINT_ADMIN_ROLE = keccak256("MINT_ADMIN_ROLE");

    /*------------------------------------------------------------------------*/
    /* Structure */
    /*------------------------------------------------------------------------*/

    /**
     * @custom:storage-location erc7201:ms721v2.tokenBaseURI
     */
    struct TokenBaseURI {
        string tokenBaseURI;
    }

    /**
     * @custom:storage-location erc7201:ms721v2.contractURI
     */
    struct ContractURI {
        string contractURI;
    }

    /*------------------------------------------------------------------------*/
    /* Constructor */
    /*------------------------------------------------------------------------*/

    /**
     * @notice MS721v2 constructor
     */
    constructor() {
        _disableInitializers();
    }

    /*------------------------------------------------------------------------*/
    /* Initializer */
    /*------------------------------------------------------------------------*/

    /**
     * @notice MS721v2 initializer
     * @param name_ Name
     * @param symbol_ Symbol
     * @param tokenBaseURI_ Token base URI
     * @param contractURI_ Contract URI
     */
    function initialize(
        string calldata name_,
        string calldata symbol_,
        string calldata tokenBaseURI_,
        string calldata contractURI_
    ) external initializer {
        __ERC721_init(name_, symbol_);
        __AccessControl_init();

        _getTokenBaseURIStorage().tokenBaseURI = tokenBaseURI_;
        _getContractURIStorage().contractURI = contractURI_;

        _grantRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }

    /*------------------------------------------------------------------------*/
    /* Internal Helpers */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Get reference to ERC-7201 timelock storage
     *
     * @return $ Reference to timelock storage
     */
    function _getTokenBaseURIStorage() internal pure returns (TokenBaseURI storage $) {
        assembly {
            $.slot := TOKEN_BASE_URI_STORAGE_LOCATION
        }
    }

    /**
     * @notice Get reference to ERC-7201 is operator storage
     *
     * @return $ Reference to is operator storage
     */
    function _getContractURIStorage() internal pure returns (ContractURI storage $) {
        assembly {
            $.slot := CONTRACT_URI_STORAGE_LOCATION
        }
    }

    /*------------------------------------------------------------------------*/
    /* Getters */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Get contract URI
     * @return Contract URI
     */
    function contractURI() public view returns (string memory) {
        return _getContractURIStorage().contractURI;
    }

    /**
     * @inheritdoc ERC721Upgradeable
     */
    function _baseURI() internal view override returns (string memory) {
        return _getTokenBaseURIStorage().tokenBaseURI;
    }

    /*------------------------------------------------------------------------*/
    /* Metadata API */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Set base URI
     * @param uri_ Base URI
     */
    function setBaseURI(
        string calldata uri_
    ) external onlyRole(METADATA_ADMIN_ROLE) {
        _getTokenBaseURIStorage().tokenBaseURI = uri_;
    }

    /**
     * @notice Set contract URI
     * @param uri_ Contract URI
     */
    function setContractURI(
        string calldata uri_
    ) external onlyRole(METADATA_ADMIN_ROLE) {
        _getContractURIStorage().contractURI = uri_;
    }

    /*------------------------------------------------------------------------*/
    /* Mint API */
    /*------------------------------------------------------------------------*/

    /**
     * @notice Mint token
     * @param to Address to mint to
     * @param id Token ID
     */
    function mint(address to, uint256 id) external onlyRole(MINT_ADMIN_ROLE) {
        _safeMint(to, id);
    }

    /**
     * @notice Mint batch token
     * @param to Address to mint to
     * @param ids Token IDs
     */
    function mintBatch(address to, uint256[] calldata ids) external onlyRole(MINT_ADMIN_ROLE) {
        for (uint256 i; i < ids.length; i++) {
            _safeMint(to, ids[i]);
        }
    }

    /**
     * @notice Burn token
     * @param id Token ID
     */
    function burn(
        uint256 id
    ) external onlyRole(MINT_ADMIN_ROLE) {
        _update(address(0), id, _msgSender());
    }

    /**
     * @notice Burn batch token
     * @param ids Token IDs
     */
    function burnBatch(
        uint256[] calldata ids
    ) external onlyRole(MINT_ADMIN_ROLE) {
        for (uint256 i; i < ids.length; i++) {
            _update(address(0), ids[i], _msgSender());
        }
    }

    /*------------------------------------------------------------------------*/
    /* ERC165 interface */
    /*------------------------------------------------------------------------*/

    /**
     * @inheritdoc IERC165
     */
    function supportsInterface(
        bytes4 interfaceId
    ) public view override(AccessControlUpgradeable, ERC721Upgradeable) returns (bool) {
        return super.supportsInterface(interfaceId);
    }
}
