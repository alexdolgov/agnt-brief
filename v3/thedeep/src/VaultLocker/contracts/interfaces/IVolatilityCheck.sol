// SPDX-License-Identifier: BUSL-1.1
pragma solidity >=0.5.0;

interface IVolatilityCheck {
    /**
     * @notice Calculates current volatility by comparing spot, TWAP and auxTWAP prices
     * @param vault Address of the ICHIVault contract
     * @return volatility Current volatility in percentage points (1% = 100)
     */
    function currentVolatility(address vault) external view returns (uint256 volatility);
}
