// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {IERC20} from '@openzeppelin/contracts/interfaces/IERC20.sol';

import {EnumerableSet} from '@openzeppelin/contracts/utils/structs/EnumerableSet.sol';

import {Voter} from 'contracts/Voter.sol';
import {IRamsesV3Pool, IRamsesV3PoolActions} from 'contracts/CL/core/interfaces/IRamsesV3Pool.sol';

contract DustSwapper {
    using EnumerableSet for EnumerableSet.AddressSet;

    error Missing(address token0, address token1);

    Voter immutable voter;
    address public immutable owner;

    EnumerableSet.AddressSet gauges;
    EnumerableSet.AddressSet clPools;

    bool isRunning;
    address _tempToken0;
    address _tempToken1;

    modifier running() {
        isRunning = true;
        _;
        isRunning = false;
    }

    modifier onlyRunning() {
        require(isRunning, 'NotRunning');
        _;
    }
    modifier onlyOwner() {
        require(isRunning, 'OnlyOwner');
        _;
    }

    constructor(address _voter) {
        owner = msg.sender;
        voter = Voter(_voter);
    }

    function getAllGauges() external view returns (address[] memory) {
        return gauges.values();
    }

    function getGauge(uint256 index) external view returns (address) {
        return gauges.at(index);
    }

    function getGaugeLength() external view returns (uint256) {
        return gauges.length();
    }

    function getAllClPools() external view returns (address[] memory) {
        return clPools.values();
    }

    function getClPool(uint256 index) external view returns (address) {
        return clPools.at(index);
    }

    function getClPoolsLength() external view returns (uint256) {
        return clPools.length();
    }

    function updateRecords() public {
        address[] memory _gauges = voter.getAllGauges();

        // Check if there are more gauges than currently recorded
        uint256 oldLength = gauges.length();
        if (oldLength != _gauges.length) {
            uint256 index;
            for (index = oldLength; index < _gauges.length; index++) {
                // add to recorded gauges
                gauges.add(_gauges[index]);

                // add to clPools if CL
                if (voter.isClGauge(_gauges[index])) {
                    clPools.add(voter.poolForGauge(_gauges[index]));
                }
            }
        }
    }

    // isn't view but you can call this with callStatic for viewing purposes
    function findMissing() external running returns (address[] memory _missingTokens) {
        updateRecords();
        _missingTokens = new address[](clPools.length() * 2);

        uint256 missingLength;

        uint256 index;
        for (index = 0; index < clPools.length(); index++) {
            IRamsesV3Pool pool = IRamsesV3Pool(clPools.at(index));
            address token0 = pool.token0();
            _tempToken0 = token0;
            _tempToken1 = pool.token1();

            bool zeroForOne = IERC20(token0).balanceOf(address(this)) > 1;

            if (!_swap(pool, zeroForOne)) {
                _missingTokens[missingLength] = _tempToken0;
                _missingTokens[missingLength + 1] = _tempToken1;
                missingLength = missingLength + 2;
            }
        }

        // trim _missingTokens length if needed
        if (missingLength != _missingTokens.length) {
            assembly ('memory-safe') {
                mstore(_missingTokens, missingLength)
            }
        }
    }

    function swapDust(uint256 start, uint256 end, bool _updateRecords) public running {
        if (_updateRecords) {
            updateRecords();
        }

        if (end > clPools.length()) {
            end = clPools.length();
        }

        uint256 index;
        for (index = start; index < end; index++) {
            IRamsesV3Pool pool = IRamsesV3Pool(clPools.at(index));
            address token0 = pool.token0();
            _tempToken0 = token0;
            _tempToken1 = pool.token1();

            bool zeroForOne = IERC20(token0).balanceOf(address(this)) > 1;

            require(_swap(pool, zeroForOne), Missing(_tempToken0, _tempToken1));
        }
    }

    function _swap(IRamsesV3Pool pool, bool zeroForOne) internal returns (bool _success) {
        address token0 = pool.token0();
        _tempToken0 = token0;
        _tempToken1 = pool.token1();

        (uint160 priceLimit, , , , , , ) = pool.slot0();
        priceLimit = zeroForOne ? priceLimit - 1 : priceLimit + 1;
        (_success, ) = address(pool).call(
            abi.encodeCall(IRamsesV3PoolActions.swap, (address(this), zeroForOne, 1, priceLimit, ''))
        );
    }

    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external onlyRunning {
        if (amount0Delta > 0) {
            IERC20(_tempToken0).transfer(msg.sender, uint256(amount0Delta));
        }

        if (amount1Delta > 0) {
            IERC20(_tempToken1).transfer(msg.sender, uint256(amount1Delta));
        }
    }

    function sweep(address _token) external onlyOwner {
        IERC20(_token).transfer(msg.sender, IERC20(_token).balanceOf(address(this)));
    }
}
