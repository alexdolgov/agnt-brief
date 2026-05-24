// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IBlastPoints {
    function configurePointsOperator(address operator) external;
    function configurePointsOperatorOnBehalf(
        address contractAddress,
        address operator
    ) external;
    function updatePointsBalance(
        address account,
        uint256 blastPointsBalance,
        uint256 blastGoldBalance
    ) external;
}
