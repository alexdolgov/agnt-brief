// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {ERC721A, ERC721AQueryable, IERC721A} from "@ERC721A/contracts/extensions/ERC721AQueryable.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {Strings} from "@openzeppelin/contracts/utils/Strings.sol";

contract TheShreddiesCC is ERC721AQueryable, Ownable(msg.sender) {
    uint256 public constant MAX_SUPPLY = 420; // max amount of NFTs in the collection
    uint256 public WALLET_LIMIT = 7; // max amount of NFTs per wallet
    string public uri; // base uri
    IERC20 public jones = IERC20(0x10393c20975cF177a3513071bC110f7962CD67da); // JONES token
    uint256 public price = 69 ether; // 69 JONES per NFT
    mapping(address => uint256) public minted; // amount of tokens minted by address
    uint256 public startTime; // timestamp when sale starts
    string private fileExtension = ".json"; // file extension for metadata

    constructor(string memory _uri, uint256 _startTime) ERC721A("The Shreddies: Christmas Cards", "TSCC") {
        uri = _uri;
        startTime = _startTime;
    }

    function mint(uint256 _amount) external {
        require(block.timestamp >= startTime, "The Shreddies: sale not started");
        require(minted[msg.sender] + _amount <= WALLET_LIMIT, "The Shreddies: wallet limit reached");
        require(totalSupply() + _amount <= MAX_SUPPLY, "The Shreddies: max supply reached");
        jones.transferFrom(msg.sender, address(this), _amount * price);
        minted[msg.sender] += _amount;
        _mint(msg.sender, _amount);
    }

    function ownerMint(address _to, uint256 _amount) external onlyOwner {
        require(totalSupply() + _amount <= MAX_SUPPLY, "The Shreddies: max supply reached");
        _mint(_to, _amount);
    }

    function tokenURI(uint256 _tokenId) public view override(IERC721A, ERC721A) returns (string memory) {
        return string(abi.encodePacked(uri, Strings.toString(_tokenId), fileExtension));
    }

    function setStartTime(uint256 _startTime) external onlyOwner {
        startTime = _startTime;
    }

    function setURI(string memory _uri) external onlyOwner {
        uri = _uri;
    }

    function setFileExtension(string memory _fileExtension) external onlyOwner {
        fileExtension = _fileExtension;
    }

    function setWalletLimit(uint256 _limit) external onlyOwner {
        WALLET_LIMIT = _limit;
    }

    function _baseURI() internal view override returns (string memory) {
        return uri;
    }

    function withdrawERC20(address _token) external onlyOwner {
        IERC20 token = IERC20(_token);
        token.transfer(msg.sender, token.balanceOf(address(this)));
    }
}
