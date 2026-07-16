// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import { Strings } from "@openzeppelin/contracts/utils/Strings.sol";
import { IERC165 } from "@openzeppelin/contracts/utils/introspection/IERC165.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IEmissionController } from "./interfaces/IEmissionController.sol";
import { IERC5192 } from "./interfaces/IERC5192.sol";

interface IDepthTokenBurnable {
    function burn(uint256 amount) external;
}

interface IDepthToken {
    function treasury() external view returns (address);
}

contract DepthSoul is ERC721, IERC5192, Ownable {
    using Strings for uint256;

    error Soulbound();
    error InvalidEmissionController();
    error InvalidAddress();
    error NotOperator(address caller);
    error AlreadyMinted(address account);
    error ControllerNotSet();
    error DepthTokenNotSet();
    error InsufficientMintCost();
    error MintingNotEnabled();
    error MintingAlreadyEnabled();

    uint256 private nextTokenId = 1;

    string public baseURI;
    address public emissionController;
    address public depthToken;
    uint256 public mintCost = 250 ether; // 250 DEPTH, 80% burned / 20% treasury
    bool public mintingEnabled;

    mapping(address => bool) public operators;
    mapping(address => uint256) private _tokenOfOwner;

    event MintingEnabled();
    event OperatorSet(address indexed operator, bool allowed);
    event MintCostSet(uint256 newCost);
    event DepthTokenSet(address indexed token);
    event PublicMint(address indexed minter, uint256 indexed tokenId, uint256 cost);
    event OperatorMint(address indexed operator, address indexed to, uint256 indexed tokenId);

    constructor() ERC721("DEPTH SOUL", "DEPTHSOUL") Ownable(msg.sender) {}

    /// @notice Total number of DEPTH SOULs minted
    function totalSupply() external view returns (uint256) {
        return nextTokenId - 1;
    }

    /// @notice Returns the token ID owned by `owner`, or 0 if none.
    /// Token IDs start at 1, so 0 means no soul.
    function tokenIdOf(address owner) external view returns (uint256) {
        return _tokenOfOwner[owner];
    }

    function enableMinting() external onlyOwner {
        if (mintingEnabled) revert MintingAlreadyEnabled();

        mintingEnabled = true;
        emit MintingEnabled();
    }

    /// @notice Free mint by an authorized operator (TG Mini App backend)
    function mintFor(address to) external returns (uint256 tokenId) {
        if (!mintingEnabled) revert MintingNotEnabled();
        if (!operators[msg.sender]) revert NotOperator(msg.sender);
        if (to == address(0)) revert InvalidAddress();

        tokenId = _mintSoul(to);
        emit OperatorMint(msg.sender, to, tokenId);
    }

    /// @notice Paid mint — costs mintCost DEPTH (80% burned / 20% treasury)
    function publicMint() external returns (uint256 tokenId) {
        if (!mintingEnabled) revert MintingNotEnabled();
        if (depthToken == address(0)) revert DepthTokenNotSet();

        uint256 burnAmount = (mintCost * 80) / 100;
        uint256 treasuryAmount = mintCost - burnAmount;

        // Transfer DEPTH from user, burn 80%, route 20% to treasury
        IERC20(depthToken).transferFrom(msg.sender, address(this), mintCost);
        IDepthTokenBurnable(depthToken).burn(burnAmount);
        IERC20(depthToken).transfer(IDepthToken(depthToken).treasury(), treasuryAmount);

        tokenId = _mintSoul(msg.sender);
        emit PublicMint(msg.sender, tokenId, mintCost);
    }

    function _mintSoul(address to) internal returns (uint256 tokenId) {
        if (balanceOf(to) != 0) revert AlreadyMinted(to);
        if (emissionController == address(0)) revert ControllerNotSet();

        tokenId = nextTokenId;
        unchecked {
            nextTokenId = tokenId + 1;
        }

        _tokenOfOwner[to] = tokenId;
        _mint(to, tokenId);
        emit Locked(tokenId);

        IEmissionController(emissionController).initializeVault(tokenId);
    }

    function locked(uint256 tokenId) external view override returns (bool) {
        _requireOwned(tokenId);
        return true;
    }

    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireOwned(tokenId);
        return string.concat(baseURI, "/api/vault/", tokenId.toString());
    }

    // --- Admin ---

    function setBaseURI(string calldata uri) external onlyOwner {
        baseURI = uri;
    }

    function setEmissionController(address controller) external onlyOwner {
        if (controller == address(0)) revert InvalidEmissionController();
        emissionController = controller;
    }

    function setDepthToken(address token) external onlyOwner {
        if (token == address(0)) revert InvalidAddress();
        depthToken = token;
        emit DepthTokenSet(token);
    }

    function setMintCost(uint256 newCost) external onlyOwner {
        mintCost = newCost;
        emit MintCostSet(newCost);
    }

    function setOperator(address operator, bool allowed) external onlyOwner {
        if (operator == address(0)) revert InvalidAddress();
        operators[operator] = allowed;
        emit OperatorSet(operator, allowed);
    }

    function supportsInterface(bytes4 interfaceId) public view override(ERC721, IERC165) returns (bool) {
        return interfaceId == type(IERC5192).interfaceId || super.supportsInterface(interfaceId);
    }

    function _update(address to, uint256 tokenId, address auth) internal override returns (address) {
        address from = _ownerOf(tokenId);
        if (from != address(0)) revert Soulbound();

        return super._update(to, tokenId, auth);
    }
}
