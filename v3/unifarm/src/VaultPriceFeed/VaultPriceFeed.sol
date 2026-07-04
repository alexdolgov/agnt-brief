pragma solidity 0.6.8;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/solc-0.6/contracts/math/SafeMath.sol";
import "./AggregatorV3Interface.sol";
import "./IVault.sol";
import "./Controllable.sol";

contract VaultPriceFeed is Controllable {
    using SafeMath for uint256;

    mapping(string => address) public feeds;

    modifier valueNotNullCoin(string memory coinName) {
        require(feeds[coinName] != address(0), "key not present");
        _;
    }

    constructor(address _storage) public Controllable(_storage) {}

    function addInstancesOfCoin(
        string memory coinName,
        address aggregatorAddress
    ) public onlyGovernance {
        require(
            aggregatorAddress != address(0),
            "Address shoudn't not be equal to null"
        );
        feeds[coinName] = aggregatorAddress;
    }

    function removeInstanceOfCoin(string memory coinName)
        public
        onlyGovernance
        valueNotNullCoin(coinName)
    {
        delete feeds[coinName];
    }

    function viewCoinAddress(string memory coinName)
        public
        view
        valueNotNullCoin(coinName)
        returns (address)
    {
        return feeds[coinName];
    }

    function getLatestPriceOfCoin(string memory coinName)
        public
        view
        valueNotNullCoin(coinName)
        returns (int256)
    {
        (
            uint80 roundID,
            int256 price,
            uint256 startedAt,
            uint256 timeStamp,
            uint80 answeredInRound
        ) = AggregatorV3Interface(feeds[coinName]).latestRoundData();
        return price;
    }

    function getTotalValueLocked(string memory coinName, address vaultAddress)
        public
        view
        valueNotNullCoin(coinName)
        returns (uint256)
    {
        return
            (uint256)(getLatestPriceOfCoin(coinName)).mul(
                (IVault(vaultAddress).underlyingBalanceWithInvestment())
            );
    }
}
