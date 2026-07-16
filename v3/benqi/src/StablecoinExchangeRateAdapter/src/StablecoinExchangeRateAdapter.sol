// SPDX-License-Identifier: MIT
pragma solidity 0.8.26;

import "./interfaces/IAggregatorV2V3.sol";

/**
 * @title IERC4626Like
 * @notice Interface for ERC4626-like vault contract
 */
interface IERC4626Like {
    function convertToAssets(uint256 shares) external view returns (uint256);
}

/**
 * @title StablecoinExchangeRateAdapter
 * @notice Exposes a synthetic stablecoin vault share/USD price by scaling $1 with the on-chain vault exchange rate
 * @dev This contract acts as a price feed adapter that provides vault share prices in USD terms
 */
contract StablecoinExchangeRateAdapter is AggregatorV2V3Interface {
    /// @notice The vault contract for exchange rate queries
    IERC4626Like public immutable vault;

    /// @notice Description of this price feed adapter
    string public description;

    /// @notice Number of decimals for the price feed
    uint8 private constant DECIMALS = 8;

    /// @notice Fixed USD price with 8 decimals (1.00000000 USD)
    int256 private constant USD_PRICE = 1e8;

    /**
     * @notice Constructor to initialize the adapter with the vault contract and description
     * @param _vault Address of the vault contract
     * @param _description Description of this price feed
     */
    constructor(address _vault, string memory _description) {
        require(_vault != address(0), "Invalid vault address");
        require(bytes(_description).length > 0, "Description cannot be empty");

        vault = IERC4626Like(_vault);
        description = _description;
    }

    /**
     * @notice Returns the latest round data for vault share/USD price
     * @return roundId The round ID (always 0 for synthetic feeds)
     * @return answer The vault share/USD price
     * @return startedAt Timestamp when the round started (current block timestamp)
     * @return updatedAt Timestamp when the round was updated (current block timestamp)
     * @return answeredInRound The round ID in which the answer was computed (always 0)
     */
    function latestRoundData()
        external
        view
        returns (uint80 roundId, int256 answer, uint256 startedAt, uint256 updatedAt, uint80 answeredInRound)
    {
        // Get the current vault share to asset exchange rate (1 share = X assets)
        uint256 exchangeRate = vault.convertToAssets(1 ether);

        // Calculate vault share/USD price: $1 * (assets per share)
        // Since we're dealing with stablecoins, 1 asset = $1
        answer = USD_PRICE * int256(exchangeRate) / 1 ether;

        // Set synthetic round data
        roundId = 0;
        startedAt = block.timestamp;
        updatedAt = block.timestamp;
        answeredInRound = 0;

        return (roundId, answer, startedAt, updatedAt, answeredInRound);
    }

    /**
     * @notice Returns the latest answer (vault share/USD price)
     * @return The latest price answer
     */
    function latestAnswer() external view returns (int256) {
        uint256 exchangeRate = vault.convertToAssets(1 ether);
        return USD_PRICE * int256(exchangeRate) / 1 ether;
    }

    /**
     * @notice Returns the number of decimals used by this price feed
     * @return The number of decimals (8 decimals like standard Chainlink feeds)
     */
    function decimals() external pure returns (uint8) {
        return DECIMALS;
    }
}
