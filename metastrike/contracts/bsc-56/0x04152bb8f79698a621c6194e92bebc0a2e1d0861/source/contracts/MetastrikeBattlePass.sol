// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract MetastrikeBattlePass is ERC721Enumerable, Ownable, ReentrancyGuard {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    uint256 public MAX_SUPPLY;
    IERC20 public token;
    uint256 public price = 19990000000000000000;
    uint256 public startTime;

    event Buy(address user, uint256 tokenId);

    constructor(uint256 _maxSupply, address _token, uint256 _startTime) ERC721("Metastrike Battle Pass", "MBP") {
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

    function buy() public nonReentrant {
        require(price != 0, "price must be set");
        require(block.timestamp >= startTime, "sale not open yet");
        uint256 tokenId = _tokenIdCounter.current();
        require(tokenId < MAX_SUPPLY, "Exceeds MAX SUPPLY");
        _tokenIdCounter.increment();
        token.transferFrom(msg.sender, address(this), price);
        _safeMint(msg.sender, tokenId);
        emit Buy(msg.sender, tokenId);
    }

    function _beforeTokenTransfer(address from, address to, uint256 tokenId, uint256 batchSize) internal override {
        require(from == address(0), "Token not transferable");
        super._beforeTokenTransfer(from, to, tokenId, batchSize);
    }
}