// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/access/AccessControl.sol";

contract LynexKeys is ERC721Enumerable, AccessControl {
    using Strings for uint256;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant URI_SETTER_ROLE = keccak256("URI_SETTER_ROLE");
    uint256 private _nextTokenId = 1; // Start token ID at 1
    string private _baseTokenURI;
    mapping(uint256 => uint256) public tokenIdToKeyTier;

    constructor(string memory name_, string memory symbol_, string memory baseTokenURI_) 
        ERC721(name_, symbol_) 
    {
        _baseTokenURI = baseTokenURI_;
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        _setupRole(URI_SETTER_ROLE, msg.sender);
        _setRoleAdmin(MINTER_ROLE, DEFAULT_ADMIN_ROLE);
        _setRoleAdmin(URI_SETTER_ROLE, DEFAULT_ADMIN_ROLE);
    }

    function mint(address to, uint256 keyTier) public {
        require(hasRole(MINTER_ROLE, msg.sender), "LynexKeys: must have minter role to mint");
        require(keyTier >= 1 && keyTier <= 5, "Invalid keyTier");
        uint256 tokenId = _nextTokenId++;
        tokenIdToKeyTier[tokenId] = keyTier;
        
        _safeMint(to, tokenId);
    }

    function setBaseURI(string memory baseURI_) public {
        require(hasRole(URI_SETTER_ROLE, msg.sender), "LynexKeys: must have URI_SETTER role to set base URI");
        _baseTokenURI = baseURI_;
    }

    /**
     * @dev Overriding {ERC721-tokenURI} to allow for tokenURI to be generated with the token ID and key tier
     */
    function tokenURI(uint256 tokenId) public view virtual override(ERC721) returns (string memory) {
        _requireMinted(tokenId);

        string memory baseURI = _baseURI();
        return bytes(baseURI).length > 0 ? string(abi.encodePacked(baseURI, tokenIdToKeyTier[tokenId].toString())) : "";
    }

    /**
     * @dev Base URI for computing {tokenURI}. If set, the resulting URI for each
     * token will be the concatenation of the `baseURI` and the `tokenId`. Empty
     * by default, can be overridden in child contracts.
     */
    function _baseURI() internal view override(ERC721) returns (string memory) {
        return _baseTokenURI;
    }


    function supportsInterface(bytes4 interfaceId) public view override(ERC721Enumerable, AccessControl) returns (bool) {
        return super.supportsInterface(interfaceId);
    }

    function renounceURISetterRole() public {
        require(hasRole(URI_SETTER_ROLE, msg.sender), "LynexKeys: must have URI_SETTER role to forfeit URI_SETTER role");
        renounceRole(URI_SETTER_ROLE, msg.sender);
    }

    function renounceAdminRole() public {
        require(hasRole(DEFAULT_ADMIN_ROLE, msg.sender), "LynexKeys: must have admin role to renounce");
        renounceRole(DEFAULT_ADMIN_ROLE, msg.sender);
    }
}
