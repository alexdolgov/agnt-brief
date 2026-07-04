// SPDX-License-Identifier: BUSL-1.1

pragma solidity ^0.8.0;

import "./interfaces/IWSONIC.sol";
import "./interfaces/IUniswapV2Pair.sol";
import "./interfaces/IShadowRouter.sol";
import "./lib/TransferHelper.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/Context.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

/**************************************************************************************************************************************************
####    ▄████████ ███▄▄▄▄      ▄████████    ▄█   ▄█▄    ▄████████         ▄████████  ▄█  ███▄▄▄▄      ▄████████ ███▄▄▄▄    ▄████████    ▄████████ 
####   ███    ███ ███▀▀▀██▄   ███    ███   ███ ▄███▀   ███    ███        ███    ███ ███  ███▀▀▀██▄   ███    ███ ███▀▀▀██▄ ███    ███   ███    ███ 
####   ███    █▀  ███   ███   ███    ███   ███▐██▀     ███    █▀         ███    █▀  ███▌ ███   ███   ███    ███ ███   ███ ███    █▀    ███    █▀  
####   ███        ███   ███   ███    ███  ▄█████▀     ▄███▄▄▄           ▄███▄▄▄     ███▌ ███   ███   ███    ███ ███   ███ ███         ▄███▄▄▄     
#### ▀███████████ ███   ███ ▀███████████ ▀▀█████▄    ▀▀███▀▀▀          ▀▀███▀▀▀     ███▌ ███   ███ ▀███████████ ███   ███ ███        ▀▀███▀▀▀     
####          ███ ███   ███   ███    ███   ███▐██▄     ███    █▄         ███        ███  ███   ███   ███    ███ ███   ███ ███    █▄    ███    █▄  
####    ▄█    ███ ███   ███   ███    ███   ███ ▀███▄   ███    ███        ███        ███  ███   ███   ███    ███ ███   ███ ███    ███   ███    ███ 
####  ▄████████▀   ▀█   █▀    ███    █▀    ███   ▀█▀   ██████████        ███        █▀    ▀█   █▀    ███    █▀   ▀█   █▀  ████████▀    ██████████ 
####                                       ▀                                                                                                      

#### Website: https://snake.finance/

**************************************************************************************************************************************************/

