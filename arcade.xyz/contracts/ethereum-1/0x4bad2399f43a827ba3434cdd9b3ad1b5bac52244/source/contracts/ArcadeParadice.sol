// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

// Custom ERC20 interface

interface IERC20 {
    function allowance(address owner, address spender) external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
    function burnFrom(address account, uint256 amount) external;
}

/**
 * @title ArcadeParadice
 * @author Non-Fungible Technologies, Inc.
 *
 * This contract implements the Arcade Paradice NFT.
 */
contract ArcadeParadice is ERC721, Ownable2Step, ReentrancyGuard {
    using Strings for uint256;

    // Variables and Constants
    string private _tokenURISuffix; // Optional suffix for tokenURI
    string public baseURI; // baseURI link
    uint256 public nextTokenId; // tokenId qty tracker
    uint256 public constant MAX_MINT = 10000; // max mint
    uint256 public ethMintPrice = 42000000 gwei; // ETH mint price (0.042 ETH)
    uint256 public arcdMintPrice = 750 ether; // ARCD mint price (750 ARCD)
    bool public isMintOpen = false; // Is minting open

    IERC20 public ARCD_TOKEN; // Arcade token address
    address public ETH_PAYMENT_ADDRESS; // Address for payment of ETH

    mapping(address => uint256) public latestOwned; // Easy tracking of latest NFT owned

    constructor() ERC721("Paradice", "PARADICE") Ownable(msg.sender) {}

    /// @notice Get remaining tickets available
    function getRemainingAvailableTickets() external view returns (uint256) {
        return (MAX_MINT - nextTokenId);
    }

    /// @notice Set BaseURI
    function setBaseURI(string calldata newBaseURI) external onlyOwner {
        baseURI = newBaseURI;
    }

    /// @notice Set tokenURISuffix
    function setTokenURISuffix(string calldata suffix) external onlyOwner {
        _tokenURISuffix = suffix;
    }

    /// @notice Get tokenURI for a given tokenId
    function tokenURI(uint256 tokenId) public view override returns (string memory) {
        _requireOwned(tokenId);
        return bytes(baseURI).length > 0 ? string.concat(baseURI, tokenId.toString(), _tokenURISuffix) : "";
    }

    /// @notice Set minting parameters
    function setMintingParams(address _arcdAddr, address _ethPaymentAddr, uint256 _ethMintPrice, uint256 _arcdMintPrice)
        public
        onlyOwner
    {
        ARCD_TOKEN = IERC20(_arcdAddr);
        ETH_PAYMENT_ADDRESS = _ethPaymentAddr;
        ethMintPrice = _ethMintPrice;
        arcdMintPrice = _arcdMintPrice;
    }

    /// @notice Starts minting
    function openMinting() public onlyOwner {
        require(address(ARCD_TOKEN) != address(0), "ARCD token address not set");
        require(ETH_PAYMENT_ADDRESS != address(0), "ETH payment address not set");
        require(ethMintPrice != 0, "ETH mint price not set");
        require(arcdMintPrice != 0, "ARCD mint price not set");
        require(isMintOpen == false, "Mint already open");

        isMintOpen = true;
    }

    function pauseMinting() public onlyOwner {
        require(isMintOpen == true, "Mint not open");

        isMintOpen = false;
    }

    /// @notice Mint with ETH function
    function mintWithEth() public payable nonReentrant onlyMintOpen {
        // Check correct amount of ETH paid
        require(msg.value == ethMintPrice, "Please send exact payment value");

        // Transfer ETH to team wallet
        (bool sent,) = ETH_PAYMENT_ADDRESS.call{value: msg.value}("");
        require(sent, "Failed to send Ether");

        // Update nextTokenId
        uint256 tokenId = ++nextTokenId;
        // Add tracking for user NFT
        latestOwned[msg.sender] = tokenId;

        // Call safeMint
        _safeMint(msg.sender, tokenId);
    }

    /// @notice Mint with arcade function
    function mintWithArcade() public nonReentrant onlyMintOpen {
        // Call ERC20 burn function and burn set amount
        ARCD_TOKEN.burnFrom(msg.sender, arcdMintPrice);

        // Update nextTokenId
        uint256 tokenId = ++nextTokenId;
        // Add tracking for user NFT
        latestOwned[msg.sender] = tokenId;

        // Call safeMint
        _safeMint(msg.sender, tokenId);
    }

    modifier onlyMintOpen () {
        // Check mint is open
        require(isMintOpen == true, "Mint not open");

        // Check max minted
        require(nextTokenId < MAX_MINT, "No mints remaining");
        _;
    }
}
