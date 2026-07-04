pragma solidity 0.8.23;

import {OffChainData} from "./BaseStrategyPendle.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {OracleLibrary} from "@uniswap/v3-periphery/contracts/libraries/OracleLibrary.sol";
import {IPendleRouter} from "./integrations/pendle/IPendleRouter.sol";
import {PendleGeneralInfo} from "./strategies/PendleGeneral.sol";
import {IPendleGeneral, PendleGeneralInfo} from "./interfaces/IPendleGeneral.sol";
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";
import {IPenpieMaster} from "./integrations/penpie/IPenpieMaster.sol";


contract PendleLogic {
    AggregatorV3Interface internal dataFeed;
    PendleGeneralInfo public pendleGeneralInfo;
    address constant public WETH = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;
    address constant public PENDLE = 0x0c880f6761F1af8d9Aa9C466984b80DAb9a8c9e8;
    address constant public ARB = 0x912CE59144191C1204E64559FE8253a0e49E6548;
    uint32 internal constant TWAP_RANGE_SECS = 1800;




    constructor(PendleGeneralInfo memory _pendleGeneralInfo, address _dataFeed){
        pendleGeneralInfo = _pendleGeneralInfo;
        dataFeed = AggregatorV3Interface(_dataFeed);
    }

    function ytToWant(uint256 ytAmount) public view returns(uint256){
        if (ytAmount == 0) {
            return 0;
        }
        uint256 exchangeRate = pendleGeneralInfo.syToken.exchangeRate();
        uint256 ptToAssetRate = pendleGeneralInfo.ptOracle.getPtToAssetRate(address(pendleGeneralInfo.market), TWAP_RANGE_SECS);
        uint256 ytPrice = assetToWantRate(1e18) * 1e18 / exchangeRate - ptToAssetRate;
        return ytAmount * ytPrice / 1e18;
    }

    function lpToWant(uint256 lpAmount) public view returns(uint256){
        if (lpAmount == 0) {
            return 0;
        }
        uint256 lpToAssetRate = pendleGeneralInfo.ptOracle.getLpToAssetRate(address(pendleGeneralInfo.market), TWAP_RANGE_SECS);
        return assetToWantRate( lpToAssetRate * lpAmount / 1e18);
    }

    function smthToSmth(
        address pool,
        address tokenFrom,
        address tokenTo,
        uint256 amount
    ) public view returns (uint256) {
        (int24 meanTick, ) = OracleLibrary.consult(pool, TWAP_RANGE_SECS);
        return
            OracleLibrary.getQuoteAtTick(
                meanTick,
                uint128(amount),
                tokenFrom,
                tokenTo
            );
    }
//  1 ez eth = answer WETH
    function getChainlinkDataFeedLatestAnswer() public view returns (uint256) {
        (
            /* uint80 roundID */,
            int answer,
            /*uint startedAt*/,
            /*uint timeStamp*/,
            /*uint80 answeredInRound*/
        ) = dataFeed.latestRoundData();
        return uint256(answer);
    }

    function assetToWantRate(uint256 assetAmount) public view  returns (uint256) {
        uint256 ezETHToWantRate = getChainlinkDataFeedLatestAnswer();
        return ezETHToWantRate * assetAmount / 1e18;
    }

    function estimatedTotalAssets(uint256 lpBalanceStaked, uint256 ytBalance) public view returns (uint256) {
        return lpToWant(lpBalanceStaked) + ytToWant(ytBalance) + getRewardsInWantToken();
    }

    function addLiquidity(uint256 amount, OffChainData calldata _offChainData) external pure returns(uint256 lpExpected, uint256 ytExpected, IPendleRouter.TokenInput memory inputData) {
        IPendleRouter.SwapData memory swapData = IPendleRouter.SwapData(IPendleRouter.SwapType.NONE,address(0), "", false);
        inputData = IPendleRouter.TokenInput(WETH, amount, WETH, address(0), swapData);
        lpExpected = _offChainData.WantToLpYtProportion[0] * amount / 1e18;
        ytExpected = _offChainData.WantToLpYtProportion[1] * amount / 1e18;
    }

    function getRewardsInWantToken() public view returns (uint256 amount) {
        (, address[] memory bonusRewardTokens, , uint256[] memory bonusTokensAmounts) = pendleGeneralInfo.penpieMaster.allPendingTokens(pendleGeneralInfo.lpToken, msg.sender);
        uint256 len = bonusRewardTokens.length;
        for (uint256 i; i < len; i++) {
            if (bonusTokensAmounts[i] == 0) {
                continue;
            }
            if (bonusRewardTokens[i] == ARB) {
                amount += smthToSmth(pendleGeneralInfo.poolArbToWeth, ARB, WETH, bonusTokensAmounts[i]);
            } else if(bonusRewardTokens[i] == PENDLE){
                amount += smthToSmth(pendleGeneralInfo.poolPendleToWeth, PENDLE, WETH, bonusTokensAmounts[i]);
            }
        }
    }

    function getLpAndYtAmountToLiquidate(OffChainData calldata _offChainData, uint256 _stakedAmountInWant, uint256 lpStaked, uint256 ytBalance) external view returns (uint256 lp, uint256 yt){
        lp = _offChainData.WantToLpYtProportion[0] * _stakedAmountInWant / 1e18;
        yt = _offChainData.WantToLpYtProportion[1] * _stakedAmountInWant / 1e18;
        if (lp > lpStaked) {
            lp = lpStaked;
        }
        if (yt > ytBalance ) {
            yt = ytBalance;
        }
    }
}