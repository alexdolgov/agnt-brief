// SPDX-License-Identifier: UNLICENSED
// Copyright (c) 2023 Tokemak Foundation. All rights reserved.

pragma solidity ^0.8.24;

// solhint-disable var-name-mixedcase

import { Errors } from "src/utils/Errors.sol";
import { ISystemRegistry } from "src/interfaces/ISystemRegistry.sol";
import { IPriceOracle } from "src/interfaces/oracles/IPriceOracle.sol";
import { SystemComponent } from "src/SystemComponent.sol";
import { Address } from "openzeppelin-contracts/utils/Address.sol";
import { IERC20Metadata } from "openzeppelin-contracts/token/ERC20/extensions/IERC20Metadata.sol";

/// @title Generic contract that can lookup a price and map it to a base asset
contract PricePerShareEthOracle is SystemComponent, IPriceOracle {
    using Address for address;

    /// =====================================================
    /// Public Vars
    /// =====================================================

    /// @notice Returns the token that can be priced via this contract
    address public immutable tokenToPrice;

    /// @notice Returns the terms of the price queried from the `oracle`
    address public immutable baseToken;

    /// @notice Returns one unit of the `baseToken`
    uint256 public immutable baseTokenOne;

    /// @notice Returns the oracle to query for the tokens price
    address public immutable oracle;

    /// @notice Returns the function to call on the `oracle`
    bytes4 public immutable oracleQueryFn;

    /// =====================================================
    /// Private Vars
    /// =====================================================

    string private description;

    /// =====================================================
    /// Functions - Construction
    /// =====================================================

    constructor(
        ISystemRegistry _systemRegistry,
        string memory _description,
        address _tokenToPrice,
        address _baseToken,
        address _oracle,
        bytes4 _oracleQueryFn
    ) SystemComponent(_systemRegistry) {
        Errors.verifyNotZero(bytes(_description).length, "description");
        Errors.verifyNotZero(_tokenToPrice, "tokenToPrice");
        Errors.verifyNotZero(_baseToken, "baseToken");
        Errors.verifyNotZero(_oracle, "oracle");

        tokenToPrice = _tokenToPrice;
        baseToken = _baseToken;
        baseTokenOne = 10 ** IERC20Metadata(baseToken).decimals();
        oracle = _oracle;
        oracleQueryFn = _oracleQueryFn;
        description = _description;
    }

    /// =====================================================
    /// Functions - External
    /// =====================================================

    /// @inheritdoc IPriceOracle
    function getPriceInEth(
        address token
    ) external returns (uint256) {
        if (token != tokenToPrice) {
            revert Errors.InvalidParam("token");
        }

        bytes memory valueInBaseAssetBytes =
            oracle.functionStaticCall(abi.encodeWithSelector(oracleQueryFn), "priceCallFail");
        uint256 valueInBaseAsset = abi.decode(valueInBaseAssetBytes, (uint256));

        return valueInBaseAsset * systemRegistry.rootPriceOracle().getPriceInEth(baseToken) / baseTokenOne;
    }

    /// @inheritdoc IPriceOracle
    function getDescription() external view override returns (string memory) {
        return description;
    }
}
