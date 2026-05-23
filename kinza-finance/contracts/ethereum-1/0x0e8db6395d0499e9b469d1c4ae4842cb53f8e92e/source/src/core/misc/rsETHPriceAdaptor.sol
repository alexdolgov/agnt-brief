pragma solidity 0.8.10;

import {AggregatorInterface} from "../dependencies/chainlink/AggregatorInterface.sol";
import {Ownable} from "../dependencies/openzeppelin/contracts/Ownable.sol";

interface IRedStoneFeed {
    function latestAnswer() external view returns(int256);
    function latestRoundData() external view returns(
        uint80 roundId,  int256 answer, uint256 startAt, uint256 updatedAt, uint80 answerInRound
    );
    function getRoundData(uint80) external view returns(
        uint80 roundId,  int256 answer, uint256 startAt, uint256 updatedAt, uint80 answerInRound
    );
    function aggregator() external view returns(address);
}   

interface ITWAPAggregator {
    function getTWAP() external view returns (uint256);
}


// make use of redstone ETH/ezETH price feed and chainlink ETH feed
contract rsETHPriceAdaptor is Ownable, AggregatorInterface {
    AggregatorInterface public constant ethOracle = AggregatorInterface(0x5f4eC3Df9cbd43714FE2740f5E3616155c5b8419);
    IRedStoneFeed public constant redstoneOracle = IRedStoneFeed(0xA736eAe8805dDeFFba40cAB8c99bCB309dEaBd9B);
    int256 public  maxFallbackThreshold = 0;
    address public twapAggregatorAddress;

    event SetTWAPAggregatorAddress(address twapAggregatorAddress);
    event SetMaxFallbackThreshold(int256 maxFallbackThreshold);

    constructor() public {
    }
    function aggregator() external view returns(address) {
        return redstoneOracle.aggregator();
    }
    function setTWAPAggregatorAddress(address _twapAggregatorAddress) external onlyOwner {
        twapAggregatorAddress = _twapAggregatorAddress;
        emit SetTWAPAggregatorAddress(_twapAggregatorAddress);
    }

    function setMaxFallbackThreshold(int256 _maxFallbackThreshold) external onlyOwner {
        maxFallbackThreshold = _maxFallbackThreshold;
        emit SetMaxFallbackThreshold(_maxFallbackThreshold);
    }



    function ETH_TO_BASE() internal view returns(int256) {
        return ethOracle.latestAnswer();
    }
    /**
     * @dev Converts an unsigned uint256 into a signed int256.
     *
     * Requirements:
     *
     * - input must be less than or equal to maxInt256.
     */
    function toInt256(uint256 value) internal pure returns (int256) {
        require(value < 2**255, "SafeCast: value doesn't fit in an int256");
        return int256(value);
    }
    function getTWAP() public view returns (int256) {
        return toInt256(ITWAPAggregator(twapAggregatorAddress).getTWAP());
    }

    // need to gaurantee to return
    function latestAnswer() external view returns (int256) {
        int256 ethPrice = ETH_TO_BASE();
         try redstoneOracle.latestAnswer() returns (int256 ratio) {
            if (_shouldFallbackToTwap(ratio)) {
                return getTWAP() * ethPrice / 1e8;
            }
            return ratio * ethPrice / 1e8 ;
        } catch {
            return getTWAP() * ethPrice / 1e8;
        }
    }

    function latestTimestamp() external view returns (uint256) {
            (,,,uint256 updatedAt,) = redstoneOracle.latestRoundData();
            return updatedAt;
    }

    function latestRound() external view returns (uint256) {
        (,,,,uint80 answeredInRound) = redstoneOracle.latestRoundData();
        return uint256(answeredInRound);
    }

    // return the redStone rate * latestETHPrice
    function getAnswer(uint256 roundId) external view returns (int256) {
        (,int256 answer,,,) = redstoneOracle.getRoundData(uint80(roundId));
        int256 ethPrice = ETH_TO_BASE();
        return ethPrice * answer / 1e8;
    }

    function getTimestamp(uint256 roundId) external view returns (uint256) {
        (,,,uint256 updatedAt,) = redstoneOracle.getRoundData(uint80(roundId));
        return updatedAt;
    }

    function _shouldFallbackToTwap(int256 price) internal view returns(bool) {
        int256 threshold;
        if (maxFallbackThreshold == 0) {
            // should take multiple years for pufETH to accumulate 50% yield from eth PoS
            threshold = 1e8 * 110 / 100;
        } else {
            threshold = maxFallbackThreshold;
        }
        if (price > threshold) {
            return true;
        }
        return false;
    }
} 