contract ZapperGSnake is Ownable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    /* ========== STATE VARIABLES ========== */

    address public constant SHADOW_ROUTER = 0x1D368773735ee1E678950B7A97bcA2CafB330CDc;
    address public constant WSONIC_TOKEN = 0x039e2fB66102314Ce7b64Ce5Ce3E5183bc94aD38;
    address public constant GSNAKE_TOKEN = 0x674a430f531847a6f8976A900f8ace765f896a1b;
    address public constant GSNAKE_LP_TOKEN = 0xb901D7316447C84f4417b8a8268E2822095051E6;

    struct LiquidityPair {
        address _token0;
        address _token1;
        uint256 _amountToken0;
        uint256 _amountToken1;
        uint256 _liqTokenAmt;
    }

    struct FunctionArgs {
        address _LP;
        address _in;
        address _out;
        address _recipient;
        address _routerAddr;
        address _token;
        uint256 _amount;
        
        uint256 _otherAmt;
        uint256 _swapAmt;
    }

    constructor() Ownable() {}

    /* ========== External Functions ========== */

    // @_in - Token we want to throw in
    // @amount - amount of our _in
    // @minAmountOfLp - will be calculated on UI including slippage set by user
    function zapInToken(address _in, uint256 amount, address _recipient, uint256 minAmountOfLp) external payable {
        // From an ERC20 to an LP token, through specified router, going through base asset if necessary
        // 1. check if its authorized token
        require(_in == WSONIC_TOKEN || _in == GSNAKE_TOKEN || _in == address(0), "Only S, wS or GSnake tokens accepted");

        // 2. transfer tokens from sender to this contract
        if (_in != address(0)) {
            IERC20(_in).safeTransferFrom(msg.sender, address(this), amount);
        } else {
            require(msg.value == amount, "Incorrect amount of S sent");
            IWSONIC(WSONIC_TOKEN).deposit{value: amount}();
            _in = WSONIC_TOKEN;
        }

        // 3. approve router to spend tokens
        _approveTokenIfNeeded(_in, SHADOW_ROUTER);

        // 4. swap part of _in for other token
        address other = (_in == WSONIC_TOKEN || _in == address(0)) ? GSNAKE_TOKEN : WSONIC_TOKEN;
        (uint256 amountOfTokenIn, uint256 amountToSwapForOtherToken, uint256 amountOtherForLiquidityEstimate) = getTokenAmountsForLiquidity(_in, amount);

        // 4.3 approve router to spend other token (done)
        _approveTokenIfNeeded(other, SHADOW_ROUTER);

        // 4.4 swap _in for other token
        uint256 otherAmount = _swap(_in, amountToSwapForOtherToken, other, address(this));
        require(otherAmount >= amountOtherForLiquidityEstimate, "amount smaller than estimate");

        // get quoteaddliquidity
        (uint256 amountInToAdd, uint256 amountOtherToAdd, ) = IShadowRouter(SHADOW_ROUTER).quoteAddLiquidity(_in, other, true, amountOfTokenIn, amountOtherForLiquidityEstimate);
        // require(liquidity >= minAmountOfLp, "lp amount too small");

        address recipient = _recipient;

        // 5. add liquidity
        ( , , uint liquidity) = IShadowRouter(SHADOW_ROUTER).addLiquidity(
            _in,
            other,
            true,
            amountInToAdd,
            amountOtherToAdd,
            0, // can be 0 because we already have a require for minAmountOfLp
            0, // can be 0 because we already have a require for minAmountOfLp
            recipient, 
            block.timestamp
        );

        require(liquidity >= minAmountOfLp, "lp amount too small");

        // 6. distribute dust
        retrieveDust(_in, recipient);
        retrieveDust(other, recipient);
    }

    // from an LP token to desired token
    // @in - LP we want to throw in
    // @amount - amount of our LP
    // @out - token we want to get
    function zapOutToToken(uint256 amount, address out, address recipient, uint256 minAmountToken) external {
        require(out == WSONIC_TOKEN || out == GSNAKE_TOKEN || out == address(0), "Only S, wS or GSnake tokens accepted");

        FunctionArgs memory args;
        LiquidityPair memory pair;

        args._amount = amount;
        args._out = out == address(0) ? WSONIC_TOKEN : out;
        args._recipient = recipient;
        
        args._in = GSNAKE_LP_TOKEN;

        IERC20(args._in).safeTransferFrom(msg.sender, address(this), args._amount);
        _approveTokenIfNeeded(args._in, SHADOW_ROUTER);

        pair._token0 = IUniswapV2Pair(args._in).token0();
        pair._token1 = IUniswapV2Pair(args._in).token1();

        _approveTokenIfNeeded(pair._token0, SHADOW_ROUTER);
        _approveTokenIfNeeded(pair._token1, SHADOW_ROUTER);

        (pair._amountToken0, pair._amountToken1) = IShadowRouter(SHADOW_ROUTER).removeLiquidity(pair._token0, pair._token1, true, args._amount, 0, 0, address(this), block.timestamp);
        if (pair._token0 != args._out) {
            pair._amountToken0 = _swap(pair._token0, pair._amountToken0, args._out, address(this));
        }
        if (pair._token1 != args._out) {
            pair._amountToken1 = _swap(pair._token1, pair._amountToken1, args._out, address(this));
        }
        require (pair._amountToken0.add(pair._amountToken1) >= minAmountToken, "amt < minAmountToken");

        if (out == address(0)) {
            IWSONIC(WSONIC_TOKEN).withdraw(pair._amountToken0.add(pair._amountToken1));
            payable(recipient).transfer(pair._amountToken0.add(pair._amountToken1));
        } else {
            IERC20(args._out).safeTransfer(args._recipient, pair._amountToken0.add(pair._amountToken1));
        }
    }
   
    function _swap(address _from, uint amount, address _to, address recipient) private returns (uint) {
        IShadowRouter.route[] memory routes = new IShadowRouter.route[](1);
        routes[0] = IShadowRouter.route({
            from: _from,
            to: _to,
            stable: true
        });

        uint256 minAmountOut = _estimateSwap(_from, amount, _to);

        uint[] memory amounts = IShadowRouter(SHADOW_ROUTER).swapExactTokensForTokens(
            amount,
            minAmountOut, // Use calculated minimum amount instead of 0
            routes,
            recipient,
            block.timestamp
        );

        require(amounts[amounts.length-1] >= minAmountOut, "amount smaller than estimate");
        return amounts[amounts.length - 1];
    }

    // @_in - Token we want to throw in
    // @amount - amount of our _in
    // @out - address of LP we are going to get

    function estimateZapIn(address _in, uint256 amount) public view returns (uint256, uint256, uint256, uint256) {
        address other = (_in == WSONIC_TOKEN || _in == address(0)) ? GSNAKE_TOKEN : WSONIC_TOKEN;
        (uint256 amountOfTokenIn, uint256 amountToSwapForOtherToken, uint256 amountOtherForLiquidityEstimate) = getTokenAmountsForLiquidity(_in, amount);

        if (_in == IUniswapV2Pair(GSNAKE_LP_TOKEN).token0()) {
            (uint256 amountIn, uint256 amountOther, uint256 liquidity) = IShadowRouter(SHADOW_ROUTER).quoteAddLiquidity(_in, other, true, amountOfTokenIn, amountOtherForLiquidityEstimate);
            return (amountIn, amountOther, amountToSwapForOtherToken, liquidity);
        } else {
            (uint256 amountOther, uint256 amountIn, uint256 liquidity) = IShadowRouter(SHADOW_ROUTER).quoteAddLiquidity(other, _in, true, amountOtherForLiquidityEstimate, amountOfTokenIn);
            return (amountOther, amountIn, amountToSwapForOtherToken, liquidity);
        }
    }

    function getTokenAmountsForLiquidity(address _in, uint256 amount) public view returns(uint256, uint256, uint256) {
        uint256 amountOfTokenIn = amount.div(2);
        uint256 amountToSwapForOtherToken = amount.sub(amountOfTokenIn);
        uint256 amountOfOtherTokenForLiquidity = _estimateSwap(_in, amountToSwapForOtherToken, _in == WSONIC_TOKEN ? GSNAKE_TOKEN : WSONIC_TOKEN);

        return (amountOfTokenIn, amountToSwapForOtherToken, amountOfOtherTokenForLiquidity);
    }

     // @ _fromLP - LP we want to throw in
    // @ _to - token we want to get out of our LP
    // @ minAmountToken0, minAmountToken1 - coming from UI (min amount of tokens coming from breaking our LP)
    function estimateZapOut(address _out, uint256 _amount) public view returns (uint256) {
        address token0 = IUniswapV2Pair(GSNAKE_LP_TOKEN).token0();
        address token1 = IUniswapV2Pair(GSNAKE_LP_TOKEN).token1();

        (uint256 _amountToken0, uint256 _amountToken1) = IShadowRouter(SHADOW_ROUTER).quoteRemoveLiquidity(token0, token1, true, _amount);
        if(token0 == _out) { // if sonic, need to swap token1
            return _estimateSwap(token1, _amountToken1, _out).add(_amountToken0);
        } else {
            return _estimateSwap(token0, _amountToken0, _out).add(_amountToken1);
        }
    }
    
    // @_in - token we want to throw in
    // @amount - amount of our _in
    // @out - token we want to get out
    function _estimateSwap(address _in, uint256 amount, address out) public view returns (uint256) {
        IShadowRouter router = IShadowRouter(SHADOW_ROUTER);
        IShadowRouter.route[] memory routes = new IShadowRouter.route[](1);
        routes[0] = IShadowRouter.route({
            from: _in,
            to: out,
            stable: true
        });

        uint256[] memory amounts = router.getAmountsOut(amount, routes);
        return amounts[amounts.length - 1];
    }
    /* ========== Private Functions ========== */

    function _approveTokenIfNeeded(address token, address router) private {
        if (IERC20(token).allowance(address(this), router) == 0) {
            IERC20(token).safeApprove(router, type(uint256).max);
        }
    }

    function retrieveDust(address token, address recipient) private {
        if (token == address(0)) {
            payable(recipient).transfer(address(this).balance);
            return;
        }
        IERC20(token).transfer(recipient, IERC20(token).balanceOf(address(this)));
    }

    /* ========== RESTRICTED FUNCTIONS ========== */
    function withdraw(address token) external onlyOwner {
        if (token == address(0)) {
            payable(owner()).transfer(address(this).balance);
            return;
        }
        IERC20(token).transfer(owner(), IERC20(token).balanceOf(address(this)));
    }

    // add receive function
    receive() external payable {}
}