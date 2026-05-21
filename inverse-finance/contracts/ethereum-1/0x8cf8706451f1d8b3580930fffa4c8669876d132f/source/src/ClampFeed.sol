pragma solidity ^0.8.24;

interface IChainlinkFeed {
    function decimals() external view returns (uint8 decimals);

    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 price,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        );

    function latestAnswer() external view returns (int256 price);

    function description() external view returns (string memory description);
}

//Clamp feed that puts a ceiling on the underlying feed at 10 ** decimals
contract ClampFeed is IChainlinkFeed{
    
    uint8 public immutable decimals;
    int256 public immutable maxPrice;
    IChainlinkFeed public immutable feed;

    constructor(address _feed) {
        require(_feed != address(0));
        feed = IChainlinkFeed(_feed);
        decimals = feed.decimals();
        maxPrice = int256(10 ** uint256(feed.decimals()));
    }

    function latestRoundData() external view returns(uint80 roundId, int256 price, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound) {
        (roundId, price, startedAt, updatedAt, answeredInRound) = feed.latestRoundData();
        if(price > maxPrice) price = maxPrice;
    }

    function latestAnswer() external view returns(int256 price) {
        price = feed.latestAnswer();
        if(price > maxPrice) price = maxPrice;
    }

    function description() external view returns(string memory) {
        return string.concat("Clamped ", feed.description());
    }
}
