// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

interface IBlastPoints {
    function configurePointsOperator(address operator) external;

    function configurePointsOperatorOnBehalf(
        address contractAddress,
        address operator
    ) external;
}

contract ImpermaxOperator {
    IBlastPoints public constant blastPoints =
        IBlastPoints(0x2536FE9ab3F511540F2f9e2eC2A805005C3Dd800);

    constructor(address _pointsOperator) {
        blastPoints.configurePointsOperator(_pointsOperator);
    }
}
