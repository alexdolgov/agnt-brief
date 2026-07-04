// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC1155/IERC1155.sol";
import "@openzeppelin/contracts/token/ERC1155/utils/ERC1155Holder.sol";

contract KineMarket is Ownable, ReentrancyGuard, ERC1155Holder {
    using SafeERC20 for IERC20;

    address public immutable WETH;
    address public immutable CARD;

    address public receiveToken;

    uint256 public totalSupply;

    struct Card {
        address account;
        address receiveToken;

        uint256 index;
        uint256 tokenId;
        uint256 price;
        uint256 status;
    }

    Card[] private _cards;

    mapping(uint256 => uint256) public cardIndexes;

    event ReceiveTokenUpdated(address indexed previousAddress, address indexed newAddress);

    event Sold(address indexed account, address indexed receiveToken, uint256 tokenId, uint256 price);
    event Bought(address indexed account, address indexed seller, address indexed receiveToken, uint256 tokenId, uint256 price);

    event Withdrawn(address indexed account, uint256 tokenId);

    constructor(address card_, address weth_, address receiveToken_) {
        CARD = card_;
        WETH = weth_;

        receiveToken = receiveToken_;
    }

    receive() external payable {
    }

    function setReceiveToken(address newAddress) external onlyOwner {
        require(newAddress != address(0), "New address is the zero address");

        address previousAddress = receiveToken;
        receiveToken = newAddress;

        emit ReceiveTokenUpdated(previousAddress, newAddress);
    }

    function totalCards() public view returns (uint256) {
        return _cards.length;
    }

    function cards(uint256 startIndex, uint256 endIndex) public view returns (Card[] memory) {
        if (endIndex == 0 || endIndex > totalCards()) {
            endIndex = totalCards();
        }
        require(startIndex < endIndex, "Invalid index");

        Card[] memory result = new Card[](endIndex - startIndex);
        for (uint256 i = startIndex; i < endIndex; i++) {
            result[i - startIndex] = _cards[i];
        }
        return result;
    }

    function sell(uint256 tokenId, address token, uint256 price) external nonReentrant {
        require(token == WETH || token == receiveToken, "Invalid token");
        require(price > 0,"Price must be greater than 0");

        totalSupply++;

        _cards.push(Card(_msgSender(), token, totalSupply, tokenId, price, 0));

        cardIndexes[totalSupply] = _cards.length - 1;

        IERC1155(CARD).safeTransferFrom(_msgSender(), address(this), tokenId, 1, "");
        emit Sold(_msgSender(), token, tokenId, price);
    }

    function buy(uint256 index) external payable nonReentrant {
        uint256 tokenIndex = cardIndexes[index];

        Card storage card = _cards[tokenIndex];
        require(_msgSender() != card.account, "Can't buy self card");
        require(card.status == 0, "The card can't operation");

        card.status = 2;

        if (card.receiveToken == WETH) {
            Address.sendValue(payable(card.account), card.price);
        } else {
            IERC20(card.receiveToken).safeTransferFrom(_msgSender(), address(this), card.price);
            IERC20(card.receiveToken).safeTransfer(card.account, card.price);
        }

        IERC1155(CARD).safeTransferFrom(address(this), _msgSender(), card.tokenId, 1, "");
        emit Bought(_msgSender(), card.account, card.receiveToken, card.tokenId, card.price);
    }

    function withdraw(uint256 index) external nonReentrant {
        uint256 tokenIndex = cardIndexes[index];

        Card storage card = _cards[tokenIndex];
        require(_msgSender() == card.account, "token not owned");
        require(card.status == 0, "the card can't operation");

        card.status = 1;

        IERC1155(CARD).safeTransferFrom(address(this), _msgSender(), card.tokenId, 1, "");
        emit Withdrawn(_msgSender(), card.tokenId);
    }
}
