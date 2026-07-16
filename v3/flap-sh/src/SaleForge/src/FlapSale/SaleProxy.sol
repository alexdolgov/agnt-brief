// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import {ISaleProxy} from "../interfaces/FlapSale/ISaleProxy.sol";
import {ISaleForge, ISaleForgeTypes} from "../interfaces/FlapSale/ISaleForge.sol";
import {Initializable} from "@openzeppelin-contracts-upgradeable/proxy/utils/Initializable.sol";

/// @title SaleProxy
/// @notice Proxy contract for convenient interaction with individual FlapSales
/// @dev Upgradeable contract that forwards participation to SaleForge
contract SaleProxy is ISaleProxy, Initializable {
    /// @notice Token address this proxy is associated with
    address private _token;

    /// @notice SaleForge contract address
    address private _saleForge;

    /// @notice Error thrown when trying to reinitialize
    error AlreadyInitialized();

    /// @notice Initialize the proxy
    /// @param token_ Token address this proxy is associated with
    /// @param saleForge_ SaleForge contract address
    function initialize(address token_, address saleForge_) external initializer {
        _token = token_;
        _saleForge = saleForge_;
    }

    /// @inheritdoc ISaleProxy
    function token() external view override returns (address) {
        return _token;
    }

    /// @inheritdoc ISaleProxy
    function saleForge() external view override returns (address) {
        return _saleForge;
    }

    /// @inheritdoc ISaleProxy
    function getSaleInfo() external view override returns (ISaleForgeTypes.SaleInfo memory saleInfo) {
        return ISaleForge(_saleForge).getSaleInfo(_token);
    }

    /// @inheritdoc ISaleProxy
    receive() external payable override {
        // Forward the ETH to SaleForge via participateThroughProxy
        // The participant is msg.sender
        ISaleForge(_saleForge).participateThroughProxy{value: msg.value}(_token, msg.sender);
    }
}
