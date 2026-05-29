// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

import "usingtellor/contracts/UsingTellor.sol";

contract TellorPriceFeedWrapper is UsingTellor {
    constructor(address _tellor) UsingTellor(payable(_tellor)) {}

    function latestRoundData()
        public
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        uint256 _updatedAt;
        bytes memory _value;
        int256 price;
        (_value, _updatedAt) = _getDataBefore(_queryId(), block.timestamp - _readDelay());
        price = int256(abi.decode(_value, (uint256)));
        return (0, _normalizePrice(price), _updatedAt, _updatedAt, 0);
    }

    function _queryId() internal view virtual returns (bytes32) {}
    function _readDelay() internal pure virtual returns (uint256) {}
    function _normalizePrice(int256 _price) internal pure virtual returns (int256) {}
}
