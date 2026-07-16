// SPDX-License-Identifier: MIT
pragma solidity ^0.8.x;

import {IVoter} from "../interfaces/IVoter.sol";
import {IFeeCollector} from "../CL/gauge/interfaces/IFeeCollector.sol";
import {IRamsesV3Pool} from "../CL/core/interfaces/IRamsesV3Pool.sol";

interface IModifiedVoter is IVoter {
    function isClGauge(address) external view returns (bool);
}

interface IMockGauge {
    function pool() external view returns (address);
}

/// @title Automated Fee Notifier
/// @notice Automates protocol fee collection for Ramses CL pools
/// @dev Works in conjunction with FeeCollector contract to batch process fees
contract AutomatedFeeNotifier {
    IModifiedVoter private immutable VOTER;
    IFeeCollector private immutable COLLECTOR;

    /// @notice Initializes the contract with Voter and FeeCollector addresses
    /// @param _voter Address of the Voter contract
    /// @param _collector Address of the FeeCollector contract
    constructor(address _voter, address _collector) {
        VOTER = IModifiedVoter(_voter);
        COLLECTOR = IFeeCollector(_collector);
    }

    /// @notice Processes protocol fees for specified pools
    /// @param _pools Array of pool addresses to collect fees from
    function notify(IRamsesV3Pool[] calldata _pools) external {
        for (uint256 i; i < _pools.length; ++i) {
            COLLECTOR.collectProtocolFees(_pools[i]);
        }
    }

    /// @notice Processes fees for a range of eligible pools
    /// @param _index Starting index in the eligible pairs array
    /// @param _end Ending index (exclusive) in the eligible pairs array
    /// @dev Will adjust _end if it exceeds array bounds
    function blindPush(uint256 _index, uint256 _end) external {
        address[] memory targets = eligiblePairs();
        _end = _end > targets.length ? targets.length : _end;
        require(_index <= targets.length, "Index out of bounds");

        for (; _index < _end; ++_index) {
            COLLECTOR.collectProtocolFees(IRamsesV3Pool(targets[_index]));
        }
    }

    /// @notice Returns pending protocol fees for a specific pool
    /// @param _pool Address of the pool to check
    /// @return _poolID Address of the pool checked
    /// @return _tokens Array of token addresses [token0, token1]
    /// @return _amounts Array of pending fee amounts [amount0, amount1]
    function pendingFees(address _pool)
        external
        view
        returns (address _poolID, address[] memory _tokens, uint128[] memory _amounts)
    {
        _tokens = new address[](2);
        _amounts = new uint128[](2);

        _tokens[0] = IRamsesV3Pool(_pool).token0();
        _tokens[1] = IRamsesV3Pool(_pool).token1();
        (_amounts[0], _amounts[1]) = IRamsesV3Pool(_pool).protocolFees();

        return (_pool, _tokens, _amounts);
    }

    /// @notice Returns array of all eligible CL pool addresses
    /// @dev Filters all gauges to return only CL pool addresses
    /// @return _pairs Array of eligible pool addresses
    function eligiblePairs() public view returns (address[] memory _pairs) {
        address[] memory allGauges = VOTER.getAllGauges();
        address[] memory tempPairs = new address[](allGauges.length);
        uint256 count;

        for (uint256 i; i < allGauges.length; ++i) {
            if (VOTER.isClGauge(allGauges[i])) {
                tempPairs[count++] = IMockGauge(allGauges[i]).pool();
            }
        }

        _pairs = new address[](count);
        for (uint256 i; i < count; ++i) {
            _pairs[i] = tempPairs[i];
        }
    }
}
