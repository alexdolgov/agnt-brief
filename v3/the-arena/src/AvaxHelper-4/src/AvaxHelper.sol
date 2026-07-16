// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.23;

import {ITokenManagerERC20} from "./interfaces/ITokenManagerERC20.sol";
import {ITokenTemplate} from "./interfaces/ITokenTemplate.sol";
import {IUniswapV2Router02} from "./interfaces/IUniswapV2Router02.sol";
import {IInverseHelper} from "./interfaces/IInverseHelper.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract AvaxHelper {
    ITokenManagerERC20 public immutable TOKEN_MANAGER;
    uint256 public constant GRANULARITY_SCALER = 1e18;
    address public constant WAVAX_ADDRESS = 0xB31f66AA3C1e785363F0875A1B74E27b85FD66c7;
    address public constant ARENA_ADDRESS = 0xB8d7710f7d8349A506b75dD184F05777c82dAd0C;
    IUniswapV2Router02 public constant uniswapRouter = IUniswapV2Router02(0xF56D524D651B90E4B84dc2FffD83079698b9066E);
    IInverseHelper public immutable INVERSE_HELPER;
 
    constructor(address _tokenManagerAddress, address _inverseHelperAddress) {
        TOKEN_MANAGER = ITokenManagerERC20(_tokenManagerAddress);
        INVERSE_HELPER = IInverseHelper(_inverseHelperAddress);
        // Max approve arena to the token manager
        IERC20(ARENA_ADDRESS).approve(address(TOKEN_MANAGER), type(uint256).max);
    }


   /**
   * @notice The avax sent is swapped to arena in its entirety and its used to purchase as many tokens as possible.
   * If the purchase amount is greater than the max tokens for sale, the purchase amount is set to the max tokens for sale.
   * The unused arena is sent to the user. This might not be ideal so this function should be used in conjunction with 
   * getPurchaseAmountAndPriceWithGivenAvax from InverseHelper.sol to avoid sending more avax than necessary.
   * If the purchase amount is less than the minimum amount out, the function reverts.
   * @param _tokenId The id of the token to buy
   * @param _amountOutMin The minimum amount of tokens to buy
   * @return purchaseAmount The amount of tokens bought
   */
    function buyAndCreateLpIfPossibleWithAvax(uint256 _tokenId, uint256 _amountOutMin) public payable returns (uint256 purchaseAmount) {
        uint256 arenaBalanceBefore = ITokenTemplate(ARENA_ADDRESS).balanceOf(address(this));
        address[] memory path = new address[](2);
        path[0] = WAVAX_ADDRESS;
        path[1] = ARENA_ADDRESS;
        uint256[] memory amounts = uniswapRouter.swapExactAVAXForTokens{value: msg.value}(0, path, address(this), block.timestamp);
        uint256 amountInToken = amounts[1];
        ITokenManagerERC20.TokenInfo memory tokenInfo = TOKEN_MANAGER.getTokenInfo(_tokenId);
        uint256 rawCost = INVERSE_HELPER.invertTotalToRaw(tokenInfo.protocolFee, tokenInfo.creatorFee, tokenInfo.referralFee, tokenInfo.tokenCreationBuyFee, amountInToken);
        uint256 currentSupply = ITokenTemplate(tokenInfo.tokenAddress).totalSupply() / GRANULARITY_SCALER;
        purchaseAmount = INVERSE_HELPER.calculateBuyAmount(rawCost,currentSupply,tokenInfo.a, tokenInfo.curveScaler);
        uint256 maxTokensForSale = TOKEN_MANAGER.getMaxTokensForSale(_tokenId);
        if(purchaseAmount > maxTokensForSale) {
            purchaseAmount = maxTokensForSale;
        }
        if(purchaseAmount < _amountOutMin) {
            revert("Insufficient amount out");
        }
        TOKEN_MANAGER.buyAndCreateLpIfPossibleWithUser(purchaseAmount, _tokenId, msg.sender, uint256(type(uint256).max)); // we are fine with spending all the arena that has been swapped
        uint256 arenaBalanceAfter = ITokenTemplate(ARENA_ADDRESS).balanceOf(address(this));
        uint256 diff = arenaBalanceAfter - arenaBalanceBefore;
        IERC20(ARENA_ADDRESS).transfer(msg.sender, diff);
        IERC20(tokenInfo.tokenAddress).transfer(msg.sender, purchaseAmount);

    }

    function buyWithAvaxWithReferrer(uint256 _tokenId, uint256 _amountOutMin, address _referrer) external payable returns (uint256 amountOut) {
        TOKEN_MANAGER.setReferrer(msg.sender,_referrer);
        amountOut = buyAndCreateLpIfPossibleWithAvax(_tokenId, _amountOutMin);
    }

    function sellToAvax(uint256 _tokenId, uint256 _amount, uint256 _amountOutAvaxMin) public returns (uint256 avaxAmountOut) {
        ITokenManagerERC20.TokenParameters memory tokenParameters = TOKEN_MANAGER.getTokenParameters(_tokenId);
        address tokenAddress = tokenParameters.tokenContractAddress;
        ITokenTemplate(tokenAddress).transferFrom(msg.sender, address(this), _amount);
        uint256 amountOut = TOKEN_MANAGER.sellWithUser(_amount, _tokenId, msg.sender, 0); // we are fine with receiving 0 arena becuase its alreay accounted for _amountOutAvaxMin
        ITokenTemplate(ARENA_ADDRESS).approve(address(uniswapRouter), amountOut);
        address[] memory path = new address[](2);
        path[0] = ARENA_ADDRESS;
        path[1] = WAVAX_ADDRESS;
        uint256[] memory amounts = uniswapRouter.swapExactTokensForAVAX(amountOut, _amountOutAvaxMin, path, msg.sender, block.timestamp);
        avaxAmountOut = amounts[1];
    }

    function sellWithReferrerToAvax(uint256 _tokenId, uint256 _amount, uint256 _amountOutAvaxMin, address _referrer) external returns (uint256 avaxAmountOut) { 
        TOKEN_MANAGER.setReferrer(msg.sender,_referrer);
        avaxAmountOut = sellToAvax(_tokenId, _amount, _amountOutAvaxMin);

    }

    function buyWithArena(uint256 _tokenId, uint256 arenaAmountToSpend, uint256 _amountOutMin) public returns (uint256 purchaseAmount) {
        uint256 arenaBalanceBefore = ITokenTemplate(ARENA_ADDRESS).balanceOf(address(this));
        IERC20(ARENA_ADDRESS).transferFrom(msg.sender, address(this), arenaAmountToSpend);
        ITokenManagerERC20.TokenInfo memory tokenInfo = TOKEN_MANAGER.getTokenInfo(_tokenId);
        uint256 rawCost = INVERSE_HELPER.invertTotalToRaw(tokenInfo.protocolFee, tokenInfo.creatorFee, tokenInfo.referralFee, tokenInfo.tokenCreationBuyFee, arenaAmountToSpend);
        uint256 currentSupply = ITokenTemplate(tokenInfo.tokenAddress).totalSupply() / GRANULARITY_SCALER;
        purchaseAmount = INVERSE_HELPER.calculateBuyAmount(rawCost,currentSupply,tokenInfo.a, tokenInfo.curveScaler);
        uint256 maxTokensForSale = TOKEN_MANAGER.getMaxTokensForSale(_tokenId);
        if(purchaseAmount > maxTokensForSale) {
            purchaseAmount = maxTokensForSale;
        }
        if(purchaseAmount < _amountOutMin) {
            revert("Insufficient amount out");
        }
        TOKEN_MANAGER.buyAndCreateLpIfPossibleWithUser(purchaseAmount, _tokenId, msg.sender, arenaAmountToSpend);
        uint256 arenaBalanceAfter = ITokenTemplate(ARENA_ADDRESS).balanceOf(address(this));
        uint256 diff = arenaBalanceAfter - arenaBalanceBefore;
        IERC20(ARENA_ADDRESS).transfer(msg.sender, diff);
        IERC20(tokenInfo.tokenAddress).transfer(msg.sender, purchaseAmount);

    }

    function buyWithArenaWithReferrer(uint256 _tokenId, uint256 arenaAmountToSpend, uint256 _amountOutMin, address _referrer) external returns (uint256 purchaseAmount) {
        TOKEN_MANAGER.setReferrer(msg.sender,_referrer);
        purchaseAmount = buyWithArena(_tokenId, arenaAmountToSpend, _amountOutMin);
    }

}