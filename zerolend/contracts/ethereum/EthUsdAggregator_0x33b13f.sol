// SPDX-License-Identifier: EXTRACTED
// Contract: EthUsdAggregator
// Address: 0x33b13f46a25d836cc0ce91b370305902ab6cf1be
// Compiler: v0.8.24+commit.e11b9ed9
// Classification: UNVERIFIED FORK — appears to be Aave v3 based on contract name, but may contain ZeroLend modifications. Diff against upstream Aave v3 before assuming standard.
// Source: Etherscan verified (project files only, libraries excluded)
// Extracted: 2026-04-13

// ======================================================================
// FILE: contract.sol
// ======================================================================

//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;


interface IConsumer {
    function latestTimestamp() external view returns (uint256);

    function latestAnswer() external view returns (int256);
}

contract EthUsdAggregator {
    IConsumer public mainConsumer;
    IConsumer public ethUsdConsumer;

    constructor(address _mainConsumer, address _ethUsdConsumer) {
        mainConsumer = IConsumer(_mainConsumer);
        ethUsdConsumer = IConsumer(_ethUsdConsumer);
    }

    function decimals() public view virtual returns (uint8) {
        return 8;
    }

    function description() public pure returns (string memory) {
        return "A port of a chainlink aggregator powered by redstone feeds";
    }

    function version() public pure returns (uint256) {
        return 1;
    }

    function latestAnswer() public view virtual returns (int256) {
        return mainConsumer.latestAnswer() * ethUsdConsumer.latestAnswer() / 1e8;
    }

    function latestTimestamp() public view returns (uint256) {
        return mainConsumer.latestTimestamp();
    }

    function latestRound() public view returns (uint256) {
        // use timestamp as the round id
        return latestTimestamp();
    }

    function getAnswer(uint256) public view returns (int256) {
        return latestAnswer();
    }

    function getTimestamp(uint256) external view returns (uint256) {
        return latestTimestamp();
    }

    function getRoundData(
        uint80 _roundId
    )
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (
            _roundId,
            latestAnswer(),
            latestTimestamp(),
            latestTimestamp(),
            _roundId
        );
    }

    function latestRoundData()
        external
        view
        returns (
            uint80 roundId,
            int256 answer,
            uint256 startedAt,
            uint256 updatedAt,
            uint80 answeredInRound
        )
    {
        return (
            roundId,
            latestAnswer(),
            latestTimestamp(),
            latestTimestamp(),
            roundId
        );
    }
}
