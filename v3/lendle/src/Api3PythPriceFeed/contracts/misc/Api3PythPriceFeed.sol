// SPDX-License-Identifier: MIT
pragma solidity 0.7.6;
pragma abicoder v2;

import '../interfaces/IPriceFeed.sol';
import {IPyth, PythStructs} from '../interfaces/IPyth.sol';
import '../dependencies/openzeppelin/contracts/SafeMath.sol';

interface IApi3Proxy {
  function read() external view returns (int224 value, uint32 timestamp);
}

/*
 * The Api3PythPriceFeed uses Api3 as primary oracle and Pyth fallback oracle.
 */
contract Api3PythPriceFeed is IPriceFeed {
  using SafeMath for uint256;

  uint256 public constant DECIMAL_PRECISION = 1e18;

  IApi3Proxy public api3Oracle; // Api3 oracle contract
  IPyth public pythOracle; // Pyth oracle contract

  bytes32 public pythPriceId;

  // Use to convert a price answer to an 18-digit precision uint
  uint256 public constant TARGET_DIGITS = 18;

  // Maximum time period allowed since Api3's latest round data timestamp, beyond which Api3 is considered frozen.
  // For stablecoins we recommend 90000, as Api3 updates once per day when there is no significant price movement
  // For volatile assets we recommend 14400 (4 hours)
  uint256 public immutable TIMEOUT;

  // Maximum deviation allowed between two consecutive Api3 oracle prices. 18-digit precision.
  uint256 public constant MAX_PRICE_DEVIATION_FROM_PREVIOUS_ROUND = 5e17; // 50%

  /*
   * The maximum relative price difference between two oracle responses allowed in order for the PriceFeed
   * to return to using the Api3 oracle. 18-digit precision.
   */
  uint256 public constant MAX_PRICE_DIFFERENCE_BETWEEN_ORACLES = 5e16; // 5%

  // The last good price seen from an oracle by Liquity
  uint256 public lastGoodPrice;

  struct Api3Response {
    uint256 answer;
    uint256 timestamp;
    bool success;
  }

  struct PythResponse {
    uint256 answer;
    uint256 timestamp;
    bool success;
    uint32 decimals;
  }

  enum Status {
    api3Working,
    usingPythApi3Untrusted,
    bothOraclesUntrusted,
    usingPythApi3Frozen,
    usingApi3PythUntrusted
  }

  // The current status of the PricFeed, which determines the conditions for the next price fetch attempt
  Status public status;

  event LastGoodPriceUpdated(uint256 _lastGoodPrice);
  event PriceFeedStatusChanged(Status newStatus);

  // --- Dependency setters ---

  constructor(
    IApi3Proxy _api3OracleAddress,
    IPyth _pythOracleAddress,
    bytes32 _pythPriceId,
    uint256 _timeout
  ) {
    api3Oracle = _api3OracleAddress;
    pythOracle = _pythOracleAddress;
    pythPriceId = _pythPriceId;
    TIMEOUT = _timeout;

    // Explicitly set initial system status
    status = Status.api3Working;

    // Get an initial price from Api3 to serve as first reference for lastGoodPrice
    Api3Response memory response = _getCurrentApi3Response();

    require(
      !_api3IsBroken(response) &&
        block.timestamp.sub(response.timestamp) < _timeout,
      "PriceFeed: Api3 must be working and current"
    );

    lastGoodPrice = response.answer;
  }

  // --- Functions ---

  /*
   * fetchPrice():
   * Returns the latest price obtained from the Oracle. Called by Liquity functions that require a current price.
   *
   * Also callable by anyone externally.
   *
   * Non-view function - it stores the last good price seen by Liquity.
   *
   * Uses a main oracle (Api3). If it fails,
   * it uses the last good price seen by Liquity.
   *
   */
  function fetchPrice() external view override returns (uint256) {
    (, uint256 price) = _fetchPrice();
    return price;
  }

  function updatePrice() external override returns (uint256) {
    (Status newStatus, uint256 price) = _fetchPrice();
    lastGoodPrice = price;
    if (status != newStatus) {
      status = newStatus;
      emit PriceFeedStatusChanged(newStatus);
    }
    return price;
  }

  function _fetchPrice() internal view returns (Status, uint256) {
    // Get current and previous price data from Api3, and current price data from Band
    Api3Response memory api3Response = _getCurrentApi3Response();
    PythResponse memory pythResponse = _getCurrentPythResponse();

    // --- CASE 1: System fetched last price from Api3  ---
    if (status == Status.api3Working) {
      // If Api3 is broken, try to get a price from Pyth
      if (_api3IsBroken(api3Response)) {
        // If Pyth is broken then both oracles are untrusted, so return the last good price
        if (_pythIsBroken(pythResponse)) {
            return (Status.bothOraclesUntrusted, lastGoodPrice);
        }
        /*
        * If Pyth is only frozen but otherwise returning valid data, return the last good price.
        */
        if (_pythIsFrozen(pythResponse)) {
          return (Status.usingPythApi3Untrusted, lastGoodPrice);
        }

        // If Api3 is broken and Pyth is working, switch to Pyth and return current Pyth price
        return (Status.usingPythApi3Untrusted, pythResponse.answer);
      }

      // If Api3 is frozen, try Pyth
      if (_api3IsFrozen(api3Response)) {
        // If Pyth is broken too, remember Pyth broke, and return last good price
        if (_pythIsBroken(pythResponse)) {
          return (Status.usingApi3PythUntrusted, lastGoodPrice);
        }

        // If Pyth is frozen or working, remember Api3 froze, and switch to Pyth
        if (_pythIsFrozen(pythResponse)) {return (Status.usingPythApi3Frozen, lastGoodPrice);}

        // If Pyth is working, use it
        return (Status.usingPythApi3Frozen, pythResponse.answer);
      }

      // If Api3 is working and Pyth is broken, remember Pyth is broken
      if (_pythIsBroken(pythResponse)) {
        return (Status.usingApi3PythUntrusted, api3Response.answer);
      }

      // If Api3 is working, return Api3 current price (no status change)
      return (Status.api3Working, api3Response.answer);
    }

    // --- CASE 2: The system fetched last price from Pyth ---
    if (status == Status.usingPythApi3Untrusted) {
      // If both Pyth and Api3 are live, unbroken, and reporting similar prices, switch back to Api3
      if (_bothOraclesLiveAndUnbrokenAndSimilarPrice(api3Response, pythResponse)) {
        return (Status.api3Working, api3Response.answer);
      }

      if (_pythIsBroken(pythResponse)) {
        return (Status.bothOraclesUntrusted, lastGoodPrice);
      }

      /*
      * If Pyth is only frozen but otherwise returning valid data, just return the last good price.
      * Pyth may need to be tipped to return current data.
      */
      if (_pythIsFrozen(pythResponse)) {return (Status.usingPythApi3Untrusted, lastGoodPrice);}

      // Otherwise, use Pyth price
      return (Status.usingPythApi3Untrusted, pythResponse.answer);
    }

    // --- CASE 3: Both oracles were untrusted at the last price fetch ---
    if (status == Status.bothOraclesUntrusted) {
      /*
      * If both oracles are now live, unbroken and similar price, we assume that they are reporting
      * accurately, and so we switch back to Api3.
      */
      if (_bothOraclesLiveAndUnbrokenAndSimilarPrice(api3Response, pythResponse)) {
        return (Status.api3Working, api3Response.answer);
      }

      // Otherwise, return the last good price - both oracles are still untrusted (no status change)
      return (Status.bothOraclesUntrusted, lastGoodPrice);
    }
    
    // --- CASE 4: Using Pyth, and Api3 is frozen ---
    if (status == Status.usingPythApi3Frozen) {
      if (_api3IsBroken(api3Response)) {
        // If both Oracles are broken, return last good price
        if (_pythIsBroken(pythResponse)) {
          return (Status.bothOraclesUntrusted, lastGoodPrice);
        }

        // If Api3 is broken, remember it and switch to using Pyth
        if (_pythIsFrozen(pythResponse)) {
          return (Status.usingPythApi3Untrusted, lastGoodPrice);
        }

        // If Pyth is working, return Pyth current price
        return (Status.usingPythApi3Untrusted, pythResponse.answer);
      }

      if (_api3IsFrozen(api3Response)) {
        // if Api3 is frozen and Pyth is broken, remember Pyth broke, and return last good price
        if (_pythIsBroken(pythResponse)) {
          return (Status.usingApi3PythUntrusted, lastGoodPrice);
        }

        // If both are frozen, just use lastGoodPrice
        if (_pythIsFrozen(pythResponse)) {
          return (Status.usingPythApi3Frozen, lastGoodPrice);
        }

        // if Api3 is frozen and Pyth is working, keep using Pyth (no status change)
        return (Status.usingPythApi3Frozen, pythResponse.answer);
      }

      // if Api3 is live and Pyth is broken, remember Pyth broke, and return Api3 price
      if (_pythIsBroken(pythResponse)) {
        return (Status.usingApi3PythUntrusted, api3Response.answer);
      }

        // If Api3 is live and Pyth is frozen, just use last good price (no status change) since we have no basis for comparison
      if (_pythIsFrozen(pythResponse)) {
        return (Status.usingPythApi3Frozen, lastGoodPrice);
      }

      // If Api3 is live and Pyth is working, compare prices. Switch to Api3
      // if prices are within 5%, and return Api3 price.
      if (_bothOraclesSimilarPrice(api3Response, pythResponse)) {
        return (Status.api3Working, api3Response.answer);
      }

      // Otherwise if Api3 is live but price not within 5% of Pyth, distrust Api3, and return Pyth price
      return (Status.usingPythApi3Untrusted, pythResponse.answer);
    }

    // --- CASE 5: Using Api3, Pyth is untrusted ---
    if (status == Status.usingApi3PythUntrusted) {
      // If Api3 breaks, now both oracles are untrusted
      if (_api3IsBroken(api3Response)) {
        return (Status.bothOraclesUntrusted, lastGoodPrice);
      }

      // If Api3 is frozen, return last good price (no status change)
      if (_api3IsFrozen(api3Response)) {
        return (Status.usingApi3PythUntrusted, lastGoodPrice);
      }

      // If Api3 and Pyth are both live, unbroken and similar price, switch back to api3Working and return Api3 price
      if (_bothOraclesLiveAndUnbrokenAndSimilarPrice(api3Response, pythResponse)) {
        return (Status.api3Working, api3Response.answer);
      }

      // Otherwise if Api3 is live and Pyth is still untrusted,
      // return Api3 price (no status change)
      return (Status.usingApi3PythUntrusted, api3Response.answer);
    }
  }

  // --- Helper functions ---

  /* Api3 is considered broken if its current or previous round data is in any way bad. We check the previous round
   * for two reasons:
   *
   * 1) It is necessary data for the price deviation check in case 1,
   * and
   * 2) Api3 is the PriceFeed's preferred primary oracle - having two consecutive valid round responses adds
   * peace of mind when using or returning to Api3.
   */
  function _api3IsBroken(Api3Response memory _currentResponse) internal view returns (bool) {
    return _badApi3Response(_currentResponse);
  }

  function _badApi3Response(Api3Response memory _response) internal view returns (bool) {
    // Check for response call reverted
    if (!_response.success) {return true;}
    // Check for an invalid timeStamp that is 0, or in the future
    if (_response.timestamp == 0 || _response.timestamp > block.timestamp) {return true;}
    // Check for non-positive price (original value returned from chainlink is int256)
    if (int256(_response.answer) <= 0) {return true;}

    return false;
  }

  function _api3IsFrozen(Api3Response memory _response) internal view returns (bool) {
    return block.timestamp.sub(_response.timestamp) > TIMEOUT;
  }

  function _pythIsBroken(PythResponse memory _response) internal view returns (bool) {
    // Check for response call reverted
    if (!_response.success) {return true;}
    // Check for an invalid timeStamp that is 0, or in the future
    if (_response.timestamp == 0 || _response.timestamp > block.timestamp) {return true;}
    // Check for zero price
    if (_response.answer == 0) {return true;}

    return false;
  }

  function _pythIsFrozen(PythResponse memory _response) internal view returns (bool) {
    return block.timestamp.sub(_response.timestamp) > TIMEOUT;
  }

  function _bothOraclesLiveAndUnbrokenAndSimilarPrice
  (
    Api3Response memory _api3Response,
    PythResponse memory _pythResponse
  )
    internal
    view
    returns (bool)
  {
    // Return false if either oracle is broken or frozen
    if (
      _pythIsBroken(_pythResponse) || _pythIsFrozen(_pythResponse) ||
      _api3IsBroken(_api3Response) || _api3IsFrozen(_api3Response)
    ) {
      return false;
    }

    return _bothOraclesSimilarPrice(_api3Response, _pythResponse);
  }

  function _bothOraclesSimilarPrice(Api3Response memory _api3Response, PythResponse memory _pythResponse) internal pure returns (bool) {
    uint scaledApi3Price = _api3Response.answer;
    uint scaledPythPrice = _pythResponse.answer;

    // Get the relative price difference between the oracles. Use the lower price as the denominator, i.e. the reference for the calculation.
    uint minPrice = (scaledPythPrice < scaledApi3Price) ? scaledPythPrice : scaledApi3Price;
    uint maxPrice = (scaledPythPrice >= scaledApi3Price) ? scaledPythPrice : scaledApi3Price;
    uint percentPriceDifference = maxPrice.sub(minPrice).mul(DECIMAL_PRECISION).div(minPrice);

    /*
    * Return true if the relative price difference is <= 3%: if so, we assume both oracles are probably reporting
    * the honest market price, as it is unlikely that both have been broken/hacked and are still in-sync.
    */
    return percentPriceDifference <= MAX_PRICE_DIFFERENCE_BETWEEN_ORACLES;
  }

  function _scalePythPriceByDigits(uint256 _price, uint32 _digits) internal pure returns (uint256) {
    /*
     * Convert the price returned by the Api3 oracle to an 18-digit decimal for use by Liquity.
     * At date of Liquity launch, Api3 uses an 8-digit price, but we also handle the possibility of
     * future changes.
     */
    uint256 price;
    if (_digits >= TARGET_DIGITS) {
      // Scale the returned price value down to Liquity's target precision
      price = _price.div(10 ** (_digits - TARGET_DIGITS));
    } else if (_digits < TARGET_DIGITS) {
      // Scale the returned price value up to Liquity's target precision
      price = _price.mul(10 ** (TARGET_DIGITS - _digits));
    }
    return price;
  }

  // --- Oracle response wrapper functions ---

  function _getCurrentApi3Response() internal view returns (Api3Response memory response) {
    // Try to get latest price data:
    try api3Oracle.read() returns (
      int224 value,
      uint32 timestamp
    ) {
      // If call to Api3 succeeds, return the response and success = true
      response.answer = uint256(value);
      response.timestamp = timestamp;
      response.success = true;
      return response;
    } catch {
      // If call to Api3 aggregator reverts, return a zero response with success = false
      return response;
    }
  }

  function _getCurrentPythResponse()
    internal
    view
    returns (PythResponse memory response)
  {
    // Try to get latest price data:
    try pythOracle.getPriceUnsafe(pythPriceId) returns (
      PythStructs.Price memory price
    ) {
      uint32 decimals = uint32(price.expo >= 0 ? price.expo : -price.expo);
      // If call to Pyth succeeds, return the response and success = true
      response.answer = _scalePythPriceByDigits(uint256(price.price), decimals);
      response.timestamp = price.publishTime;
      response.decimals = decimals;
      response.success = true;
      return response;
    } catch {
      // If call to Pyth aggregator reverts, return a zero response with success = false
      return response;
    }
  }
}
