// SPDX-License-Identifier: MIT

pragma solidity ^0.8.19;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

contract LybraOrder {
    IERC20 public eUSDV1 = IERC20(0x97de57eC338AB5d51557DA3434828C5DbFaDA371);
    IERC20 public eUSDV2 = IERC20(0xdf3ac4F479375802A821f7b7b46Cd7EB5E4262cC);
    IERC20 public peUSD = IERC20(0xD585aaafA2B58b1CD75092B51ade9Fa4Ce52F247);
    IERC20 public USDC = IERC20(0xA0b86991c6218b36c1d19D4a2e9Eb0cE3606eB48);

    Order[] public orders;

    enum TokenType {
        eUSDV1,
        eUSDV2,
        peUSD
    }

    struct Order {
        address maker;
        TokenType tokenType;
        bool buyOrSale;
        uint256 price;
        uint256 remainingAmount;
        bool isActive;
    }

    event MakeOrder(address indexed user, uint256 id, TokenType indexed tokenType, bool indexed buyOrSale, uint256 price, uint256 remainingAmount, uint256 time);
    event TakeOrder(uint256 id, address indexed taker, TokenType indexed tokenType, bool indexed buyOrSale, uint256 price, uint256 amount, uint256 time);
    event AdjustOrder(uint256 id, address indexed maker, uint256 price, uint256 amount, bool indexed isActive, uint256 time);

    // --- Functions ---

    constructor() {
    }

    function makeOrder(TokenType tokenType, bool buyOrSale, uint256 price, uint256 totalAmount) external {
        _makeOrder(msg.sender, tokenType, buyOrSale, price, totalAmount);
    }

    function adjustOrder(uint256 orderId, uint256 price, uint256 amount, bool isActive) external {
        Order memory order = orders[orderId];
        require(order.maker == msg.sender, "NA");
        order.price = price;
        order.remainingAmount = amount;
        order.isActive = isActive;
        orders[orderId] = order;
        emit AdjustOrder(orderId, msg.sender, price, amount, isActive, block.timestamp);
    }

    function takeOrder(uint256 orderId, uint256 takeAmount) external {
        _takeOrder(msg.sender, orderId, takeAmount);
    }

    function batchTake(uint256[] memory ids, uint256[] memory amounts, Order memory order) external {
        for(uint i = 0; i < ids.length; i++) {
            if(order.tokenType != orders[ids[i]].tokenType) continue;
            if(order.buyOrSale == orders[ids[i]].buyOrSale) continue;
            if((order.buyOrSale && orders[ids[i]].price > order.price) || (!order.buyOrSale && orders[ids[i]].price < order.price)) continue;
            if(checkOrder(msg.sender, ids[i], amounts[i]))
                _takeOrder(msg.sender, ids[i], amounts[i]);
        }
        if(order.remainingAmount > 0) {
            _makeOrder(msg.sender, order.tokenType, order.buyOrSale, order.price, order.remainingAmount);
        } 
    }

    function _makeOrder(address _maker, TokenType _tokenType, bool _buyOrSale, uint256 _price, uint256 _totalAmount) internal {
        require(_price >= 5e5 && _price <= 2e6, "OR");
        orders.push(Order({maker: _maker,
        tokenType: _tokenType,
        buyOrSale: _buyOrSale,
        price: _price,
        remainingAmount: _totalAmount,
        isActive: true
        }));
        emit MakeOrder(_maker, orders.length - 1, _tokenType, _buyOrSale, _price, _totalAmount, block.timestamp);
    }

    function _takeOrder(address _taker, uint256 _id, uint256 _takeAmount) internal {
        Order memory order = orders[_id];
        require(order.isActive && order.remainingAmount >= _takeAmount, "NA");
        IERC20 token = order.tokenType == TokenType.eUSDV1 ? eUSDV1 : order.tokenType == TokenType.eUSDV2 ? eUSDV2 : peUSD;
        bool returnA;
        bool returnB;
        if(order.buyOrSale) {
            returnA = token.transferFrom(_taker, order.maker, _takeAmount);
            returnB = USDC.transferFrom(order.maker, _taker, _takeAmount * order.price / 1e18);
        } else {
            returnA = USDC.transferFrom(_taker, order.maker, _takeAmount * order.price / 1e18);
            returnB = token.transferFrom(order.maker, _taker, _takeAmount);
        }
        require(returnA && returnB, "TF");
        orders[_id].remainingAmount -= _takeAmount;
        if(order.remainingAmount == _takeAmount) {
            orders[_id].isActive = false;
        }
        emit TakeOrder(_id, _taker, order.tokenType, order.buyOrSale, order.price, _takeAmount, block.timestamp);
    }

    

    function checkOrder(address taker, uint256 orderId, uint256 takeAmount) public view returns(bool) {
        Order memory order = orders[orderId];
        if(!order.isActive || order.remainingAmount < takeAmount) {
            return false;
        }

        IERC20 token = order.tokenType == TokenType.eUSDV1 ? eUSDV1 : order.tokenType == TokenType.eUSDV2 ? eUSDV2 : peUSD;
        if(order.buyOrSale) {
            if(token.allowance(taker, address(this)) < takeAmount || token.balanceOf(taker) < takeAmount || USDC.allowance(order.maker, address(this)) < takeAmount * order.price / 1e18 || USDC.balanceOf(order.maker) < takeAmount * order.price / 1e18) {
                return false;
            }
        } else {
            if(USDC.allowance(taker, address(this)) < takeAmount * order.price / 1e18 || USDC.balanceOf(taker) < takeAmount * order.price / 1e18 || token.allowance(order.maker, address(this)) < takeAmount || token.balanceOf(order.maker) < takeAmount) {
                return false;
            }
        }
        return true;
    }

    function checkOrderValidAmount(uint256 orderId) public view returns(uint256) {
        Order memory order = orders[orderId];
        if(!order.isActive) {
            return 0;
        }
        if(order.buyOrSale) {
            uint a = Math.min(USDC.allowance(order.maker, address(this)) * 1e18 / order.price, USDC.balanceOf(order.maker) * 1e18 / order.price);
            return Math.min(order.remainingAmount, a);
        } else {
            IERC20 token = order.tokenType == TokenType.eUSDV1 ? eUSDV1 : order.tokenType == TokenType.eUSDV2 ? eUSDV2 : peUSD;
            uint a = Math.min(token.allowance(order.maker, address(this)), token.balanceOf(order.maker));
            return Math.min(order.remainingAmount, a);
        }
    }

    function batchCheckOrderValidAmount(uint256[] memory ids) external view returns(uint256[] memory, uint256[] memory) {
        uint256[] memory numbers = new uint[](ids.length);
        uint256[] memory prices = new uint[](ids.length);
        for(uint i = 0; i < ids.length; i++) {
            numbers[i] = checkOrderValidAmount(ids[i]);
            prices[i] =  orders[ids[i]].price;
        }
        return (numbers, prices);
    }

    function getOrders(uint256[] memory ids) external view returns(Order[] memory) {
        Order[] memory returnOrders = new Order[](ids.length);
        for(uint i = 0; i < ids.length; i++) {
            returnOrders[i] = orders[ids[i]];
        }
        return returnOrders;
    }
}
