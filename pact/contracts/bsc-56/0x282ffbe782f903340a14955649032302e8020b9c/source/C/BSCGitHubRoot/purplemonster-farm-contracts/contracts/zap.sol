// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/utils/math/SafeMath.sol";

import "./libs/BEP20.sol";
import "./libs/IApePair.sol";
import "./libs/IApeRouter01.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Zap is Ownable {
    using SafeMath for uint256;


    //TESTNET    
    // address private constant  WBNB = 0xae13d989daC2f0dEbFf460aC112a837C89BAa7cd;
    // address private constant BUSD = 0xeD24FC36d5Ee211Ea25A80239Fb8C4Cfd80f12Ee;
    // IApeRouter01 private constant BABY_ROUTER = IApeRouter01(0x9Ac64Cc6e4415144C455BD8E4837Fea55603e5c3);


    //MainNet
    address private  WBNB = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address private  BUSD = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address private  USDT = 0x55d398326f99059fF775485246999027B3197955;

    // IApeRouter01 private constant PCS_ROUTER = IApeRouter01(0x10ED43C718714eb63d5aA57B78B54704E256024E); //PCS
    IApeRouter01 private constant BABY_ROUTER = IApeRouter01(0x325E343f1dE602396E256B67eFd1F61C3A6B38Bd); //BABY

    
    mapping(address => bool) private notFlip;
    mapping(address => address) private routePairAddresses;
    address[] public tokens;

    constructor()  {
        require(owner() != address(0), "Zap: owner must be set");
    
         setNotFlip(WBNB);
         setNotFlip(BUSD);        
         setNotFlip(USDT);        
    }

    receive() external payable {}

    
    function isFlip(address _address) public view returns (bool) {
        return !notFlip[_address];
    }

    function routePair(address _address) external view returns (address) {
        return routePairAddresses[_address];
    }
    
    function zapInToken(
        address _from,
        uint256 amount,
        address _to,
        address _recipient 
    ) external {        
        if (amount > IBEP20(_from).balanceOf(msg.sender)) amount = IBEP20(_from).balanceOf(msg.sender);
        IBEP20(_from).transferFrom(msg.sender, address(this), amount);
        _approveTokenIfNeeded(_from);

        if (isFlip(_to)) {
            IApePair pair = IApePair(_to);
            address token0 = pair.token0();
            address token1 = pair.token1();
            if (_from == token0 || _from == token1) {
                // swap half amount for other
                address other = _from == token0 ? token1 : token0;
                _approveTokenIfNeeded(other);
                uint256 sellAmount = amount.div(2);
                uint256 otherAmount = _swap(_from, sellAmount, other, address(this));
                BABY_ROUTER.addLiquidity(_from, other, amount.sub(sellAmount), otherAmount, 0, 0,_recipient, block.timestamp);
            } else {
                uint256 bnbAmount = _swapTokenForBNB(_from, amount, address(this));
                _swapBNBToFlip(_to, bnbAmount, _recipient);
            }
        } else {
            _swap(_from, amount, _to, _recipient);
        }
    }

    function zapIn(address _to) external payable {
        _swapBNBToFlip(_to, msg.value, msg.sender);
    }

    function zapOut(address _from, uint256 amount) external {
        if (amount > IBEP20(_from).balanceOf(msg.sender)) amount = IBEP20(_from).balanceOf(msg.sender);
        IBEP20(_from).transferFrom(msg.sender, address(this), amount);
        _approveTokenIfNeeded(_from);

        if (!isFlip(_from)) {
            _swapTokenForBNB(_from, amount, msg.sender);
        } else {
            IApePair pair = IApePair(_from);
            address token0 = pair.token0();
            address token1 = pair.token1();
            if (token0 == WBNB || token1 == WBNB) {
                BABY_ROUTER.removeLiquidityETH(token0 != WBNB ? token0 : token1, amount, 0, 0, msg.sender, block.timestamp);
            } else {
                BABY_ROUTER.removeLiquidity(token0, token1, amount, 0, 0, msg.sender, block.timestamp);
            }
        }
    }

    function _approveTokenIfNeeded(address token) private {
        if (IBEP20(token).allowance(address(this), address(BABY_ROUTER)) == 0) {
            IBEP20(token).approve(address(BABY_ROUTER), type(uint256).max);
        }
    }

    function _swapBNBToFlip(
        address flip,
        uint256 amount,
        address receiver
    ) private {
        if (!isFlip(flip)) {
            _swapBNBForToken(flip, amount, receiver);
        } else {
            // flip
            IApePair pair = IApePair(flip);
            address token0 = pair.token0();
            address token1 = pair.token1();
            if (token0 == WBNB || token1 == WBNB) {
                address token = token0 == WBNB ? token1 : token0;
                uint256 swapValue = amount.div(2);
                uint256 tokenAmount = _swapBNBForToken(token, swapValue, address(this));

                _approveTokenIfNeeded(token);
                BABY_ROUTER.addLiquidityETH{value: amount.sub(swapValue)}(token, tokenAmount, 0, 0, receiver, block.timestamp);
            } else {
                uint256 swapValue = amount.div(2);
                uint256 token0Amount = _swapBNBForToken(token0, swapValue, address(this));
                uint256 token1Amount = _swapBNBForToken(token1, amount.sub(swapValue), address(this));

                _approveTokenIfNeeded(token0);
                _approveTokenIfNeeded(token1);
                BABY_ROUTER.addLiquidity(token0, token1, token0Amount, token1Amount, 0, 0, receiver, block.timestamp);
            }
        }
    }

    function _swapBNBForToken(
        address token,
        uint256 value,
        address receiver
    ) private returns (uint256) {
        address[] memory path;

        if (routePairAddresses[token] != address(0)) {
            path = new address[](3);
            path[0] = WBNB;
            path[1] = routePairAddresses[token];
            path[2] = token;
        } else {
            path = new address[](2);
            path[0] = WBNB;
            path[1] = token;
        }

        uint256[] memory amounts = BABY_ROUTER.swapExactETHForTokens{value: value}(0, path, receiver, block.timestamp);
        return amounts[amounts.length - 1];
    }

    function _swapTokenForBNB(
        address token,
        uint256 amount,
        address receiver
    ) private returns (uint256) {
        address[] memory path;
        if (routePairAddresses[token] != address(0)) {
            path = new address[](3);
            path[0] = token;
            path[1] = routePairAddresses[token];
            path[2] = WBNB;
        } else {
            path = new address[](2);
            path[0] = token;
            path[1] = WBNB;
        }

        uint256[] memory amounts = BABY_ROUTER.swapExactTokensForETH(amount, 0, path, receiver, block.timestamp);
        return amounts[amounts.length - 1];
    }

    function _swap(
        address _from,
        uint256 amount,
        address _to,
        address receiver
    ) private returns (uint256) {
        address intermediate = routePairAddresses[_from];
        if (intermediate == address(0)) {
            intermediate = routePairAddresses[_to];
        }

        address[] memory path;
        if (intermediate != address(0) && (_from == WBNB || _to == WBNB)) {
            path = new address[](3);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = _to;
        } else if (intermediate != address(0) && (_from == intermediate || _to == intermediate)) {
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_from] == routePairAddresses[_to]) {
            path = new address[](3);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = _to;
        } else if (
            routePairAddresses[_from] != address(0) &&
            routePairAddresses[_to] != address(0) &&
            routePairAddresses[_from] != routePairAddresses[_to]
        ) {
            // routePairAddresses[xToken] = xRoute
            path = new address[](5);
            path[0] = _from;
            path[1] = routePairAddresses[_from];
            path[2] = WBNB;
            path[3] = routePairAddresses[_to];
            path[4] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_from] != address(0)) {
            path = new address[](4);
            path[0] = _from;
            path[1] = intermediate;
            path[2] = WBNB;
            path[3] = _to;
        } else if (intermediate != address(0) && routePairAddresses[_to] != address(0)) {
            path = new address[](4);
            path[0] = _from;
            path[1] = WBNB;
            path[2] = intermediate;
            path[3] = _to;
        } else if (_from == WBNB || _to == WBNB) {
            path = new address[](2);
            path[0] = _from;
            path[1] = _to;
        } else {
            path = new address[](3);
            path[0] = _from;
            path[1] = WBNB;
            path[2] = _to;
        }

        uint256[] memory amounts = BABY_ROUTER.swapExactTokensForTokens(amount, 0, path, receiver, block.timestamp);
        return amounts[amounts.length - 1];
    }

    function setRoutePairAddress(address asset, address route) external onlyOwner {
        routePairAddresses[asset] = route;
    }

    function setNotFlip(address token) public onlyOwner {
        bool needPush = notFlip[token] == false;
        notFlip[token] = true;
        if (needPush) {
            tokens.push(token);
        }
    }

    function removeToken(uint256 i) external onlyOwner {
        address token = tokens[i];
        notFlip[token] = false;
        tokens[i] = tokens[tokens.length - 1];
        tokens.pop();
    }

    function sweep() external onlyOwner {
        for (uint256 i = 0; i < tokens.length; i++) {
            address token = tokens[i];
            if (token == address(0)) continue;
            uint256 amount = IBEP20(token).balanceOf(address(this));
            if (amount > 0) {
                _swapTokenForBNB(token, amount, owner());
            }
        }
    }

    // Emergency only
    function withdraw(address token) external onlyOwner {
        if (token == address(0)) {
            payable(owner()).transfer(address(this).balance);
            return;
        }

        IBEP20(token).transfer(owner(), IBEP20(token).balanceOf(address(this)));
    }
}

