// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@api3/contracts/v0.8/interfaces/IProxy.sol";
import {AggregatorV3Interface} from "@chainlink/contracts/src/v0.8/shared/interfaces/AggregatorV3Interface.sol";

contract Api3AggregatorDeviationAdaptor {  

   // Updating the proxy address is a security-critical action which is why
   // we have made it immutable.
   address public immutable api3Proxy;
   uint256 public immutable upperBoundRatio;
   uint256 public immutable lowerBoundRatio;
   AggregatorV3Interface immutable chainlinkDatafeed;

   constructor(address _proxy, uint256 _upperBoundRatio, uint256 _lowerBoundRatio, address _chainlinkDatafeed) {
       api3Proxy = _proxy;
       upperBoundRatio = _upperBoundRatio;
       lowerBoundRatio = _lowerBoundRatio;
       chainlinkDatafeed = AggregatorV3Interface(_chainlinkDatafeed);
   }

    function convertDecimals(int256 answer, uint8 input, uint8 output) internal pure returns (int256) {
        if (input == output) return answer;
        if (input < output) return answer * int256(10 ** (output - input));
        return answer / int256(10 ** (input - output));
    }

    /**
     * @notice Test reported asset price against anchor price
     * @param reportedPrice The price to be tested
     * @custom:error Missing error thrown if asset config is not set
     * @custom:error Price error thrown if anchor price is not valid
     */
    function validatePriceWithAnchorPrice(
        uint256 reportedPrice,
        uint256 anchorPrice
    ) public view returns (bool) {
        if (upperBoundRatio == 0) revert("validation config not exist");
        if (anchorPrice == 0) revert("anchor price is not valid");
        return _isWithinAnchor(reportedPrice, anchorPrice);
    }

    /**
     * @notice Test whether the reported price is within the valid bounds
     * @param reportedPrice The price to be tested
     * @param anchorPrice The reported price must be within the the valid bounds of this price
     */
    function _isWithinAnchor(uint256 reportedPrice, uint256 anchorPrice) private view returns (bool) {
        if (reportedPrice != 0) {
            // we need to multiply anchorPrice by 1e18 to make the ratio 18 decimals
            uint256 anchorRatio = (anchorPrice * 1e18) / reportedPrice;
            return anchorRatio <= upperBoundRatio && anchorRatio >= lowerBoundRatio;
        }
        return false;
    }

    function getLatestChainlinkData() public view returns (int256, uint256) {
        (, int256 answer,, uint256 updatedAt,) = chainlinkDatafeed.latestRoundData();
        return (convertDecimals(answer, chainlinkDatafeed.decimals(), 18) ,updatedAt);
    }

   function latestAnswer() external view returns (int256 value) {
       (value, ) = readDataFeed();
   }

   function latestTimestamp() external view returns (uint256 timestamp) {
       ( , timestamp) = readDataFeed();
   }
   
   function decimals() external view returns (uint8) {
       return 18;
   }

   function readDataFeed()
       internal
       view
       returns (int256,uint256)
   {
       (int256 api3value,uint256 api3timestamp) = IProxy(api3Proxy).read();
       (int256 latestChainlinkValue, uint256 latestChainlinkTimestamp) = getLatestChainlinkData();

       if(validatePriceWithAnchorPrice(uint256(api3value), uint256(latestChainlinkValue)))
            return (api3value, api3timestamp);
       else 
            return (latestChainlinkValue,latestChainlinkTimestamp);

       // If you have any assumptions about `value` and `timestamp`, make sure
       // to validate them right after reading from the proxy. For example,
       // if the value you are reading is the spot price of an asset, you may
       // want to reject non-positive values...
       // require(value > 0, "Value not positive");
       // ...and if the data feed is being updated with a one day-heartbeat
       // interval, you may want to check for that.
       // require(
       //     timestamp + 1 days > block.timestamp,
       //     "Timestamp older than one day"
       // );
       // Try to be strict about validations, but be wary of:
       // (1) Overly strict validation that may invalidate valid values
       // (2) Mutable validation parameters that are controlled by a trusted
       // party (eliminates the trust-minimization guarantees of first-party
       // oracles)
       // (3) Validation parameters that need to be tuned according to
       // external conditions (if these are forgotten to be handled, it will
       // result in (1), look up the Venus Protocol exploit related to LUNA)

       // After validation, you can implement your contract logic here.
   }       

   function getTokenType() external pure returns (uint256) {
       return 1;
   }    
}