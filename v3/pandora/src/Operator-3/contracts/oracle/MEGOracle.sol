// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;
pragma experimental ABIEncoderV2;

import "@chainlink/contracts/src/v0.6/interfaces/AggregatorV3Interface.sol";
import "@openzeppelin/contracts/math/SafeMath.sol";
import "./Operator.sol";
import "../interfaces/IOracle.sol";
import "../interfaces/IPairOracle.sol";

contract MEGOracle is Operator, IOracle {
    using SafeMath for uint256;
    address public oracleMEGBusd;
    address public oracleBusdUsd;
    address public MEG;

    uint256 private constant PRICE_PRECISION = 1e6;

    constructor(
        address _MEG,
        address _oracleMEGBusd,
        address _oracleBusdUsd
    ) public {
        MEG = _MEG;
        oracleMEGBusd = _oracleMEGBusd;
        oracleBusdUsd = _oracleBusdUsd;
    }

    function consult() external view override returns (uint256) {
        uint256 _priceBusdUsd = IOracle(oracleBusdUsd).consult();
        uint256 _priceMEGBusd = IPairOracle(oracleMEGBusd).consult(MEG, PRICE_PRECISION);
        return _priceBusdUsd.mul(_priceMEGBusd).div(PRICE_PRECISION);
    }

    function setOracleBusdUsd(address _oracleBusdUsd) external onlyOperator {
        address old = oracleBusdUsd;
        oracleBusdUsd = _oracleBusdUsd;
        emit OracleBusdUsdChanged(old, _oracleBusdUsd);
    }

    function setOracleMEGBusd(address _oracleMEGBusd) external onlyOperator {
        address old = oracleMEGBusd;
        oracleMEGBusd = _oracleMEGBusd;
        emit OracleMEGBusdChanged(old, _oracleMEGBusd);
    }

    event OracleBusdUsdChanged(address indexed oldOracle, address indexed newOracle);
    event OracleMEGBusdChanged(address indexed oldOracle, address indexed newOracle);
}
