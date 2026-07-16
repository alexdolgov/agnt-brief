// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import {IAccountableStrategy} from "../interfaces/IAccountableStrategy.sol";
import {OpenTermInitParams} from "../interfaces/IAccountableOpenTerm.sol";

import {FailedDeployment} from "../constants/Errors.sol";
import {StrategyFactoryBase} from "./StrategyFactoryBase.sol";
import {AccountableOpenTerm} from "../strategies/AccountableOpenTerm.sol";
import {IOpenTermFactory, OpenTermFactoryParams} from "../interfaces/IStrategyFactory.sol";

import {Create2} from "@openzeppelin/contracts/utils/Create2.sol";
import {ERC1967Proxy} from "@openzeppelin/contracts/proxy/ERC1967/ERC1967Proxy.sol";

/// @title OpenTermFactory
/// @notice Factory contract for creating and managing open term loans
contract OpenTermFactory is IOpenTermFactory, StrategyFactoryBase {
    /// @notice Initializes the factory with a globals address
    /// @param globals_ The initial globals address
    constructor(address globals_, address owner_) StrategyFactoryBase(globals_, owner_) {}

    /// @inheritdoc IOpenTermFactory
    function createOpenTermLoan(OpenTermFactoryParams memory params)
        external
        whenNotPaused
        onlyVerified
        onlyWhitelistedAsset(params.asset)
        returns (address strategyProxy, address vault)
    {
        bytes memory strategyInitData = abi.encode(
            strategyImplementation,
            abi.encodeCall(
                AccountableOpenTerm.initialize,
                (
                    OpenTermInitParams({
                        asset: params.asset,
                        globals: globals,
                        feeManager: feeManager,
                        investmentManager: params.investmentManager,
                        permissionLevel: params.permissionLevel,
                        sharesTransferable: params.sharesTransferable,
                        name: params.name,
                        symbol: params.symbol
                    })
                )
            )
        );
        bytes memory strategyProxyBytecode = abi.encodePacked(type(ERC1967Proxy).creationCode, strategyInitData);
        strategyProxy = Create2.deploy(0, params.salt, strategyProxyBytecode);
        if (strategyProxy == address(0)) revert FailedDeployment(ZERO_LOAN_PROXY_ADDRESS);

        vault = IAccountableStrategy(strategyProxy).vault();
        if (vault == address(0)) revert FailedDeployment(NO_VAULT);

        strategyProxies.push(strategyProxy);
        strategyVaults[strategyProxy] = vault;

        emit OpenTermCreated(strategyProxy, vault, params.investmentManager);
    }
}
