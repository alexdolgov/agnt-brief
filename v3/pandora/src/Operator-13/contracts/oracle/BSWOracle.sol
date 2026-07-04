// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./Operator.sol";
import "../interfaces/IOracle.sol";
import "../interfaces/IPairOracle.sol";

contract BSWOracle is Operator, IOracle {
    using SafeMath for uint256;
    address public oracleBSWBusd;
    address public oracleBusdUsd;
    address public BSW;

    uint256 private constant PRICE_PRECISION = 1e6;

    constructor(
        address _BSW,
        address _oracleBSWBusd,
        address _oracleBusdUsd
    ) public {
        BSW = _BSW;
        oracleBSWBusd = _oracleBSWBusd;
        oracleBusdUsd = _oracleBusdUsd;
    }

    function consult() external view override returns (uint256) {
        uint256 _priceBusdUsd = IOracle(oracleBusdUsd).consult();
        uint256 _priceBSWBusd = IPairOracle(oracleBSWBusd).consult(BSW, PRICE_PRECISION);
        return _priceBusdUsd.mul(_priceBSWBusd).div(PRICE_PRECISION);
    }

    function setOracleBusdUsd(address _oracleBusdUsd) external onlyOperator {
        address old = oracleBusdUsd;
        oracleBusdUsd = _oracleBusdUsd;
        emit OracleBusdUsdChanged(old, _oracleBusdUsd);
    }

    function setOracleBSWBusd(address _oracleBSWBusd) external onlyOperator {
        address old = oracleBSWBusd;
        oracleBSWBusd = _oracleBSWBusd;
        emit OracleBSWBusdChanged(old, _oracleBSWBusd);
    }

    event OracleBusdUsdChanged(address indexed oldOracle, address indexed newOracle);
    event OracleBSWBusdChanged(address indexed oldOracle, address indexed newOracle);
}
