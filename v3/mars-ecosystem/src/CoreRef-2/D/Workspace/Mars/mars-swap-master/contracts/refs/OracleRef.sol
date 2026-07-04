// SPDX-License-Identifier: MIT

pragma solidity ^0.7.6;
pragma experimental ABIEncoderV2;

import "../interfaces/IOracleRef.sol";
import "../interfaces/IMarsSwapPairOracle.sol";
import "./CoreRef.sol";

/// @title Reference to an Oracle
/// @author USDM Protocol
/// @notice Defines some utilities around interacting with the referenced oracle
abstract contract OracleRef is IOracleRef, CoreRef {
    using Decimal for Decimal.D256;

    /// @notice The referenced uniswap oracle price
    IMarsSwapPairOracle public override xmsForUSDMMROracle;

    /// @notice The referenced uniswap oracle price
    IMarsSwapPairOracle public override xmsForUSDMSupplyCapOracle;

    /// @notice OracleRef constructor
    /// @param _core USDM Core to reference
    /// @param _xmsForUSDMMROracle Oracle to reference
    /// @param _xmsForUSDMSupplyCapOracle Oracle to reference
    constructor(
        address _core,
        address _xmsForUSDMMROracle,
        address _xmsForUSDMSupplyCapOracle
    ) CoreRef(_core) {
        _setXMSForUSDMMROracle(_xmsForUSDMMROracle);
        _setXMSForUSDMSupplyCapOracle(_xmsForUSDMSupplyCapOracle);
    }

    /// @notice Sets the referenced oracle
    /// @param _oracle The new oracle to reference
    function setXMSForUSDMMROracle(address _oracle)
        external
        override
        onlyGovernor
    {
        _setXMSForUSDMMROracle(_oracle);
    }

    /// @notice Sets the referenced oracle
    /// @param _oracle The new oracle to reference
    function setXMSForUSDMSupplyCapOracle(address _oracle)
        external
        override
        onlyGovernor
    {
        _setXMSForUSDMSupplyCapOracle(_oracle);
    }

    /// @notice Invert a price
    /// @param price The price to invert
    /// @return The inverted price as a Decimal
    function invert(Decimal.D256 memory price)
        public
        pure
        override
        returns (Decimal.D256 memory)
    {
        return Decimal.one().div(price);
    }

    // USD per XMS
    function getXMSPrice() public view returns (Decimal.D256 memory amountOut) {
        require(
            address(xmsForUSDMMROracle) != address(0),
            "OracleRef::getXMSPrice: No oracle"
        );
        amountOut = xmsForUSDMMROracle.consult(10**xms().decimals());
    }

    function getUSDMSupplyCap() public view returns (uint256 cap) {
        require(
            address(xmsForUSDMSupplyCapOracle) != address(0),
            "OracleRef::getUSDMSupplyCap: No oracle"
        );
        Decimal.D256 memory amountOut =
            xmsForUSDMSupplyCapOracle.consult(10**xms().decimals());

        uint256 totalSupply = xms().totalSupply();
        Decimal.D256 memory xmsFDV = amountOut.mul(totalSupply);
        cap = xmsFDV
            .mul(core().xmsSupportRatioPrecision())
            .div(core().xmsSupportRatio())
            .asUint256();

        cap = cap + getUSDMAmountGovernance();
    }

    function _setXMSForUSDMMROracle(address _oracle) internal {
        xmsForUSDMMROracle = IMarsSwapPairOracle(_oracle);
    }

    function _setXMSForUSDMSupplyCapOracle(address _oracle) internal {
        xmsForUSDMSupplyCapOracle = IMarsSwapPairOracle(_oracle);
    }
}
