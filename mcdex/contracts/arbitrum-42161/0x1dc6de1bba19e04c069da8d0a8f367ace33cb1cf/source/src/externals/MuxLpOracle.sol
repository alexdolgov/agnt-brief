// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.28;
import {IERC20} from "../../lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";

interface IAumReader {
    /// @notice Returns the estimated AUM of the pool in USD.
    function estimatedAumUsd(address pool) external view returns (uint256 aum);
}

contract MuxLpOracle {
    address public immutable aumReader;
    address public immutable pool;

    constructor(address _aumReader, address _pool) {
        aumReader = _aumReader;
        pool = _pool;
    }

    function decimals() external pure returns (uint8) {
        return 18;
    }

    /// @notice Returns the price of the asset in USD.
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
        uint256 aum = IAumReader(aumReader).estimatedAumUsd(pool);
        uint256 supply = IERC20(pool).totalSupply();
        uint256 unitPrice = supply == 0 ? 1e18 : (aum * 1e18) / supply;
        uint256 time = block.timestamp;

        return (0, int256(unitPrice), time, time, 0);
    }
}
