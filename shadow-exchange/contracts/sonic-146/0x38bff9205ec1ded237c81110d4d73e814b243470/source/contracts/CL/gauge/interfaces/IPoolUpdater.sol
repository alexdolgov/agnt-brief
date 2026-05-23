// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.0;

import {IVoter} from "contracts/interfaces/IVoter.sol";
import {INonfungiblePositionManager} from "contracts/CL/periphery/interfaces/INonfungiblePositionManager.sol";

interface IPoolUpdater {
    struct SeedData {
        address pool;
        address token0;
        address token1;
        uint256 amount0;
        uint256 amount1;
    }

    ////////////////////
    // View Functions //
    ////////////////////

    function voter() external view returns (IVoter);

    function nfpManager() external view returns (INonfungiblePositionManager);

    function isSeeded(address pool) external view returns (bool);

    function findMissing() external view returns (address[] memory _missingTokens);

    function findNotUpdated() external view returns (address[] memory pools);

    function poolToNfp(address clPool) external view returns (uint256);

    function getAllGauges() external view returns (address[] memory);

    function getGauge(uint256 index) external view returns (address);

    function getGaugeLength() external view returns (uint256);

    function getAllClPools() external view returns (address[] memory);

    function getClPool(uint256 index) external view returns (address);

    function getClPoolsLength() external view returns (uint256);

    //////////////////////
    // Seed and Updates //
    //////////////////////

    function updateRecords() external;

    function seed(uint256 start, uint256 end) external returns (SeedData[] memory failedSeeds);
    function seed(address pool) external;

    function seed(address pool, bool revertOnFailure) external returns (bool success, SeedData memory seedData);

    function updatePools(uint256 start, uint256 end, bool _updateRecords, bool force)
        external
        returns (uint256[] memory, address[] memory);

    function updatePool(address _pool) external;

    ///////////////
    // Callbacks //
    ///////////////

    function uniswapV3SwapCallback(
        int256 amount0Delta,
        int256 amount1Delta,
        bytes calldata //data
    ) external;

    function onERC721Received(address operator, address from, uint256 tokenId, bytes calldata data)
        external
        pure
        returns (bytes4 retval);

    ///////////////////////
    // AccessHub Actions //
    ///////////////////////

    function sweep(address _token) external;

    function execute(address _target, bytes calldata _payload) external returns (bytes memory _returndata);
}
