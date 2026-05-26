// SPDX-License-Identifier: MIT

pragma solidity >=0.8.0 <0.9.0;

contract SymbolOracleWooOld {

    address public immutable oracle;

    constructor (address oracle_) {
        oracle = oracle_;
    }

    function getPrice() external view returns (uint256) {
        return IWooOracleOld(oracle)._I_();
    }

}

interface IWooOracleOld {
    function _I_() external view returns (uint256);
}