// SPDX-License-Identifier: MIT
pragma solidity 0.6.11;

import "./Dependencies/Ownable.sol";
import "./Interfaces/IPriceFeed.sol";
import "./Interfaces/IOracle.sol";
import "./Dependencies/SafeMath.sol";
import "./Dependencies/BaseMath.sol";
import "./Dependencies/LiquidLoansMath.sol";
import "./Dependencies/CheckContract.sol";

/*
* PriceFeed for mainnet deployment, to be connected via a wrapper contract to Primary Oracle as well as 
* a Secondary Oracle contract.
*
* The PriceFeed uses a primary oracle, and a secondary Oracle as fallback. It contains logic for
* switching oracles based on oracle failures, timeouts, and conditions for returning to the primary
* oracle.
*/
contract PriceFeed is Ownable, CheckContract, BaseMath, IPriceFeed {
    using SafeMath for uint256;

    string constant public NAME = "PriceFeed";

    IOracle public primaryOracle;  // Wrapper contract that calls the Primary oracle system
    IOracle public secondaryOracle; // Secondary Oracle contract

    // Maximum time period allowed since Primary's latest round data timestamp, beyond which Primary is considered frozen.
    uint constant public TIMEOUT = 14400;  // 4 hours: 60 * 60 * 4
    
    /* 
    * The maximum relative price difference between two oracle responses allowed in order for the PriceFeed
    * to return to using the Primary oracle. 18-digit precision.
    */
    uint constant public MAX_PRICE_DIFFERENCE_BETWEEN_ORACLES = 5e16; // 5%

    // Maximum deviation allowed between two consecutive Primary oracle prices. 18-digit precision.
    uint constant public MAX_PRICE_DEVIATION_FROM_PREVIOUS_PRICE =  5e17; // 50%

    // The last good price seen from an oracle by LiquidLoans
    uint public lastGoodPrice;

    struct PrimaryOracleResponse {
        bool ifRetrieve;
        uint256 value;
        uint256 timestamp;
        bytes32 reserved;
        bool success;
    }

    struct SecondaryOracleResponse {
        bool ifRetrieve;
        uint256 value;
        uint256 timestamp;
        bytes32 reserved;
        bool success;
    }

    enum Status {
        primaryWorking,
        usingSecondaryPrimaryUntrusted, 
        bothOraclesUntrusted,
        usingSecondaryPrimaryFrozen, 
        usingPrimarySecondaryUntrusted
    }

    // The current status of the PricFeed, which determines the conditions for the next price fetch attempt
    Status public status;

    event LastGoodPriceUpdated(uint _lastGoodPrice);
    event PriceFeedStatusChanged(Status newStatus);

    //--- Dependency setters ---
        
    function setAddresses(
        address _primaryCallerAddress,
        address _secondaryOracleAddress
    )
        external
        onlyOwner
    {
        checkContract(_primaryCallerAddress);
        checkContract(_secondaryOracleAddress);

        primaryOracle = IOracle(_primaryCallerAddress);
        secondaryOracle = IOracle(_secondaryOracleAddress);

        //Explicitly set initial system status
        status = Status.primaryWorking;

        //Get an initial price from Primary to serve as first reference for lastGoodPrice
        PrimaryOracleResponse memory primaryResponse = _getCurrentPrimaryOracleResponse();
        SecondaryOracleResponse memory secondaryResponse = _getCurrentSecondaryResponse();

        require(_bothOraclesLiveAndUnbrokenAndSimilarPrice(primaryResponse, secondaryResponse), 
            "PriceFeed: Oracles must be working and current");

        _storePrimaryPrice(primaryResponse);

        _renounceOwnership();
    }

    //--- Primary response wrapper functions ---
    function _getCurrentPrimaryOracleResponse() internal returns (PrimaryOracleResponse memory primaryResponse) {
        try primaryOracle.getCurrentValue() returns
        (
            bool ifRetrieve,
            uint256 value,
            uint256 _timestampRetrieved,
            bytes32 _reserved
        )
        {
            //If call to Primary succeeds, return the response and success = true
            primaryResponse.ifRetrieve = ifRetrieve;
            primaryResponse.value = value;
            primaryResponse.timestamp = _timestampRetrieved;
            primaryResponse.reserved = _reserved;
            primaryResponse.success = true;

            return (primaryResponse);
        } catch {
            //If call to Primary reverts, return a zero response with success = false
            return (primaryResponse);
        }
    }

    function _getPreviousPrimaryOracleResponse(uint timestamp, bytes32 data) internal returns (PrimaryOracleResponse memory primaryResponse) {
        try primaryOracle.getPreviousValue(timestamp, data) returns
        (
            bool ifRetrieve,
            uint256 value,
            uint256 _timestampRetrieved,
            bytes32 _reserved
        )
        {
            //If call to Primary succeeds, return the response and success = true
            primaryResponse.ifRetrieve = ifRetrieve;
            primaryResponse.value = value;
            primaryResponse.timestamp = _timestampRetrieved;
            primaryResponse.reserved = _reserved;
            primaryResponse.success = true;

            return (primaryResponse);
        } catch {
            //If call to Primary reverts, return a zero response with success = false
            return (primaryResponse);
        }
    }

    function _primaryIsFrozen(PrimaryOracleResponse  memory _primaryResponse) internal view returns (bool) {
        return block.timestamp.sub(_primaryResponse.timestamp) > TIMEOUT;
    }

    function _primaryIsBroken(PrimaryOracleResponse memory _response) internal view returns (bool) {
        //Check for response call reverted
        if (!_response.success) {return true;}
        //ifRetrieve is false, oracle response is invalid
        if (!_response.ifRetrieve) {return true;}
        //Check for an invalid timeStamp that is 0, or in the future
        if (_response.timestamp == 0 || _response.timestamp > block.timestamp) {return true;}
        //Check for zero price
        if (_response.value == 0) {return true;}

        return false;
    }

    function _storePrimaryPrice(PrimaryOracleResponse memory _primaryResponse) internal returns (uint) {
        _storePrice(_primaryResponse.value);
        return _primaryResponse.value;
    }

    function _changeStatus(Status _status) internal {
        status = _status;
        emit PriceFeedStatusChanged(_status);
    }

    function _storePrice(uint _currentPrice) internal {
        lastGoodPrice = _currentPrice;
        emit LastGoodPriceUpdated(_currentPrice);
    }

    /*
    * fetchPrice():
    * Returns the latest price obtained from the Primary Oracle. Called by LiquidLoans functions that require a current price.
    *
    * Also callable by anyone externally.
    *
    * Non-view function - it stores the last good price seen by LiquidLoans.
    *
    * Uses a main oracle (Primary) and a fallback oracle (SecondaryOracle) in case Primary fails. If both fail, 
    * it uses the last good price seen by LiquidLoans.
    *
    */
    function fetchPrice() external override returns (uint) {
        //Get current and previous price data from Primary and current price data from SecondaryOracle
        PrimaryOracleResponse memory primaryResponse = _getCurrentPrimaryOracleResponse();
        PrimaryOracleResponse memory prevPrimaryOracleResponse = _getPreviousPrimaryOracleResponse(primaryResponse.timestamp, primaryResponse.reserved);
        SecondaryOracleResponse memory secondaryResponse = _getCurrentSecondaryResponse();

        //--- CASE 1: System fetched last price from Primary  ---
        if (status == Status.primaryWorking) {
            //If Primary is broken, try SecondaryOracle
            if (_primaryIsBroken(primaryResponse)) {

                //If SecondaryOracle is broken then both oracles are untrusted, so return the last good price
                if (_secondaryIsBroken(secondaryResponse)) {
                    _changeStatus(Status.bothOraclesUntrusted);
                    return lastGoodPrice;
                }
                /*
                * If SecondaryOracle is only frozen but otherwise returning valid data, return the last good price.
                */
                if (_secondaryIsFrozen(secondaryResponse)) {
                    _changeStatus(Status.usingSecondaryPrimaryUntrusted);
                    return lastGoodPrice;
                }
                    
                //If Primary is broken and SecondaryOracle is working, switch to SecondaryOracle and return current SecondaryOracle price
                _changeStatus(Status.usingSecondaryPrimaryUntrusted);
                return _storeSecondaryPrice(secondaryResponse);
            }

            //If Primary is frozen, try SecondaryOracle
            if (_primaryIsFrozen(primaryResponse)) {         

                //If SecondaryOracle is broken too, remember SecondaryOracle broke, and return last good price
                if (_secondaryIsBroken(secondaryResponse)) {
                    _changeStatus(Status.usingPrimarySecondaryUntrusted);
                    return lastGoodPrice;     
                }

                //If SecondaryOracle is frozen or working, remember Primary froze, and switch to SecondaryOracle
                _changeStatus(Status.usingSecondaryPrimaryFrozen);
                
                if (_secondaryIsFrozen(secondaryResponse)) {return lastGoodPrice;}

                //If SecondaryOracle is working, use it
                return _storeSecondaryPrice(secondaryResponse);
            }

            //If Primary price has changed by > 50% between two consecutive rounds, compare it to SecondaryOracle's price
            if (_primaryPriceChangeAboveMax(primaryResponse, prevPrimaryOracleResponse)) {

                //If SecondaryOracle is broken, both oracles are untrusted, and return last good price
                if (_secondaryIsBroken(secondaryResponse)) {
                    _changeStatus(Status.bothOraclesUntrusted);
                    return lastGoodPrice;
                }

                //If SecondaryOracle is frozen, switch to SecondaryOracle and return last good price 
                if (_secondaryIsFrozen(secondaryResponse)) { 
                    _changeStatus(Status.usingSecondaryPrimaryUntrusted);
                    return lastGoodPrice;
                }

                /* 
                * If SecondaryOracle is live and both oracles have a similar price, conclude that Primary's large price deviation between
                * two consecutive rounds was likely a legitmate market price movement, and so continue using Primary 
                */
                if (_bothOraclesSimilarPrice(primaryResponse, secondaryResponse)) {
                    return _storePrimaryPrice(primaryResponse);
                }               

                //If SecondaryOracle is live but the oracles differ too much in price, conclude that Primary's initial price deviation was
                //an oracle failure. Switch to SecondaryOracle, and use SecondaryOracle price

                _changeStatus(Status.usingSecondaryPrimaryUntrusted);
                return _storeSecondaryPrice(secondaryResponse);
            }

            //If Primary is working and SecondaryOracle is broken, remember SecondaryOracle is broken
            if (_secondaryIsBroken(secondaryResponse)) {
                _changeStatus(Status.usingPrimarySecondaryUntrusted);    
            }

            //If Primary is working, return Primary current price (no status change)
            return _storePrimaryPrice(primaryResponse);
        }

        //--- CASE 2: The system fetched last price from SecondaryOracle --- 
        if (status == Status.usingSecondaryPrimaryUntrusted) { 
            //If both SecondaryOracle and Primary are live, unbroken, and reporting similar prices, switch back to Primary
            if (_bothOraclesLiveAndUnbrokenAndSimilarPrice(primaryResponse, secondaryResponse)) {
                _changeStatus(Status.primaryWorking);
                return _storePrimaryPrice(primaryResponse);
            }

            if (_secondaryIsBroken(secondaryResponse)) {
                _changeStatus(Status.bothOraclesUntrusted);
                return lastGoodPrice; 
            }

            /*
            * If SecondaryOracle is only frozen but otherwise returning valid data, just return the last good price.
            */
            if (_secondaryIsFrozen(secondaryResponse)) {return lastGoodPrice;}
                
            //Otherwise, use SecondaryOracle price
            return _storeSecondaryPrice(secondaryResponse);
        }

        //--- CASE 3: Both oracles were untrusted at the last price fetch ---
        if (status == Status.bothOraclesUntrusted) {
            /*
            * If both oracles are now live, unbroken and similar price, we assume that they are reporting
            * accurately, and so we switch back to Primary.
            */
            if (_bothOraclesLiveAndUnbrokenAndSimilarPrice(primaryResponse, secondaryResponse)) {
                _changeStatus(Status.primaryWorking);
                return _storePrimaryPrice(primaryResponse);
            } 

            //Otherwise, return the last good price - both oracles are still untrusted (no status change)
            return lastGoodPrice;
        }

        //--- CASE 4: Using SecondaryOracle, and Primary is frozen ---
        if (status == Status.usingSecondaryPrimaryFrozen) {
            if (_primaryIsBroken(primaryResponse)) {
                //If both Oracles are broken, return last good price
                if (_secondaryIsBroken(secondaryResponse)) {
                    _changeStatus(Status.bothOraclesUntrusted);
                    return lastGoodPrice;
                }

                //If Primary is broken, remember it and switch to using SecondaryOracle
                _changeStatus(Status.usingSecondaryPrimaryUntrusted);

                if (_secondaryIsFrozen(secondaryResponse)) {
                    return lastGoodPrice;
                }

                //If SecondaryOracle is working, return SecondaryOracle current price
                return _storeSecondaryPrice(secondaryResponse);
            }

            if (_primaryIsFrozen(primaryResponse)) {
                //if Primary is frozen and SecondaryOracle is broken, remember SecondaryOracle broke, and return last good price
                if (_secondaryIsBroken(secondaryResponse)) {
                    _changeStatus(Status.usingPrimarySecondaryUntrusted);
                    return lastGoodPrice;
                }

                //If both are frozen, just use lastGoodPrice
                if (_secondaryIsFrozen(secondaryResponse)) {
                    return lastGoodPrice;
                }

                //if Primary is frozen and SecondaryOracle is working, keep using SecondaryOracle (no status change)
                return _storeSecondaryPrice(secondaryResponse);
            }

            //if Primary is live and SecondaryOracle is broken, remember SecondaryOracle broke, and return Primary price
            if (_secondaryIsBroken(secondaryResponse)) {
                _changeStatus(Status.usingPrimarySecondaryUntrusted);
                return _storePrimaryPrice(primaryResponse);
            }

            //If Primary is live and SecondaryOracle is frozen, just use last good price (no status change) since we have no basis for comparison
            if (_secondaryIsFrozen(secondaryResponse)) {
                return lastGoodPrice;
            }

            //If Primary is live and SecondaryOracle is working, compare prices. Switch to Primary
            //if prices are within 5%, and return Primary price.
            if (_bothOraclesSimilarPrice(primaryResponse, secondaryResponse)) {
                _changeStatus(Status.primaryWorking);
                return _storePrimaryPrice(primaryResponse);
            }

            //Otherwise if Primary is live but price not within 5% of SecondaryOracle, distrust Primary, and return SecondaryOracle price
            _changeStatus(Status.usingSecondaryPrimaryUntrusted);
            return _storeSecondaryPrice(secondaryResponse);
        }

        //--- CASE 5: Using Primary, SecondaryOracle is untrusted ---
        if (status == Status.usingPrimarySecondaryUntrusted) {
            //If Primary breaks, now both oracles are untrusted
            if (_primaryIsBroken(primaryResponse)) {
                _changeStatus(Status.bothOraclesUntrusted);
                return lastGoodPrice;
            }

            //If Primary is frozen, return last good price (no status change)
            if (_primaryIsFrozen(primaryResponse)) {
                return lastGoodPrice;
            }

            //If Primary and SecondaryOracle are both live, unbroken and similar price, switch back to primaryWorking and return Primary price
            if (_bothOraclesLiveAndUnbrokenAndSimilarPrice(primaryResponse, secondaryResponse)) {
                _changeStatus(Status.primaryWorking);
                return _storePrimaryPrice(primaryResponse);
            }

            //If Primary is live but deviated >50% from it's previous price and SecondaryOracle is still untrusted, switch 
            //to bothOraclesUntrusted and return last good price
            if (_primaryPriceChangeAboveMax(primaryResponse, prevPrimaryOracleResponse)) {
                _changeStatus(Status.bothOraclesUntrusted);
                return lastGoodPrice;
            }

            //Otherwise if Primary is live and deviated <50% from it's previous price and SecondaryOracle is still untrusted, 
            //return Primary price (no status change)
            return _storePrimaryPrice(primaryResponse);
        }
    }

    function _bothOraclesLiveAndUnbrokenAndSimilarPrice
    (
        PrimaryOracleResponse memory _primaryResponse,
        SecondaryOracleResponse memory _secondaryOracleResponse
    )
        internal
        view
        returns (bool)
    {
        //Return false if either oracle is broken or frozen
        if
        (
            _secondaryIsBroken(_secondaryOracleResponse) ||
            _secondaryIsFrozen(_secondaryOracleResponse) ||
            _primaryIsBroken(_primaryResponse) ||
            _primaryIsFrozen(_primaryResponse)
        )
        {
            return false;
        }

        return _bothOraclesSimilarPrice(_primaryResponse, _secondaryOracleResponse);
    }

    function _bothOraclesSimilarPrice(PrimaryOracleResponse memory _primaryResponse, SecondaryOracleResponse memory _secondaryOracleResponse) internal pure returns (bool) {

        //Get the relative price difference between the oracles. Use the lower price as the denominator, i.e. the reference for the calculation.
        uint minPrice = LiquidLoansMath._min(_primaryResponse.value, _secondaryOracleResponse.value);
        uint maxPrice = LiquidLoansMath._max(_primaryResponse.value, _secondaryOracleResponse.value);
        uint percentPriceDifference = maxPrice.sub(minPrice).mul(DECIMAL_PRECISION).div(minPrice);

        /*
        * Return true if the relative price difference is <= 3%: if so, we assume both oracles are probably reporting
        * the honest market price, as it is unlikely that both have been broken/hacked and are still in-sync.
        */
        return percentPriceDifference <= MAX_PRICE_DIFFERENCE_BETWEEN_ORACLES;
    }

    function _primaryPriceChangeAboveMax(PrimaryOracleResponse memory _currentResponse, PrimaryOracleResponse memory _prevResponse) internal pure returns (bool) {

        uint currentPrice = _currentResponse.value;
        uint prevPrice = _prevResponse.value;

        uint minPrice = LiquidLoansMath._min(currentPrice, prevPrice);
        uint maxPrice = LiquidLoansMath._max(currentPrice, prevPrice);

        /*
        * Use the larger price as the denominator:
        * - If price decreased, the percentage deviation is in relation to the the previous price.
        * - If price increased, the percentage deviation is in relation to the current price.
        */
        uint percentDeviation = maxPrice.sub(minPrice).mul(DECIMAL_PRECISION).div(maxPrice);

        // Return true if price has more than doubled, or more than halved.
        return percentDeviation > MAX_PRICE_DEVIATION_FROM_PREVIOUS_PRICE;
    }

    // --- SecondaryOracle Functions ---
    function _storeSecondaryPrice(SecondaryOracleResponse memory _secondaryOracleResponse) internal returns (uint) {
        _storePrice(_secondaryOracleResponse.value);
        return _secondaryOracleResponse.value;
    }

    function _secondaryIsFrozen(SecondaryOracleResponse  memory _response) internal view returns (bool) {
        return block.timestamp.sub(_response.timestamp) > TIMEOUT;
    }

    function _secondaryIsBroken(SecondaryOracleResponse memory _response) internal view returns (bool) {
        //Check for response call reverted
        if (!_response.success) {return true;}
        //ifRetrieve is false, oracle response is invalid
        if (!_response.ifRetrieve) {return true;}
        //Check for an invalid timeStamp that is 0, or in the future
        if (_response.timestamp == 0 || _response.timestamp > block.timestamp) {return true;}
        //Check for zero price
        if (_response.value == 0) {return true;}

        return false;
    }

    /*
    * Get the response from the secondary oracle
    */
    function _getCurrentSecondaryResponse() internal returns (SecondaryOracleResponse memory _response) {
        try secondaryOracle.getCurrentValue() returns
        (
            bool ifRetrieve,
            uint256 value,
            uint256 _timestampRetrieved,
            bytes32 _reserved
        )
        {
            //If call to Secondary succeeds, return the response and success = true
            _response.ifRetrieve = ifRetrieve;
            _response.value = value;
            _response.timestamp = _timestampRetrieved;
            _response.reserved = _reserved;
            _response.success = true;

            return (_response);
        } catch {
            //If call to Secondary reverts, return a zero response with success = false
            return (_response);
        }
    }

}

// 2025 Liquid Loans