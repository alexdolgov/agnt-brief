// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

/*
 * InverseWETHChainlinkAdapter (a.k.a. TOKEN/ETH adapter)
 * ──────────────────────────────────────────────────────────
 * Combines **TOKEN / USD** and **ETH / USD** Chainlink feeds into a
 * **TOKEN / ETH** price with 18‑decimals precision.
 *
 * Inherits staleness checks and Arbitrum‑sequencer validation from
 * `ValidatedChainlinkAdapterWithSequencer`.
 *
 * Usage example: RDNT price feed (USD) + ETH/USD feed → RDNT/ETH quote.
 */

import {IAggregatorV2V3} from "../../interfaces/IAggregatorV2V3.sol";
import {ValidatedChainlinkAdapterWithSequencer} from "./ValidatedChainlinkAdapterWithSequencer.sol";

contract InverseWETHChainlinkAdapter is ValidatedChainlinkAdapterWithSequencer {
    // Override decimals to 18 for TOKEN/ETH price
    /// @notice Returns 18 decimals for TOKEN/ETH price.
    /// @inheritdoc IAggregatorV2V3
    function decimals() external pure override returns (uint8) {
        return 18; // TOKEN/ETH price is always 18 decimals
    }

    /// @notice token/USD feed passed to BaseChainlinkAdapter as `chainlinkFeed`.
    /// @notice ethUsdFeed gives ETH price in USD (e.g., 8‑dec).
    IAggregatorV2V3 public immutable ethUsdFeed;

    constructor(address _tokenUsdFeed, address _ethUsdFeed, uint256 _heartbeat)
        ValidatedChainlinkAdapterWithSequencer(_tokenUsdFeed, _heartbeat)
    {
        ethUsdFeed = IAggregatorV2V3(_ethUsdFeed);
    }

    /**
     * @notice Returns TOKEN price in ETH, scaled to **18 decimals** (1e18 = 1 ETH).
     * @dev Combines TOKEN/USD and ETH/USD feeds → TOKEN/ETH.
     */
    function latestAnswer() external view override returns (int256 price) {
        // Sequencer + staleness check for Arbitrum L2
        checkSequencerFeed();

        // --- TOKEN / USD ---------------------------------------------------
        (, int256 tokenUsd,, uint256 tokenUpdated,) = chainlinkFeed.latestRoundData();
        validate(tokenUsd, tokenUpdated); // inherited heartbeat check

        // --- ETH / USD -----------------------------------------------------
        (, int256 ethUsd,, uint256 ethUpdated,) = ethUsdFeed.latestRoundData();
        validate(ethUsd, ethUpdated);

        require(tokenUsd > 0 && ethUsd > 0, "invalid oracle data");

        // Normalise both quotes to 18 decimals before division.
        uint8 tokenDec = IAggregatorV2V3(address(chainlinkFeed)).decimals();
        uint8 ethDec = ethUsdFeed.decimals();

        // TOKEN/USD scaled to 1e18
        uint256 tokenUsd18 = uint256(tokenUsd) * (10 ** (18 - tokenDec));
        // ETH/USD scaled to 1e18
        uint256 ethUsd18 = uint256(ethUsd) * (10 ** (18 - ethDec));

        // TOKEN/ETH = (TOKEN/USD) / (ETH/USD)
        price = int256((tokenUsd18 * 1e18) / ethUsd18);
    }
}
