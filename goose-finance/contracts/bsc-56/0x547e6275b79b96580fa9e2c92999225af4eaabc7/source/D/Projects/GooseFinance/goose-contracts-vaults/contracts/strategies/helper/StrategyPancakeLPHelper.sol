// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/math/Math.sol';
import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';

import './IPancakeLPStrategy.sol';
import '../../interfaces/IMasterChef.sol';
import '../../interfaces/IPancakeRouter02.sol';
import '../../interfaces/IPancakePair.sol';

contract StrategyPancakeLPHelper {
    using SafeMath for uint256;

    address constant public pancakeChef = address(0x73feaa1eE314F8c655E354234017bE2193C9E24E);

    address constant public earnedAddress = address(0x0E09FaBB73Bd3Ade0a17ECC321fD13a19e81cE82);
    address constant public busdAddress = address(0xe9e7CEA3DedcA5984780Bafc599bD69ADd087D56);
    address constant public wbnbAddress = address(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c);

    address[] public earnedToBusdPath = [earnedAddress, wbnbAddress, busdAddress];

    function tvl(address strategy) external view returns (uint256) {
        return wantTokenValue(strategy, IPancakeLPStrategy(strategy).wantLockedTotal());
    }

    function getLPConstituents(address pairAddress, uint256 lpAmount) public view returns (address, uint256, address, uint256){
        address token0Address = IPancakePair(pairAddress).token0();
        address token1Address = IPancakePair(pairAddress).token1();

        if (lpAmount == 0) return (token0Address, 0, token1Address, 0);

        (uint reserve0, uint reserve1,) = IPancakePair(pairAddress).getReserves();
        uint256 totalSupply = IPancakePair(pairAddress).totalSupply();

        uint256 total0 = lpAmount.mul(reserve0).div(totalSupply);
        uint256 total1 = lpAmount.mul(reserve1).div(totalSupply);

        return (token0Address, total0, token1Address, total1);
    }

    function wantTokenValue(address strategy, uint256 wantAmount) public view returns (uint256) {
        if (wantAmount == 0) return 0;

        address pairAddress = IPancakeLPStrategy(strategy).pairAddress();

        uint256 totalSupply = IPancakePair(pairAddress).totalSupply();

        //Avoid quoting more than 1% of total supply to avoid slippage influence and error from low decimal pairs
        uint256 unit = Math.min(wantAmount, totalSupply.div(100));


        (address token0Address, uint256 total0, address token1Address, uint256 total1) = getLPConstituents(pairAddress, unit);

        uint256 value0 = total0;
        if (token0Address != busdAddress) {
            value0 = quoteValue(strategy, total0, token0ToBusdPath(strategy));
        }

        uint256 value1 = total1;
        if (token1Address != busdAddress) {
            value1 = quoteValue(strategy, total1, token1ToBusdPath(strategy));
        }
        uint256 totalUnitValue = value0.add(value1);

        if(wantAmount != unit){
            return totalUnitValue.mul(wantAmount).div(unit);
        }else{
            return totalUnitValue;
        }
    }

    function token0ToBusdPath(address strategy) private view returns (address[] memory){
        address[] memory temp = new address[](5); //assumes at most 5 hops
        uint len = 0;
        for(uint i = 0; i < 5; i++){
            temp[i] = IPancakeLPStrategy(strategy).token0ToBusdPath(i);
            len++;
            if(temp[i] == busdAddress){
                break;
            }
        }
        address[] memory token0ToBusdPath = new address[](len);
        for(uint i = 0; i < len; i++){
            token0ToBusdPath[i] = temp[i];
        }
        return token0ToBusdPath;
    }

    function token1ToBusdPath(address strategy) private view returns (address[] memory){
        address[] memory temp = new address[](5); //assumes at most 5 hops
        uint len = 0;
        for(uint i = 0; i < 5; i++){
            temp[i] = IPancakeLPStrategy(strategy).token1ToBusdPath(i);
            len++;
            if(temp[i] == busdAddress){
                break;
            }
        }
        address[] memory token1ToBusdPath = new address[](len);
        for(uint i = 0; i < len; i++){
            token1ToBusdPath[i] = temp[i];
        }
        return token1ToBusdPath;
    }

    function originTVL(address strategy) public view returns (uint256) {
        return wantTokenValue(strategy, originStakedTotal(strategy));
    }

    function quoteValue(address strategy, uint256 amountsIn, address[] memory tradePath) private view returns (uint256){
        if (amountsIn == 0) return 0;

        uint[] memory amounts = IPancakeRouter02(IPancakeLPStrategy(strategy).router()).getAmountsOut(amountsIn, tradePath);
        return amounts[amounts.length - 1];
    }

    function rewardTokenValue(address strategy, uint256 rewardAmount) public view returns (uint256) {
        return quoteValue(strategy, rewardAmount, earnedToBusdPath);
    }

    function originRewardsPerBlock(address strategy) public view returns (uint256){
        (,uint256 allocPoint,,) = IMasterChef(pancakeChef).poolInfo(IPancakeLPStrategy(strategy).pid());
        uint256 totalAllocPoint = IMasterChef(pancakeChef).totalAllocPoint();
        uint256 rewardsPerBlock = IMasterChef(pancakeChef).cakePerBlock();

        return rewardsPerBlock.mul(allocPoint).div(totalAllocPoint);
    }

    //Precision = 1e4
    function originAPR(address strategy, uint256 blocks) public view returns (uint256){
        uint256 valuePerBlock = rewardTokenValue(strategy, originRewardsPerBlock(strategy));
        return valuePerBlock.mul(blocks).mul(1e4).div(originTVL(strategy));
    }

    function originStakedTotal(address strategy) public view returns (uint256){
        return IERC20(IPancakeLPStrategy(strategy).pairAddress()).balanceOf(pancakeChef);
    }
}
