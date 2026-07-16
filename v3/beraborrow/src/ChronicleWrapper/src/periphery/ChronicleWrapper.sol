// SPDX-License-Identifier: Apache 2
pragma solidity ^0.8.0;

import {IAggregatorV3Interface} from "../../src/interfaces/utils/integrations/IAggregatorV3Interface.sol";
import {IChronicle} from "../../src/interfaces/utils/integrations/IChronicle.sol";

contract ChronicleWrapper is IAggregatorV3Interface {
    /// The Oracle identifier; mostly asset pairs, e.g. ETH/USD
    bytes32 public immutable wat;
    IChronicle public immutable chronicle;
    uint8 immutable _decimals;

    string _description;
    uint80 private currentRoundId = 2;

    struct ChroniclePrice {
        uint256 price;
        uint256 age;
    }

    mapping(uint80 roundId => ChroniclePrice) public roundIdToPrice;
    mapping(address keeper => bool) public isKeeper;

    constructor(address _chronicle, string memory description_) {
        if (_chronicle == address(0)) {
            revert("ChronicleWrapper: 0 value");
        }

        chronicle = IChronicle(_chronicle);
        wat = IChronicle(_chronicle).wat();
        _decimals = 18; // chronicle uses 18 decimals for all its feeds https://docs.chroniclelabs.org/Resources/FAQ/General#how-many-decimals-do-chronicle-oracles-use
        _description = description_;

        (uint256 price, uint256 priceAge) = chronicle.readWithAge();

        roundIdToPrice[1] = ChroniclePrice({price: price, age: priceAge});

        roundIdToPrice[2] = roundIdToPrice[1];
    }

    function storeNewPrice() public {
        (bool shouldStore, uint256 price, uint256 priceAge) = _shouldStoreNewPrice();

        if (shouldStore) {
            ++currentRoundId;

            roundIdToPrice[currentRoundId] = ChroniclePrice({price: price, age: priceAge});
        }
    }

    function shouldStoreNewPrice() public view returns (bool) {
        (bool shouldStore,,) = _shouldStoreNewPrice();
        return shouldStore;
    }

    function getRoundData(uint80 _roundId)
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        ChroniclePrice memory price = roundIdToPrice[_roundId];

        return (_roundId, int256(price.price), price.age, price.age, _roundId);
    }

    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        uint80 currRoundId = currentRoundId;
        (uint256 price, uint256 priceAge) = chronicle.readWithAge();

        if (priceAge != roundIdToPrice[currRoundId].age) {
            ++currRoundId;
        }

        return (currRoundId, int256(price), priceAge, priceAge, currRoundId);
    }

    function decimals() public view returns (uint8) {
        return _decimals;
    }

    function description() public view returns (string memory) {
        return _description;
    }

    function version() public pure returns (uint256) {
        return 1;
    }

    function _shouldStoreNewPrice() private view returns (bool, uint256, uint256) {
        (uint256 price, uint256 priceAge) = chronicle.readWithAge();

        uint256 ageDelta = priceAge - roundIdToPrice[currentRoundId].age;
        bool priceChanged = price != roundIdToPrice[currentRoundId].price;

        return (ageDelta > 0 || priceChanged, price, priceAge);
    }
}
