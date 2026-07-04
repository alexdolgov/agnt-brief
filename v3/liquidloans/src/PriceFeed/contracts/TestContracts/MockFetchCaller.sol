// SPDX-License-Identifier: MIT
pragma solidity 0.6.11;
pragma experimental ABIEncoderV2;

import "../Interfaces/IFetchCaller.sol";
import "../Dependencies/IFetch.sol";
import "../Dependencies/SafeMath.sol";
import "../Dependencies/UsingFetch.sol";
/*
* This contract has a single external function that calls Fetch: getFetchCurrentValue(). 
*
* The function is called by the Liquity contract PriceFeed.sol. If any of its inner calls to Fetch revert, 
* this function will revert, and PriceFeed will catch the failure and handle it accordingly.
*
* The function comes from Fetch's own wrapper contract, 'UsingFetch.sol':
* https://github.com/fetchoracle/usingfetch/blob/master/contracts/UsingFetch.sol
*
*/
contract MockFetchCaller is UsingFetch, IFetchCaller {
    using SafeMath for uint256;

    uint256 public lastStoredTimestamp;
    uint256 public lastStoredPrice;

    // --- Mock price data ---
    bool didRetrieve = true; // default to a positive retrieval
    uint private price;
    uint private updateTime;
    bool private revertRequest;

    constructor (address payable _fetchMasterAddress) UsingFetch(_fetchMasterAddress) public {}

    /*
    * getFetchCurrentValue(): identical to getCurrentValue() in UsingFetch.sol
    *
    * @dev Allows the user to get the latest value for the queryId specified
    * @param _queryId is the queryId to look up the value for
    * @return ifRetrieve bool true if it is able to retrieve a value, the value, and the value's timestamp
    * @return value the value retrieved
    * @return _timestampRetrieved the value's timestamp
    */
    function getFetchCurrentValue(bytes32 _queryId)
        external
        override
        returns (
            bool ifRetrieve,
            uint256 value,
            uint256 _timestampRetrieved
        )
    {
        (bytes memory data, uint256 timestamp) = getDataBefore(_queryId, block.timestamp - 15 minutes);
        uint256 _value = abi.decode(data, (uint256));
        if (timestamp == 0 || _value == 0) return (false, _value, timestamp);
        if (timestamp > lastStoredTimestamp) {
            lastStoredTimestamp = timestamp;
            lastStoredPrice = _value;
            return (true, _value, timestamp);
        } else {
            return (true, lastStoredPrice, lastStoredTimestamp);
        }
    }

    /*
    * getFetchPreviousValue(): identical to getFetchCurrentValue() in UsingFetch.sol
    *
    * @dev Allows the user to get the latest value for the queryId specified and the timestamp
    * @param _queryId is the queryId to look up the value for
    * @param _timestamp the previous value of the timestamp to retreive
    * @return ifRetrieve bool true if it is able to retrieve a value, the value, and the value's timestamp
    * @return value the value retrieved
    * @return _timestampRetrieved the value's timestamp
    */
    function getFetchPreviousValue(bytes32, uint256 _timestamp)
        external
        override
        returns (
            bool ifRetrieve,
            uint256 value,
            uint256 _timestampRetrieved
        )
    {
        return (true, price, _timestamp - 1);
    }

    function setPrevPrice(uint _price) external {
        price = _price;
    }
}
// 2023 Liquid Loans