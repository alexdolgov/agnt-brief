// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol";
import "@uniswap/v2-core/contracts/interfaces/IUniswapV2Factory.sol";

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

// AddLiquidityHelper, allows anyone to add or remove Dogs liquidity tax free
// Also allows the Dogs Token to do buy backs tax free via an external contract.
contract AddLiquidityHelper is ReentrancyGuard, Ownable {
    using SafeERC20 for ERC20;

    address public dogsTokenAddress;
    address public pigsTokenAddress;

    IUniswapV2Router02 public constant pancakeswapRouter = IUniswapV2Router02(0x10ED43C718714eb63d5aA57B78B54704E256024E);
    address public constant busdCurrencyAddress = 0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56;
    address public constant wbnbCurrencyAddress = 0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c;

    address public dogsBusdPair;

    mapping (address => bool) public viaWBNBTokens;

    receive() external payable {}

    event SetDogsAddresses(address dogsTokenAddress, address dogsBusdPair);
    event SetPigsAddresses(address pigsTokenAddress);
    event SetRouteTokenViaBNB(address tokenAddress, bool shouldRoute);


    modifier onlyDogsToken() {
        require(dogsTokenAddress == msg.sender, "!dogsToken");
        _;
    }

    /**
     * @notice Constructs the AddLiquidityHelper contract.
     */
    constructor() {

    }

    function setRouteViaBNBToken(address _token, bool _viaWbnb) external onlyOwner {
        viaWBNBTokens[_token] = _viaWbnb;
        emit SetRouteTokenViaBNB(_token, _viaWbnb);
    }

    function shouldRouteViaBNB(address _token) public view returns (bool){
        return viaWBNBTokens[_token];
    }

    function dogsBUSDLiquidityWithBuyBack(address lpHolder) external onlyDogsToken nonReentrant {
        (uint256 res0, uint256 res1, ) = IUniswapV2Pair(dogsBusdPair).getReserves();

        uint256 dogsTokenBalance = ERC20(dogsTokenAddress).balanceOf(address(this));

        uint256 busdTokenBalance;

        if (res0 != 0 && res1 != 0) {
            // making busd res0...
            if (IUniswapV2Pair(dogsBusdPair).token0() == dogsTokenAddress){
                (res1, res0) = (res0, res1);
            }

            uint256 totalBUSDNeeded = (res0 * dogsTokenBalance) / res1;

            uint256 existingBUSD = ERC20(busdCurrencyAddress).balanceOf(address(this));

            uint256 unmatchedDogs = 0;

            if (existingBUSD < totalBUSDNeeded) {
                // calculate how much dogs will match up with our existing busd.
                uint256 matchedDogs = (res1 * existingBUSD) / res0;
                if (dogsTokenBalance >= matchedDogs)
                    unmatchedDogs = dogsTokenBalance - matchedDogs;
            } else if (existingBUSD > totalBUSDNeeded) {
                // use excess BUSD for DOGS buy back
                uint256 excessBUSD = existingBUSD - totalBUSDNeeded;

                if (excessBUSD / 2 > 0) {
                    // swap half of the excess busd for lp to be balanced
                    swapBUSDForTokens(excessBUSD / 2, dogsTokenAddress);
                }
            }

            // swap tokens for BUSD
            if (unmatchedDogs / 2 > 0){
                swapTokensForBUSD(dogsTokenAddress, unmatchedDogs / 2);
            }

            dogsTokenBalance = ERC20(dogsTokenAddress).balanceOf(address(this));
            busdTokenBalance = ERC20(busdCurrencyAddress).balanceOf(address(this));

            // approve token transfer to cover all possible scenarios
            ERC20(dogsTokenAddress).approve(address(pancakeswapRouter), dogsTokenBalance);
            ERC20(busdCurrencyAddress).approve(address(pancakeswapRouter), busdTokenBalance);

            pancakeswapRouter.addLiquidity(
                dogsTokenAddress,
                busdCurrencyAddress,
                    dogsTokenBalance,
                    busdTokenBalance,
                0, // slippage is unavoidable
                0, // slippage is unavoidable
                lpHolder,
                block.timestamp
            );

        }

        dogsTokenBalance = ERC20(dogsTokenAddress).balanceOf(address(this));
        busdTokenBalance = ERC20(busdCurrencyAddress).balanceOf(address(this));

        if (dogsTokenBalance > 0){
            ERC20(dogsTokenAddress).transfer(msg.sender, dogsTokenBalance);
        }
        if (busdTokenBalance > 0){
            ERC20(busdCurrencyAddress).transfer(msg.sender, busdTokenBalance);
        }
    }

    function addDogsETHLiquidity(uint256 nativeAmount) external payable nonReentrant {
        require(msg.value > 0, "!sufficient funds");

        ERC20(dogsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(dogsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidityETH{value: msg.value}(
            dogsTokenAddress,
            nativeAmount,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
                msg.sender,
            block.timestamp
        );

        if (address(this).balance > 0) {
            // not going to require/check return value of this transfer as reverting behaviour is undesirable.
            payable(msg.sender).call{value: address(this).balance}("");
        }

        if (ERC20(dogsTokenAddress).balanceOf(address(this)) > 0)
            ERC20(dogsTokenAddress).transfer(msg.sender, ERC20(dogsTokenAddress).balanceOf(address(this)));
    }

    function addDogsLiquidity(address baseTokenAddress, uint256 baseAmount, uint256 nativeAmount) external nonReentrant {
        ERC20(baseTokenAddress).safeTransferFrom(msg.sender, address(this), baseAmount);
        ERC20(dogsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(baseTokenAddress).approve(address(pancakeswapRouter), baseAmount);
        ERC20(dogsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidity(
            baseTokenAddress,
            dogsTokenAddress,
            baseAmount,
            nativeAmount ,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        uint256 baseTokenBalance = ERC20(baseTokenAddress).balanceOf(address(this));
        uint256 dogsTokenBalance = ERC20(dogsTokenAddress).balanceOf(address(this));

        if (baseTokenBalance > 0)
            ERC20(baseTokenAddress).safeTransfer(msg.sender, baseTokenBalance);

        if (dogsTokenBalance > 0)
            ERC20(dogsTokenAddress).transfer(msg.sender, dogsTokenBalance);
    }

    function removeDogsLiquidity(address baseTokenAddress, uint256 liquidity) external nonReentrant {
        address lpTokenAddress = IUniswapV2Factory(pancakeswapRouter.factory()).getPair(baseTokenAddress, dogsTokenAddress);
        require(lpTokenAddress != address(0), "pair hasn't been created yet, so can't remove liquidity!");

        ERC20(lpTokenAddress).safeTransferFrom(msg.sender, address(this), liquidity);
        // approve token transfer to cover all possible scenarios
        ERC20(lpTokenAddress).approve(address(pancakeswapRouter), liquidity);

        // add the liquidity
        pancakeswapRouter.removeLiquidity(
            baseTokenAddress,
            dogsTokenAddress,
            liquidity,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );
    }

    function swapBUSDForTokens(uint256 busdAmount, address wantedTokenAddress) internal {
        require(ERC20(busdCurrencyAddress).balanceOf(address(this)) >= busdAmount, "insufficient busd provided!");
        require(wantedTokenAddress != address(0), "wanted token address can't be the zero address!");

        address[] memory path;
        if (shouldRouteViaBNB(wantedTokenAddress)){
            path = new address[](3);
            path[0] = busdCurrencyAddress;
            path[1] = wbnbCurrencyAddress;
            path[2] = wantedTokenAddress;
        } else {
            path = new address[](2);
            path[0] = busdCurrencyAddress;
            path[1] = wantedTokenAddress;
        }


        // make the swap
        pancakeswapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            busdAmount,
            0,
            path,
        // cannot send tokens to the token contract of the same type as the output token
            address(this),
            block.timestamp
        );
    }

    function swapTokensForBUSD(address saleTokenAddress, uint256 tokenAmount) internal {
        require(ERC20(saleTokenAddress).balanceOf(address(this)) >= tokenAmount, "insufficient tokens provided!");
        require(saleTokenAddress != address(0), "wanted token address can't be the zero address!");

        address[] memory path;
        if (shouldRouteViaBNB(saleTokenAddress)){
            path = new address[](3);
            path[0] = saleTokenAddress;
            path[1] = wbnbCurrencyAddress;
            path[2] = busdCurrencyAddress;
        } else {
            path = new address[](2);
            path[0] = saleTokenAddress;
            path[1] = busdCurrencyAddress;
        }

        ERC20(saleTokenAddress).approve(address(pancakeswapRouter), tokenAmount);

        // make the swap
        pancakeswapRouter.swapExactTokensForTokensSupportingFeeOnTransferTokens(
            tokenAmount,
            0, // accept any amount of ETH
            path,
            address(this),
            block.timestamp
        );
    }

    function addPigsETHLiquidity(uint256 nativeAmount) external payable nonReentrant {
        require(msg.value > 0, "!sufficient funds");

        ERC20(pigsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(pigsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidityETH{value: msg.value}(
            pigsTokenAddress,
            nativeAmount,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        if (address(this).balance > 0) {
            // not going to require/check return value of this transfer as reverting behaviour is undesirable.
            payable(msg.sender).call{value: address(this).balance}("");
        }

        if (ERC20(pigsTokenAddress).balanceOf(address(this)) > 0)
            ERC20(pigsTokenAddress).transfer(msg.sender, ERC20(pigsTokenAddress).balanceOf(address(this)));
    }

    function addPigsLiquidity(address baseTokenAddress, uint256 baseAmount, uint256 nativeAmount) external nonReentrant {
        ERC20(baseTokenAddress).safeTransferFrom(msg.sender, address(this), baseAmount);
        ERC20(pigsTokenAddress).safeTransferFrom(msg.sender, address(this), nativeAmount);

        // approve token transfer to cover all possible scenarios
        ERC20(baseTokenAddress).approve(address(pancakeswapRouter), baseAmount);
        ERC20(pigsTokenAddress).approve(address(pancakeswapRouter), nativeAmount);

        // add the liquidity
        pancakeswapRouter.addLiquidity(
            baseTokenAddress,
                pigsTokenAddress,
            baseAmount,
            nativeAmount ,
            0, // slippage is unavoidable
            0, // slippage is unavoidable
            msg.sender,
            block.timestamp
        );

        uint256 baseTokenBalance = ERC20(baseTokenAddress).balanceOf(address(this));
        uint256 dogsTokenBalance = ERC20(dogsTokenAddress).balanceOf(address(this));

        if (baseTokenBalance > 0)
            ERC20(baseTokenAddress).safeTransfer(msg.sender, baseTokenBalance);

        if (dogsTokenBalance > 0)
            ERC20(pigsTokenAddress).transfer(msg.sender, dogsTokenBalance);
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

    /**
     * @dev set the Pigs address.
     * Can only be called by the current owner.
     */
    function setPigsAddress(address _pigsTokenAddress) external onlyOwner {
        require(_pigsTokenAddress != address(0), "_pigsTokenAddress is the zero address");
        require(pigsTokenAddress == address(0), "pigsTokenAddress already set!");

        pigsTokenAddress = _pigsTokenAddress;

        emit SetPigsAddresses(pigsTokenAddress);
    }
}