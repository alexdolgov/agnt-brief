// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/interfaces/IERC20Metadata.sol";
import "./interface/IPriceOracle.sol";
import "./interface/IPancakeRouter02.sol";
import "./interface/IWETH.sol";

contract PriceOracle is Ownable, IPriceOracle {
    IPancakeRouter02 public immutable pancakeV2Router;

    address public immutable wbnb;

    mapping(address => bool) public isWhitelisted;

    mapping(address => address) internal priceFeedMap;

    constructor(
        address _pancakeRouter,
        address defaultToken
    ) Ownable(_msgSender()) {
        pancakeV2Router = IPancakeRouter02(_pancakeRouter);
        isWhitelisted[defaultToken] = true;
        wbnb = pancakeV2Router.WETH();
    }

    // priceFeed should be ***/BNB
    function setPriceFeed(address token, address priceFeed) external onlyOwner {
        priceFeedMap[token] = priceFeed;
    }

    function setWhitelist(address token, bool white) external onlyOwner {
        isWhitelisted[token] = white;
    }

    function calcTokenAmount(
        address token,
        uint256 gasUsed
    ) public view returns (uint256) {
        if (priceFeedMap[token] != address(0)) {
            (, int price, , , ) = AggregatorV3Interface(priceFeedMap[token]).latestRoundData();
            if (price > 0) {
                uint256 decimals = IERC20Metadata(token).decimals();
                return (gasUsed * 10 ** decimals) / uint256(price);
            }
        }
        return 0;
    }

    function bnbToERC20(
        address token,
        uint256 gasUsed
    ) external view override returns (uint256 amount) {
        // tx.gasprice is 0 when estimateGas, it will cause Uniswap V2: INSUFFICIENT_INPUT_AMOUNT.
        // At this point, calculate based on 1Gwei
        gasUsed = gasUsed * (tx.gasprice == 0 ? 10 ** 9 : tx.gasprice);
        // calculate token amount with chainlink
        amount = calcTokenAmount(token, gasUsed);
        if (amount != 0) {
            return amount;
        }

        address[] memory path = new address[](2);
        path[0] = pancakeV2Router.WETH();
        path[1] = address(token);
        uint256[] memory amountsOut = pancakeV2Router.getAmountsOut(
            gasUsed,
            path
        );
        amount = amountsOut[amountsOut.length - 1];
    }
}
