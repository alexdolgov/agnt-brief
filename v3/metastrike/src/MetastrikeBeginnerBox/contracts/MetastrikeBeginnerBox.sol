// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";

contract MetastrikeBeginnerBox is ERC721Enumerable, Ownable, ReentrancyGuard {
    using Counters for Counters.Counter;

    Counters.Counter private _tokenIdCounter;

    IERC20 public token;
    uint256 public price = 990000000000000000;
    uint256 public startTime;
    uint256 public endTime;

    event BuyBox(address user, uint256 tokenId);

    constructor(
        address _token,
        uint256 _startTime,
        uint256 _endTime
    ) ERC721("Metastrike Beginner Box", "MBB") {
        token = IERC20(_token);

        require(_startTime <= _endTime, "invalid startTime or endTime");

        startTime = _startTime == 0 ? block.timestamp : _startTime;
    }

    function adminSetPrice(uint256 _price) public onlyOwner {
        price = _price;
    }

    function adminSetToken(address _token) public onlyOwner {
        token = IERC20(_token);
    }

    function adminSetTimes(
        uint256 _startTime,
        uint256 _endTime
    ) public onlyOwner {
        require(_startTime <= _endTime, "invalid startTime or endTime");

        startTime = _startTime;
        endTime = _endTime;
    }

    function adminWithdraw() public onlyOwner {
        token.transfer(owner(), token.balanceOf(address(this)));
    }

    function buyBox() public nonReentrant {
        require(price != 0, "price must be set");
        require(block.timestamp >= startTime, "sale not open yet");

        if (endTime != 0) {
            require(block.timestamp <= endTime, "sale ended");
        }

        uint256 tokenId = _tokenIdCounter.current();
        _tokenIdCounter.increment();
        token.transferFrom(msg.sender, address(this), price);
        _safeMint(msg.sender, tokenId);
        emit BuyBox(msg.sender, tokenId);
    }
}
