// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.
pragma solidity 0.8.17;

import { Errors } from "src/utils/Errors.sol";
import { Ownable2Step } from "src/access/Ownable2Step.sol";
import { IStatsCalculator } from "src/interfaces/stats/IStatsCalculator.sol";
import { IIncentiveStatsCalculator } from "src/interfaces/stats/IIncentiveStatsCalculator.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IStatsCalculatorRegistry } from "src/interfaces/stats/IStatsCalculatorRegistry.sol";
import { EnumerableSet } from "openzeppelin-contracts/utils/structs/EnumerableSet.sol";

contract ChainlinkStatsUpkeepV4 is Ownable2Step {
    using EnumerableSet for EnumerableSet.AddressSet;

    EnumerableSet.AddressSet private _filteredCalculators;

    uint256 public maxPerCheck = 10;
    address public constant CVX_TOKEN = 0x4e3FBD56CD56c3e72c1403e103b45Db9da5B9D2B;
    address public constant AURA_TOKEN = 0xC0c293ce456fF0ED870ADd98a0828Dd4d2903DBF;

    function checkUpkeep(
        bytes calldata checkData
    ) external view returns (bool upkeepNeeded, bytes memory performData) {
        // Get the current hour in UTC
        // slither-disable-next-line weak-prng, timestamp
        uint256 currentHourUTC = (block.timestamp / 3600) % 24;
        ISystemRegistry systemRegistry = ISystemRegistry(abi.decode(checkData, (address)));
        IStatsCalculatorRegistry statsCalcRegistry = systemRegistry.statsCalculatorRegistry();
        // slither-disable-next-line unused-return
        (, address[] memory addresses) = statsCalcRegistry.listCalculators();
        uint256 len = addresses.length;

        address[] memory found = new address[](len);
        uint256 count = 0;

        for (uint256 i = 0; i < len; ++i) {
            if (_filteredCalculators.contains(addresses[i])) {
                continue;
            }

            IStatsCalculator calc = IStatsCalculator(addresses[i]);
            bool shouldCheck = false;

            // Check if the calculator has platformToken() function
            try IIncentiveStatsCalculator(address(calc)).platformToken() returns (address platformToken) {
                if (platformToken == CVX_TOKEN || platformToken == AURA_TOKEN) {
                    // For CVX or AURA, check every 6 hours, 2 hour window
                    // slither-disable-next-line weak-prng, timestamp
                    shouldCheck = currentHourUTC % 6 <= 1;
                } else {
                    // For others, check between 4-8 AM UTC
                    // slither-disable-next-line weak-prng, timestamp
                    shouldCheck = currentHourUTC >= 4 && currentHourUTC <= 8;
                }
            } catch {
                // If platformToken() doesn't exist, use the default 4-8 AM UTC window
                // slither-disable-next-line weak-prng, timestamp
                shouldCheck = currentHourUTC >= 4 && currentHourUTC <= 8;
            }

            if (shouldCheck) {
                try calc.shouldSnapshot() returns (bool shouldSnapshot) {
                    if (shouldSnapshot) {
                        ++count;
                        found[i] = address(calc);
                    }
                } catch { }
            }
        }

        uint256 actualLen = count > maxPerCheck ? maxPerCheck : count;
        address[] memory trimmed = new address[](actualLen);
        uint256 ix = 0;
        for (uint256 i = 0; i < len && ix < actualLen; ++i) {
            if (found[i] != address(0)) {
                trimmed[ix] = found[i];
                ++ix;
            }
        }
        upkeepNeeded = actualLen > 0;
        performData = abi.encode(trimmed);
    }

    function performUpkeep(
        bytes calldata performData
    ) external {
        (address[] memory addrs) = abi.decode(performData, (address[]));
        for (uint256 i = 0; i < addrs.length;) {
            IStatsCalculator calc = IStatsCalculator(addrs[i]);
            calc.snapshot();

            unchecked {
                ++i;
            }
        }
    }

    function getFilteredList() external view returns (address[] memory) {
        return _filteredCalculators.values();
    }

    function addToFilterList(
        address[] memory adds
    ) external onlyOwner {
        uint256 len = adds.length;

        Errors.verifyNotZero(len, "adds");

        for (uint256 i = 0; i < len; ++i) {
            _filteredCalculators.add(adds[i]);
        }
    }

    function removeFromFilterList(
        address[] memory adds
    ) external onlyOwner {
        uint256 len = adds.length;

        Errors.verifyNotZero(len, "adds");

        for (uint256 i = 0; i < len; ++i) {
            _filteredCalculators.remove(adds[i]);
        }
    }

    function setMaxPerCheck(
        uint256 newValue
    ) external onlyOwner {
        Errors.verifyNotZero(newValue, "newValue");

        // slither-disable-next-line events-maths
        maxPerCheck = newValue;
    }
}
