// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721BurnableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721PausableUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/utils/CountersUpgradeable.sol";

contract BuniBountyToken is 
    Initializable,
    AccessControlUpgradeable,
    ERC721BurnableUpgradeable,
    ERC721PausableUpgradeable
{
    using CountersUpgradeable for CountersUpgradeable.Counter;
    bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");
    bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

    CountersUpgradeable.Counter private _tokenIdTracker;
    
    mapping(uint256 => BuniBounty) private tokens;

    struct BuniBounty {
        uint256 hashRate;
        uint256 createdAt;
    }


    event NewBuniBounty(uint256 indexed buniBounty, address indexed minter);

    function initialize() public initializer {
        __ERC721_init("Buni Bounty Token", "BBT");
        __ERC721Burnable_init_unchained();
        __ERC721Pausable_init_unchained();
        __AccessControl_init_unchained();
        _setupRole(DEFAULT_ADMIN_ROLE, msg.sender);
        //We need to setBaseURI here
        _setBaseURI("https://nft.bunicorn.exchange/bounty-nft/");
    }

    function getTokenInfo(uint256 tokenId) public view returns (uint256, uint256) {
        BuniBounty memory tokenInfo = tokens[tokenId];
        return (tokenInfo.hashRate, tokenInfo.createdAt);
    }

    function mint(address to, uint256 hashRate) public {
        require(hasRole(MINTER_ROLE, msg.sender), "must have minter role");
        _mint(to, _tokenIdTracker.current());
        tokens[_tokenIdTracker.current()] = BuniBounty({
            hashRate: hashRate,
            createdAt: block.timestamp
        });

        emit NewBuniBounty(_tokenIdTracker.current(), to);
        _tokenIdTracker.increment();
    }

    function pause() public {
        require(hasRole(PAUSER_ROLE, _msgSender()), "must have pauser role");
        _pause();
    }

    function unpause() public {
        require(hasRole(PAUSER_ROLE, _msgSender()), "must have pauser role");
        _unpause();
    }

    function setBaseURI(string memory baseURI) external {
        require(hasRole(DEFAULT_ADMIN_ROLE, _msgSender()), "musst have admin role");
        _setBaseURI(baseURI);
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId) internal override (ERC721Upgradeable, ERC721PausableUpgradeable) {
        super._beforeTokenTransfer(from, to, tokenId);
    }

    function getTokenInfoOfOwnerByIndex(address owner, uint256 index) public view returns (uint256, uint256, uint256) {
        uint256 tokenId = tokenOfOwnerByIndex(owner, index);
        (uint256 hashRate, uint256 createdAt) = getTokenInfo(tokenId);
        return (hashRate, createdAt, tokenId);
    }
} 