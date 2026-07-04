// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

interface IBeamswapV3Pool {
    function protocolFees()
        external
        view
        returns (uint128 token0, uint128 token1);

    function setLmPool(address lmPool) external;

    function collectProtocol(
        address recipient,
        uint128 amount0Requested,
        uint128 amount1Requested
    ) external returns (uint128 amount0, uint128 amount1);

    function setFeeProtocol(uint8 feeProtocol0, uint8 feeProtocol1) external;

    function token0() external view returns (address);

    function token1() external view returns (address);

    function fee() external view returns (uint24);
}
