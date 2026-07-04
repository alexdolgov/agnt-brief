//SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.22;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {AccessManagedUpgradeable} from "@openzeppelin/contracts-upgradeable/access/manager/AccessManagedUpgradeable.sol";
import {Initializable} from "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";

import {IBridgeInterface} from "../interfaces/IBridgeInterface.sol";

/**
 * @notice Base contract for BridgeInterfaces.
 */
abstract contract BaseBridgeInterface is IBridgeInterface, Initializable, AccessManagedUpgradeable {
    using SafeERC20 for IERC20;

    // Exposed via auto-generated getter to satisfy IBridgeInterface.registry()
    address public override registry;
    address public override bridgeInfrastructure;

    constructor() {
        _disableInitializers();
    }

    function __BaseBridgeInterface_init(
        address initialAuthority,
        address _registry,
        address _bridgeInfrastructure
    ) internal onlyInitializing {
        if (_registry == address(0)) revert ZeroAddress();
        __AccessManaged_init(initialAuthority);
        __BaseBridgeInterface_init_unchained(_registry, _bridgeInfrastructure);
    }

    function __BaseBridgeInterface_init_unchained(address _registry, address _bridgeInfrastructure) internal onlyInitializing {
        registry = _registry;
        bridgeInfrastructure = _bridgeInfrastructure;
    }

    /// @notice see IBridgeInterface
    function setBridgeInfrastructure(address newInfrastructure) external virtual restricted {
        if (newInfrastructure == address(0)) revert ZeroAddress();
        bridgeInfrastructure = newInfrastructure;
    }

    /// see IBridgeInterface
    function bridgeAsset(
        address tokenIn,
        uint256 amount,
        uint32 dstChainId,
        address dstSafe,
        address tokenOut,
        bytes calldata params
    ) external payable virtual;
}
