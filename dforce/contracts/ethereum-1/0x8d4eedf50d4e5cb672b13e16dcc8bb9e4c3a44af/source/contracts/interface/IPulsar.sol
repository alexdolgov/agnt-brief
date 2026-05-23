//SPDX-License-Identifier: MIT
pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

interface ITWAMM {
    function obtainPairAddress(
        address token0,
        address token1
    ) external view returns (address);

    function longTermSwapTokenToToken(
        address token0,
        address token1,
        uint256 amountIn,
        uint256 numberOfBlockIntervals,
        uint256 deadline
    ) external returns (uint256 orderId);

    function withdrawProceedsFromTermSwapTokenToToken(
        address token0,
        address token1,
        uint256 orderId,
        uint256 deadline
    ) external returns (uint256 proceeds);

    function cancelTermSwapTokenToToken(
        address token0,
        address token1,
        uint256 orderId,
        uint256 deadline
    ) external returns (uint256 unsoldAmount, uint256 purchasedAmount);
}

interface IPair {
    function getPairOrdersAmount() external view returns (uint256);

    function getOrderDetails(
        uint256 orderId
    )
        external
        view
        returns (
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            uint256,
            address,
            address,
            address
        );

    function userIdsCheck(
        address userAddress
    ) external view returns (uint256[] memory);

    function orderIdStatusCheck(uint256 orderId) external view returns (bool);
}
