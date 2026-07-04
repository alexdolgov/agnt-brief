// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.25;


import { IStableJackYT } from "../Interfaces/IStableJackYT.sol";
import { ensureNonzeroAddress } from "../lib/validators.sol";
import { CappedCorrelatedTokenOracle } from "./common/CappedCorrelatedTokenOracle.sol";


/**
 * @title StableJackYTscUSDOracle
 * @author Enclabs
 * @notice This oracle fetches the price of StableJack scUSD Oracle.
 */
contract StableJackYTscUSDOracle is CappedCorrelatedTokenOracle {
    /// @notice Address of scUSD stablejack YT contract
    /// @custom:oz-upgrades-unsafe-allow state-variable-immutable
    IStableJackYT public immutable scUSDYT;
    uint256 public constant INVALID_PRICE = 0;
   
    /// @notice Constructor for the implementation contract.
    /// @custom:oz-upgrades-unsafe-allow constructor
    constructor(
        address _scUSDYT,
        address _scUSD,
        address _resilientOracle,
        uint256 _annualGrowthRate,
        uint256 _snapshotInterval
    ) CappedCorrelatedTokenOracle(_scUSDYT, _scUSD, _resilientOracle, _annualGrowthRate, _snapshotInterval) {
        ensureNonzeroAddress(_scUSDYT);
        ensureNonzeroAddress(_scUSD);
        ensureNonzeroAddress(_resilientOracle);
        scUSDYT = IStableJackYT(_scUSDYT);
    }

    /**
     * @notice Gets the scUSDYT for 1 scUSD
     * @return amount Amount of scUSD
     */
    function _getUnderlyingAmount() internal view override returns (uint256) {
        if (scUSDYT.convertToAssets(1e18) != INVALID_PRICE && !scUSDYT.paused()) return scUSDYT.convertToAssets(1e18);
        revert("invalid YT share ratio");
    }
}
