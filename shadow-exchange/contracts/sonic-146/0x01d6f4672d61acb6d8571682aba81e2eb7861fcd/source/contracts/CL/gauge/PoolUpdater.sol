// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/interfaces/IERC20.sol";

import {EnumerableSet} from "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";

import {Errors} from "contracts/libraries/Errors.sol";
import {PoolUpdaterStorage} from "contracts/CL/gauge/libraries/PoolUpdaterStorage.sol";
import {LiquidityAmounts} from "contracts/CL/periphery/libraries/LiquidityAmounts.sol";

import {IVoter} from "contracts/interfaces/IVoter.sol";
import {IShadowV3Pool, IShadowV3PoolActions} from "contracts/CL/core/interfaces/IShadowV3Pool.sol";
import {INonfungiblePositionManager} from "contracts/CL/periphery/interfaces/INonfungiblePositionManager.sol";
import {IPoolUpdater} from "contracts/CL/gauge/interfaces/IPoolUpdater.sol";

contract PoolUpdater is IPoolUpdater {
    using EnumerableSet for EnumerableSet.AddressSet;

    IVoter public immutable voter;
    INonfungiblePositionManager public immutable nfpManager;

    int24 internal constant MIN_TICK = -887272;
    int24 internal constant MAX_TICK = -MIN_TICK;

    uint160 internal constant MIN_SQRT_RATIO = 4295128739;
    uint160 internal constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342;

    modifier running() {
        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        $.isRunning = true;
        _;
        $.isRunning = false;
    }

    modifier onlyRunning() {
        require(PoolUpdaterStorage.getStorage().isRunning, Errors.NOT_RUNNING());
        _;
    }

    modifier onlyAccessHub() {
        require(msg.sender == IVoter(voter).accessHub(), Errors.NOT_ACCESSHUB());
        _;
    }

    constructor(address _voter, address _nfpManager) {
        voter = IVoter(_voter);
        nfpManager = INonfungiblePositionManager(payable(_nfpManager));
    }

    ////////////////////
    // View Functions //
    ////////////////////

    function amountForSeed(address pool) public view returns (uint256 amount0, uint256 amount1) {
        (uint160 sqrtRatioX96,,,,,,) = IShadowV3Pool(pool).slot0();

        (amount0, amount1) = LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96, MIN_SQRT_RATIO, MAX_SQRT_RATIO, 1000);

        // round up one wei
        amount0++;
        amount1++;

        // add 500 wei for at least 500 runs (~9.5yrs) of operation
        amount0 += 500;
        amount1 += 500;
    }

    function isSeeded(address pool) public view returns (bool) {
        try nfpManager.ownerOf(PoolUpdaterStorage.getStorage().poolToNfp[pool]) returns (address _owner) {
            // return success if nfp already exists and is owned by this contract
            if (_owner == address(this)) {
                return true;
            }
        } catch (bytes memory) {}

        return false;
    }

    function findMissing() external view returns (address[] memory _missingTokens) {
        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        _missingTokens = new address[]($.clPools.length() * 2);

        uint256 missingLength;

        uint256 index;
        for (index = 0; index < $.clPools.length(); index++) {
            IShadowV3Pool pool = IShadowV3Pool($.clPools.at(index));
            address token0 = pool.token0();
            address token1 = pool.token1();

            if (IERC20(token0).balanceOf(address(this)) == 0) {
                _missingTokens[missingLength] = token0;
                missingLength++;
            }
            if (IERC20(token1).balanceOf(address(this)) == 0) {
                _missingTokens[missingLength] = token1;
                missingLength++;
            }
        }

        // trim _missingTokens length if needed
        if (missingLength != _missingTokens.length) {
            assembly ("memory-safe") {
                mstore(_missingTokens, missingLength)
            }
        }
    }

    function findNotUpdated() public view returns (address[] memory pools) {
        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        uint256 end = $.clPools.length();
        pools = new address[](end);

        uint256 notUpdatedLength = 0;
        uint256 index;
        uint256 period = block.timestamp / (86400 * 7);
        for (index = 0; index < end; index++) {
            IShadowV3Pool pool = IShadowV3Pool($.clPools.at(index));
            if (pool.lastPeriod() != period) {
                pools[notUpdatedLength] = address(pool);
                notUpdatedLength++;
            }
        }

        // trim length if needed
        if (notUpdatedLength != pools.length) {
            assembly ("memory-safe") {
                mstore(pools, notUpdatedLength)
            }
        }
    }

    function poolToNfp(address clPool) external view returns (uint256) {
        return PoolUpdaterStorage.getStorage().poolToNfp[clPool];
    }

    function getAllGauges() external view returns (address[] memory) {
        return PoolUpdaterStorage.getStorage().gauges.values();
    }

    function getGauge(uint256 index) external view returns (address) {
        return PoolUpdaterStorage.getStorage().gauges.at(index);
    }

    function getGaugeLength() external view returns (uint256) {
        return PoolUpdaterStorage.getStorage().gauges.length();
    }

    function getAllClPools() external view returns (address[] memory) {
        return PoolUpdaterStorage.getStorage().clPools.values();
    }

    function getClPool(uint256 index) external view returns (address) {
        return PoolUpdaterStorage.getStorage().clPools.at(index);
    }

    function getClPoolsLength() external view returns (uint256) {
        return PoolUpdaterStorage.getStorage().clPools.length();
    }

    //////////////////////
    // Seed and Updates //
    //////////////////////

    function updateRecords() public {
        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        address[] memory _gauges = voter.getAllGauges();

        // Check if there are more gauges than currently recorded
        uint256 oldLength = $.gauges.length();
        if (oldLength != _gauges.length) {
            uint256 index;
            for (index = oldLength; index < _gauges.length; index++) {
                // add to recorded gauges
                $.gauges.add(_gauges[index]);

                // add to clPools if CL
                if (voter.isClGauge(_gauges[index])) {
                    $.clPools.add(voter.poolForGauge(_gauges[index]));
                }
            }
        }
    }

    function seed(uint256 start, uint256 end) external returns (SeedData[] memory failedSeeds) {
        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        if (end > $.clPools.length()) {
            end = $.clPools.length();
        }

        failedSeeds = new SeedData[](end);
        uint256 failedLength;

        for (uint256 index = start; index < end; index++) {
            address pool = $.clPools.at(index);
            (bool success, SeedData memory seedData) = seed(pool, false);

            if (!success) {
                failedSeeds[failedLength] = seedData;
                failedLength++;
            }
        }

        // trim length if needed
        if (failedLength != failedSeeds.length) {
            assembly ("memory-safe") {
                mstore(failedSeeds, failedLength)
            }
        }

        return failedSeeds;
    }

    function seed(address pool) external {
        seed(pool, true);
    }

    function seed(address pool, bool revertOnFailure) public returns (bool success, SeedData memory seedData) {
        if (isSeeded(pool)) {
            success = true;
            return (success, seedData);
        }

        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        address token0 = IShadowV3Pool(pool).token0();
        address token1 = IShadowV3Pool(pool).token1();

        (uint160 sqrtRatioX96,,,,,,) = IShadowV3Pool(pool).slot0();

        // make sure there is at least some cardinality
        IShadowV3Pool(pool).increaseObservationCardinalityNext(100);

        (uint256 mintAmount0, uint256 mintAmount1) =
            LiquidityAmounts.getAmountsForLiquidity(sqrtRatioX96, MIN_SQRT_RATIO, MAX_SQRT_RATIO, 1000);
        mintAmount0++; // round up one wei
        mintAmount1++; // round up one wei

        seedData.pool = address(pool);
        seedData.token0 = token0;
        seedData.token1 = token1;
        seedData.amount0 = mintAmount0 + 500; // add 500 wei for at least 500 runs (~9.5yrs) of operation
        seedData.amount1 = mintAmount1 + 500; // add 500 wei for at least 500 runs (~9.5yrs) of operation

        try IERC20(token0).transferFrom(msg.sender, address(this), seedData.amount0) returns (bool) {}
        catch (bytes memory) {
            if (revertOnFailure) {
                revert Errors.TRANSFER_FROM_FOR_SEEDING_FAILED(token0, seedData.amount0);
            } else {
                return (false, seedData);
            }
        }

        try IERC20(token1).transferFrom(msg.sender, address(this), seedData.amount1) returns (bool) {}
        catch (bytes memory) {
            if (revertOnFailure) {
                revert Errors.TRANSFER_FROM_FOR_SEEDING_FAILED(token1, seedData.amount1);
            } else {
                return (false, seedData);
            }
        }

        IERC20(token0).approve(address(nfpManager), mintAmount0);
        IERC20(token1).approve(address(nfpManager), mintAmount1);

        int24 tickSpacing = IShadowV3Pool(pool).tickSpacing();

        // mint and update nfp tokenId for pool
        try nfpManager.mint(
            INonfungiblePositionManager.MintParams({
                token0: token0,
                token1: token1,
                tickSpacing: tickSpacing,
                tickLower: MIN_TICK - (MIN_TICK % tickSpacing),
                tickUpper: MAX_TICK - (MAX_TICK % tickSpacing),
                amount0Desired: mintAmount0,
                amount1Desired: mintAmount1,
                amount0Min: 0,
                amount1Min: 0,
                recipient: address(this),
                deadline: block.timestamp + 1
            })
        ) returns (uint256 _tokenId, uint128 _liquidity, uint256, uint256) {
            if (_liquidity > 0) {
                $.poolToNfp[seedData.pool] = _tokenId;
                success = true;
            }
        } catch (bytes memory) {}

        if (!success && revertOnFailure) {
            revert Errors.SEEDING_FAILED();
        }

        return (success, seedData);
    }

    function updatePools(uint256 start, uint256 end, bool _updateRecords, bool force)
        public
        running
        returns (uint256[] memory, address[] memory)
    {
        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        if (block.timestamp > ((block.timestamp / 1 weeks) + 1) * 1 weeks - 1 hours && !force) {
            revert Errors.TOO_EARLY();
        }

        if (_updateRecords) {
            updateRecords();
        }

        if (end > $.clPools.length()) {
            end = $.clPools.length();
        }

        uint256 index;
        uint256 period = block.timestamp / 1 weeks;
        uint256[] memory failedIndex = new uint256[](end - start);
        address[] memory failedPools = new address[](end - start);
        uint256 failedLength;
        bool didUpdate;
        for (index = start; index < end; index++) {
            IShadowV3Pool pool = IShadowV3Pool($.clPools.at(index));
            if (pool.lastPeriod() == period && !force) {
                continue;
            }
            address token0 = pool.token0();
            $._tempToken0 = token0;
            $._tempToken1 = pool.token1();

            bool zeroForOne = IERC20(token0).balanceOf(address(this)) > 1;

            // try update
            bool success = _update(pool, zeroForOne);

            // if first update fails, flip zeroForOne and try again
            if (!success) {
                success = _update(pool, !zeroForOne);

                // if it still fails, record it as a failed pair and report in the return data, don't revert
                if (!success) {
                    failedIndex[failedLength] = index;
                    failedPools[failedLength] = address(pool);
                    failedLength++;
                }
            }

            // records if any swaps were a success
            if (success) {
                didUpdate = true;
            }
        }

        if (!didUpdate && !force) {
            revert Errors.NO_UPDATES();
        }

        // trim length if needed
        if (failedLength != failedIndex.length) {
            assembly ("memory-safe") {
                mstore(failedIndex, failedLength)
                mstore(failedPools, failedLength)
            }
        }

        return (failedIndex, failedPools);
    }

    function updatePool(address _pool) public running {
        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        uint256 period = block.timestamp / 1 weeks;

        IShadowV3Pool pool = IShadowV3Pool(_pool);
        if (pool.lastPeriod() == period) {
            return;
        }

        address token0 = pool.token0();
        $._tempToken0 = token0;
        $._tempToken1 = pool.token1();

        bool zeroForOne = IERC20(token0).balanceOf(address(this)) > 1;

        // try update
        bool success = _update(pool, zeroForOne);

        // if first update fails, flip zeroForOne and try again
        if (!success) {
            success = _update(pool, !zeroForOne);

            // if it still fails, revert
            if (!success) {
                assembly ("memory-safe") {
                    returndatacopy(0, 0, returndatasize())
                    revert(0, returndatasize())
                }
            }
        }
    }

    function _update(IShadowV3Pool pool, bool zeroForOne) internal returns (bool _success) {
        (uint160 priceLimit,,,,,,) = pool.slot0();
        priceLimit = zeroForOne ? priceLimit - 1 : priceLimit + 1;

        (_success,) = address(pool).call(
            abi.encodeCall(IShadowV3PoolActions.swap, (address(this), zeroForOne, 1, priceLimit, ""))
        );
    }

    ///////////////
    // Callbacks //
    ///////////////

    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata //data
    ) external onlyRunning {
        PoolUpdaterStorage.PoolUpdaterState storage $ = PoolUpdaterStorage.getStorage();

        if (amount0Delta > 0) {
            IERC20($._tempToken0).transfer(msg.sender, uint256(amount0Delta));
        }

        if (amount1Delta > 0) {
            IERC20($._tempToken1).transfer(msg.sender, uint256(amount1Delta));
        }
    }

    function onERC721Received(
        address, // operator
        address, // from
        uint256, // tokenId
        bytes calldata // data
    ) external pure returns (bytes4 retval) {
        return this.onERC721Received.selector;
    }

    ///////////////////////
    // AccessHub Actions //
    ///////////////////////

    function sweep(address _token) external onlyAccessHub {
        IERC20(_token).transfer(msg.sender, IERC20(_token).balanceOf(address(this)));
    }

    function execute(address _target, bytes calldata _payload)
        external
        onlyAccessHub
        returns (bytes memory _returndata)
    {
        bool _success;
        (_success, _returndata) = _target.call(_payload);

        if (!_success) {
            assembly {
                returndatacopy(0, 0, returndatasize())
                revert(0, returndatasize())
            }
        }
    }
}
