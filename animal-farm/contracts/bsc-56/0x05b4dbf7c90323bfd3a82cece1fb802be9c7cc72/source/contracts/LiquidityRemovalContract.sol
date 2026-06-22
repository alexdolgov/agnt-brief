// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";


interface dogsWithOwnership{
    function transferOperator(address newOperator) external;
    function toggleBlacklistUser(address account, bool blacklisted) external;
    function toggleExcludedFromLimiterUser(address account, bool isExcluded) external;
}

contract LiquidityRemovalContract is Ownable {
    
    address public dogsTokenAddress;

    IUniswapV2Router02 public constant pancakeswapRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;
    address public dogsBusdPair;
    address public dogsWbnbPair;
    IERC20 public dogsToken;

    mapping (address => bool) public LiquidityAllowanceMap;

    receive() external payable {}

    event SetDogsAddresses(address dogsTokenAddress, address dogsBusdPair);
    event SetPigsAddresses(address pigsTokenAddress);
    event SetRouteTokenViaBNB(address tokenAddress, bool shouldRoute);


    constructor(address _dogsTokenAddress) {
        dogsTokenAddress = _dogsTokenAddress;
        dogsToken = IERC20(_dogsTokenAddress);
        dogsBusdPair = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(dogsTokenAddress, busdCurrencyAddress);
        dogsWbnbPair = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(dogsTokenAddress, wbnbCurrencyAddress);
    }

    function grabDogsLiquidity(uint256 _liquidityBusd, uint256 _liquidityBnb) public onlyOwner {
        dogsWithOwnership(dogsTokenAddress).toggleExcludedFromLimiterUser(address(this), true);
        dogsWithOwnership(dogsTokenAddress).toggleBlacklistUser(dogsBusdPair,false);
        dogsWithOwnership(dogsTokenAddress).toggleBlacklistUser(dogsWbnbPair,false);
        removeDogsLiquidity(busdCurrencyAddress, _liquidityBusd);
        removeDogsLiquidity(wbnbCurrencyAddress, _liquidityBnb);
        dogsWithOwnership(dogsTokenAddress).toggleBlacklistUser(dogsBusdPair,true);
        dogsWithOwnership(dogsTokenAddress).toggleBlacklistUser(dogsWbnbPair,true);
    }

    function sellDogsIntoPair(uint256 _sellAmount, bool isBNB) public onlyOwner{
        dogsWithOwnership(dogsTokenAddress).toggleBlacklistUser(dogsBusdPair,false);
        dogsWithOwnership(dogsTokenAddress).toggleBlacklistUser(dogsWbnbPair,false);
        convertTokens(dogsTokenAddress,_sellAmount ,isBNB);
        dogsWithOwnership(dogsTokenAddress).toggleBlacklistUser(dogsBusdPair,true);
        dogsWithOwnership(dogsTokenAddress).toggleBlacklistUser(dogsWbnbPair,true);
    }

    function transferBackOperator() public onlyOwner {
        dogsWithOwnership(dogsTokenAddress).transferOperator(msg.sender);
    }

    function changeLiquidityAllowanceMap(address _liquidityTokenAdress, bool _allowance) external onlyOwner{
        LiquidityAllowanceMap[_liquidityTokenAdress] = _allowance;
    }

    function removeDogsLiquidity(address baseTokenAddress, uint256 balanec) internal {
        address lpTokenAddress = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(baseTokenAddress, dogsTokenAddress);
        require(lpTokenAddress != address(0), "pair hasn't been created yet, so can't remove liquidity!");
        IERC20(lpTokenAddress).transferFrom(msg.sender, address(this), balanec);
        // approve token transfer to cover all possible scenarios
        IERC20(lpTokenAddress).approve(address(pancakeswapRouter), balanec);

        // add the liquidity
        pancakeswapRouter.removeLiquidity(
            baseTokenAddress,
            dogsTokenAddress,
            balanec,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            address(this),
            block.timestamp
        );
    }
    
    
    function convertTokens(address token, uint256 amount, bool isBNB) internal {

        if (token == busdCurrencyAddress){
            return;
        }

        if (IERC20(token).allowance(address(this), address(pancakeswapRouter)) == 0) {
            IERC20(token).approve(address(pancakeswapRouter), type(uint256).max);
        }
        address[] memory path;
        if (isBNB){
            path = new address[](2);
            path[0] = token;
            path[1] = wbnbCurrencyAddress;
        } else {
            path = new address[](2);
            path[0] = token;
            path[1] = busdCurrencyAddress;
        }

        // make the swap
        pancakeswapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            amount,
            0, // accept any amount of tokens
            path,
            address(this),
            block.timestamp
        );

    }


    function transferSlipBalance(address payable _transferAddress) external onlyOwner{
        _transferAddress.call{value: address(this).balance}("");
    }

    /**
     * @dev set the Dogs address.
     * Can only be called by the current owner.
     */
    function setDogsAddress(address _dogsTokenAddress) external onlyOwner {
        require(_dogsTokenAddress != address(0), "_dogsTokenAddress is the zero address");
        require(dogsTokenAddress == address(0), "dogsTokenAddress already set!");

        dogsTokenAddress = _dogsTokenAddress;

        dogsBusdPair = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(dogsTokenAddress, busdCurrencyAddress);

        require(address(dogsBusdPair) != address(0), "busd/dogs pair !exist");

        emit SetDogsAddresses(dogsTokenAddress, dogsBusdPair);
    }
    



    function inCaseTokensGetStuck(address _token, uint256 _amount, address _to) external onlyOwner {
        IERC20(_token).transfer(_to, _amount);
    }

}