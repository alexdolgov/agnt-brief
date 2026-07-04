// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./Operator.sol";
import "../interfaces/IOracle.sol";
import "../interfaces/IPairOracle.sol";

contract TAUMOracle is Operator, IOracle {
    using SafeMath for uint256;
    address public oracleTAUMBusd;
    address public oracleBusdUsd;
    address public TAUM;

    uint256 private constant PRICE_PRECISION = 1e6;

    constructor(
        address _TAUM,
        address _oracleTAUMBusd,
        address _oracleBusdUsd
    ) public {
        TAUM = _TAUM;
        oracleTAUMBusd = _oracleTAUMBusd;
        oracleBusdUsd = _oracleBusdUsd;
    }

    function consult() external view override returns (uint256) {
        uint256 _priceBusdUsd = IOracle(oracleBusdUsd).consult();
        uint256 _priceTAUMBusd = IPairOracle(oracleTAUMBusd).consult(TAUM, PRICE_PRECISION);
        return _priceBusdUsd.mul(_priceTAUMBusd).div(PRICE_PRECISION);
    }

    function setOracleBusdUsd(address _oracleBusdUsd) external onlyOperator {
        address old = oracleBusdUsd;
        oracleBusdUsd = _oracleBusdUsd;
        emit OracleBusdUsdChanged(old, _oracleBusdUsd);
    }

    function setOracleTAUMBusd(address _oracleTAUMBusd) external onlyOperator {
        address old = oracleTAUMBusd;
        oracleTAUMBusd = _oracleTAUMBusd;
        emit OracleTAUMBusdChanged(old, _oracleTAUMBusd);
    }

    event OracleBusdUsdChanged(address indexed oldOracle, address indexed newOracle);
    event OracleTAUMBusdChanged(address indexed oldOracle, address indexed newOracle);
}
