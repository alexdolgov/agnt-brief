pragma solidity ^0.8.7;
// SPDX-License-Identifier: MIT


import "./interfaces/IPancakeRouter02.sol";
import "./interfaces/IPancakePair.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";


contract CS721Listings is IERC721Receiver {

    IERC20 public immutable CoinSack = IERC20(0x125Ce3f13950C5fA94397927F88C352FdED680Ad);
    IPancakeRouter02 public immutable PancakeRouter = IPancakeRouter02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    IPancakePair public immutable CoinSackPancakePair = IPancakePair(0x283fF56b7A7A343912E2fD084b3a7A5CEaF1C429);
    address public immutable DeadAddress = 0x000000000000000000000000000000000000dEaD;

    mapping (address => mapping (uint256 => uint256)) private _listingPrices;
    mapping (address => mapping (uint256 => address)) private _listingSellers;


    constructor() {}


    function getListingPriceCS(address token, uint256 tokenId) public view returns (uint256) {
        require(_listingPrices[token][tokenId] != 0, "listing does not exist");
        return _listingPrices[token][tokenId];
    }

    function getListingPriceBNB(address token, uint256 tokenId) public view returns (uint256) {
        require(_listingPrices[token][tokenId] != 0, "listing does not exist");

        (uint256 reserve0, uint256 reserve1, ) = CoinSackPancakePair.getReserves();
        return (uint256(PancakeRouter.getAmountIn(_listingPrices[token][tokenId]*115/100, reserve1, reserve0)));
    }

    function getListingSeller(address token, uint256 tokenId) public view returns (address) {
        require(_listingPrices[token][tokenId] != 0, "listing does not exist");

        return _listingSellers[token][tokenId];
    }
    
    function purchaseListingWithCS(address token, uint256 tokenId) public {
        require(_listingPrices[token][tokenId] != 0, "listing does not exist");
        require(CoinSack.allowance(msg.sender, address(this)) >= _listingPrices[token][tokenId], "contract CS allowance not provided");

        CoinSack.transferFrom(msg.sender, _listingSellers[token][tokenId], _listingPrices[token][tokenId]);
        IERC721(token).safeTransferFrom(address(this), msg.sender, tokenId);

        _listingPrices[token][tokenId] = 0;
        _listingSellers[token][tokenId] = address(0);
    }

    function purchaseListingWithBNB(address token, uint256 tokenId) public payable {
        require(_listingPrices[token][tokenId] != 0, "listing does not exist");

        (uint256 reserve0, uint256 reserve1, ) = CoinSackPancakePair.getReserves();
        uint256 bnbPrice = (uint256(PancakeRouter.getAmountIn(_listingPrices[token][tokenId]*115/100, reserve1, reserve0)));

        require(msg.value >= bnbPrice, "message value does not cover listing price");

        address[] memory path = new address[](2);
        path[0] = PancakeRouter.WETH();
        path[1] = address(CoinSack);
        PancakeRouter.swapExactETHForTokensSupportingFeeOnTransferTokens{value: msg.value}(_listingPrices[token][tokenId], path, address(this), block.timestamp + 300);

        CoinSack.transferFrom(msg.sender, _listingSellers[token][tokenId], _listingPrices[token][tokenId]);
        IERC721(token).safeTransferFrom(address(this), msg.sender, tokenId);

        if(CoinSack.balanceOf(address(this)) > 0) {
            CoinSack.transfer(DeadAddress, CoinSack.balanceOf(address(this)));
        }

        _listingPrices[token][tokenId] = 0;
        _listingSellers[token][tokenId] = address(0);
    }

    function createListing(address token, uint256 tokenId, uint256 priceCS) public {
        require(priceCS >= 100, "listing price must be at least 1 cs");

        IERC721 token721 = IERC721(token);

        require(token721.ownerOf(tokenId) == msg.sender, "caller is not token owner");
        require(token721.getApproved(tokenId) == address(this) || token721.isApprovedForAll(msg.sender, address(this)), "contract is not approved to interract with token");

        token721.safeTransferFrom(msg.sender, address(this), tokenId);

        _listingPrices[token][tokenId] = priceCS;
        _listingSellers[token][tokenId] = msg.sender;
    }

    function withdrawListing(address token, uint256 tokenId) public {
        require(_listingPrices[token][tokenId] != 0, "listing does not exist");
        require(_listingSellers[token][tokenId] == msg.sender, "caller is not listing seller");

        IERC721(token).safeTransferFrom(address(this), _listingSellers[token][tokenId], tokenId);

        _listingPrices[token][tokenId] = 0;
        _listingSellers[token][tokenId] = address(0);
    }

    function onERC721Received(address operator, address from, uint256 tokenId, bytes memory data) external override pure returns (bytes4) {
        return 0xf0b9e5ba;
    }

}