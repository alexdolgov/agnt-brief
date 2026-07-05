// SPDX-License-Identifier: AGPL-3.0
pragma solidity ^0.8.18;

interface IOracle {
    function getStrategyApr(
        address _strategy,
        int256 _debtChange
    ) external view returns (uint256);
}

contract StakedyBoldOracle {
    address public constant CORE_APR_ORACLE =
        0x1981AD9F44F2EA9aDd2dC4AD7D075c102C70aF92;

    address public constant YBOLD = 0x9F4330700a36B29952869fac9b33f45EEdd8A3d8;

    address public constant STAKED_YBOLD =
        0x23346B04a7f55b8760E5860AA5A77383D63491cD;

    /**
     * @param _strategy The token to get the apr for.
     * @param _delta The difference in debt.
     * @return The expected apr for the strategy represented as 1e18.
     */
    function aprAfterDebtChange(
        address _strategy,
        int256 _delta
    ) external view returns (uint256) {
        require(_strategy == STAKED_YBOLD, "!styBOLD");

        return IOracle(CORE_APR_ORACLE).getStrategyApr(YBOLD, _delta);
    }
}
