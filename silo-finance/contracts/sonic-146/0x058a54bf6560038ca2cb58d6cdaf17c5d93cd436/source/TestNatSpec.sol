// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

interface ITestNatSpec {
    /// @param daoFee fee for Dao (top)
    /// @param callBeforeQuote call (top)
    /// @custom:daoFee daoFee desc
    /// @custom:callBeforeQuote callBeforeQuote desc
    struct ConfigData {
        // daoFee fee for Dao
        uint256 daoFee; // daoFee comment
        // callBeforeQuote call
        bool callBeforeQuote; // callBeforeQuote comment
    }

    /// @return a some value A
    /// @return b some value B
    function inheritanceTest() external pure returns (uint a, uint b);
}

contract TestNatSpec is ITestNatSpec {
    /// @inheritdoc ITestNatSpec
    function inheritanceTest() external pure returns (uint a, uint b) {
        return (1e18, 234567891);
    }

    /// @return a some value A
    /// @return b some value B
    function noInheritanceTest() external pure returns (uint a, uint b) {
        return (1e18, 234567891);
    }

    /// @return collateralConfig ConfigData struct
    function getConfigsForSolvency() public pure returns (ConfigData memory collateralConfig) {
        return ConfigData({
            daoFee: 1,
            callBeforeQuote: false
        });
    }
}