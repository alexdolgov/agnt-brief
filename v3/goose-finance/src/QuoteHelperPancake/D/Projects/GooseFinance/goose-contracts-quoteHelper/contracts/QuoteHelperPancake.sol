// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.6.12;

import '@openzeppelin/contracts/math/SafeMath.sol';
import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/token/ERC20/SafeERC20.sol';

import './libs/PancakeLibrary.sol';
import './interfaces/IPancakePair.sol';

contract QuoteHelperPancake {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;

    address constant public factory = address(0xBCfCcbde45cE874adCB698cC183deBcF17952812);

    function quoteValue(uint256 amountsIn, address[] memory tradePath) public view returns (uint256){
        if (amountsIn == 0) return 0;
        if (tradePath.length < 2) return amountsIn;

        uint[] memory amounts = PancakeLibrary.getAmountsOut(factory, amountsIn, tradePath);
        return amounts[amounts.length - 1];
    }

    function quoteLPValue(address pairAddress, uint256 lpAmount, address quoteToken, address[] memory token0Path, address[] memory token1Path) public view returns (uint256) {
        if (lpAmount == 0) return 0;

        address token0Address = IPancakePair(pairAddress).token0();
        address token1Address = IPancakePair(pairAddress).token1();

        if (token0Address != quoteToken) {
            validatePath(token0Path, token0Address, quoteToken);
        }

        if (token1Address != quoteToken) {
            validatePath(token1Path, token1Address, quoteToken);
        }

        (uint reserve0, uint reserve1,) = IPancakePair(pairAddress).getReserves();
        uint256 totalSupply = IPancakePair(pairAddress).totalSupply();

        uint256 total0 = lpAmount.mul(reserve0).div(totalSupply);
        uint256 total1 = lpAmount.mul(reserve1).div(totalSupply);

        uint256 value0 = total0;
        if (token0Address != quoteToken) {
            value0 = quoteValue(total0, token0Path);
        }

        uint256 value1 = total1;
        if (token1Address != quoteToken) {
            value1 = quoteValue(total1, token1Path);
        }

        return value0.add(value1);
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

    function validatePath(address[] memory path, address from, address to) private pure {
        address head = path[0];
        address tail = path[path.length - 1];
        require(head == from, "INVALID PATH HEAD");
        require(tail == to, "INVALID PATH TAIL");
    }
}
