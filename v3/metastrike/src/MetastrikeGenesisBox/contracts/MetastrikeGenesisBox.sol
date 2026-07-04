// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract MetastrikeGenesisBox is ERC721Enumerable, Ownable, ReentrancyGuard {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    uint256 public MAX_SUPPLY;
    IERC20 public token;
    uint256 public price = 9990000000000000000;
    uint256 public startTime;

    mapping(uint256 => address) public isOpened;

    event BuyBox(address user, uint256 tokenId);

    constructor(
        uint256 _maxSupply,
        address _token,
        uint256 _startTime
    ) ERC721("Metastrike Genesis Box", "MGB") {
        MAX_SUPPLY = _maxSupply;
        token = IERC20(_token);
        if (_startTime == 0) {
            startTime = block.timestamp;
        } else {
            require(_startTime >= block.timestamp, "invalid startTime");
            startTime = _startTime;
        }
    }

    function adminSetPrice(uint256 _price) public onlyOwner {
        price = _price;
    }

    function adminSetToken(address _token) public onlyOwner {
        token = IERC20(_token);
    }

    function adminWithdraw() public onlyOwner {
        token.transfer(owner(), token.balanceOf(address(this)));
    }

    function buyBox() public nonReentrant {
        require(price != 0, "price must be set");
        require(block.timestamp >= startTime, "sale not open yet");
        uint256 tokenId = _tokenIdCounter.current();
        require(tokenId < MAX_SUPPLY, "Exceeds MAX SUPPLY");
        _tokenIdCounter.increment();
        token.transferFrom(msg.sender, address(this), price);
        _safeMint(msg.sender, tokenId);
        emit BuyBox(msg.sender, tokenId);
    }
}
