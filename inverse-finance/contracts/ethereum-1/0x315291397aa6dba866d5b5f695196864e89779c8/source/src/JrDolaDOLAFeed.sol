// SPDX-License-Identifier: MIT License
pragma solidity ^0.8.24;

interface IERC4626 {
    function convertToAssets(uint shares) external view returns (uint);
}

/**
 * @title JrDolaDOLAFeed
 * @notice Chainlink-compatible price feed returning the jrDola/DOLA exchange rate.
 */
contract JrDolaDOLAFeed {

    IERC4626 public immutable jrDola;
    IERC4626 public immutable sDola;
    uint8 public constant decimals = 18;
    string public constant description = "jrDola/DOLA Price Feed";

    constructor(address _jrDola, address _sDola) {
        jrDola = IERC4626(_jrDola);
        sDola = IERC4626(_sDola);
    }

    /**
     * @notice Returns the latest jrDola/DOLA price.
     * @return roundId Always 0
     * @return answer The jrDola/DOLA price with 18 decimals.
     * @return startedAt Always 0 
     * @return updatedAt The current block timestamp.
     * @return answeredInRound Always 0 
     */
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
        return (0, _getPrice(), 0, block.timestamp, 0);
    }

    /**
     * @notice Returns the latest jrDola/DOLA price.
     * @return The jrDola/DOLA price with 18 decimals.
     */
    function latestAnswer() external view returns (int256) {
        return _getPrice();
    }

    /**
     * @dev Computes jrDola.convertToAssets(1e18) * sDola.convertToAssets(1e18) / 1e18
     */
    function _getPrice() internal view returns (int256) {
        uint256 sDolaPerJrDola = jrDola.convertToAssets(1e18);
        uint256 dolaPerSDola = sDola.convertToAssets(1e18);
        return int256(sDolaPerJrDola * dolaPerSDola / 1e18);
    }
}
