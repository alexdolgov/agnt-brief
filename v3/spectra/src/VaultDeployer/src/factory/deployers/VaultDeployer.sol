// SPDX-License-Identifier: BUSL-1.1
pragma solidity 0.8.22;

import {IDeployer} from "src/interfaces/IDeployer.sol";
import {RegistryEntry, ValueType} from "src/interfaces/IMetaVaultsRegistryV2.sol";
import {IMetaVaultFactory} from "src/interfaces/IMetaVaultFactory.sol";
import {IOwnable} from "src/interfaces/IOwnable.sol";
import {TransparentUpgradeableProxy} from "@openzeppelin/contracts/proxy/transparent/TransparentUpgradeableProxy.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

contract VaultDeployer is IDeployer {
    struct VaultParams {
        uint16 fees;
        address treasury;
        address underlying;
        string vaultName;
        string vaultSymbol;
        string wrapperName;
        string wrapperSymbol;
        address proxyAdmin; // address(0) = use defaultProxyAdmin
    }

    address public immutable asyncVaultImpl;
    address public immutable wrapperImpl;
    address public immutable defaultProxyAdmin;

    constructor(address asyncVaultImpl_, address wrapperImpl_, address defaultProxyAdmin_) {
        if (asyncVaultImpl_ == address(0)) revert("VaultDeployer: no AsyncVault implementation");
        if (wrapperImpl_ == address(0)) revert("VaultDeployer: no MetaVaultWrapper implementation");
        asyncVaultImpl = asyncVaultImpl_;
        wrapperImpl = wrapperImpl_;
        defaultProxyAdmin = defaultProxyAdmin_;
    }

    function deploy(
        address safe,
        address factory,
        bytes calldata params,
        uint256 /* stepIndex — unused, CREATE not CREATE2 */,
        bytes32 /* pipelineId */,
        IMetaVaultFactory.StepResult[] calldata /* previousResults */
    ) external override returns (DeploymentOutput memory output) {
        if (msg.sender != factory) revert OnlyFactory();
        VaultParams memory p = abi.decode(params, (VaultParams));

        (address vaultProxy, address wrapperProxy) = _deployProxies(safe, p);

        // Build output
        output.contracts = new address[](2);
        output.contracts[0] = vaultProxy;
        output.contracts[1] = wrapperProxy;
        output.safeCalls = new IDeployer.SafeCall[](1);
        output.safeCalls[0] = IDeployer.SafeCall({
            to: vaultProxy,
            data: abi.encodeCall(IOwnable.acceptOwnership, ())
        });
        output.registryEntries = new RegistryEntry[](2);
        output.registryEntries[0] = RegistryEntry({
            key: keccak256("core.vault"),
            value: abi.encode(vaultProxy),
            valueType: ValueType.ADDRESS,
            lock: true
        });
        output.registryEntries[1] = RegistryEntry({
            key: keccak256("core.wrapper"),
            value: abi.encode(wrapperProxy),
            valueType: ValueType.ADDRESS,
            lock: true
        });
    }

    function _deployProxies(
        address safe,
        VaultParams memory p
    ) internal returns (address vaultProxy, address wrapperProxy) {
        address admin = p.proxyAdmin != address(0) ? p.proxyAdmin : defaultProxyAdmin;

        // 1. Deploy AsyncVault proxy — initialize with address(this) as owner so that
        //    onlyOwner calls within initialize (e.g. setTreasury) succeed, then transfer
        //    ownership to safe.
        // bootstrapAmount is always 0 — seeding is handled by SeedVaultDeployer
        bytes memory vaultInit = abi.encodeWithSelector(
            bytes4(keccak256("initialize(uint16,address,address,address,uint256,string,string)")),
            p.fees,
            address(this),
            p.treasury,
            IERC20(p.underlying),
            uint256(0),
            p.vaultName,
            p.vaultSymbol
        );
        vaultProxy = address(new TransparentUpgradeableProxy(asyncVaultImpl, admin, vaultInit));
        IOwnable(vaultProxy).transferOwnership(safe);

        // 2. Deploy MetaVaultWrapper proxy — initialize with address(this) as owner, then
        //    transfer ownership to safe.
        bytes memory wrapperInit = abi.encodeWithSelector(
            bytes4(keccak256("initialize(address,address,address,string,string)")),
            address(this),
            vaultProxy,
            p.underlying,
            p.wrapperName,
            p.wrapperSymbol
        );
        wrapperProxy = address(new TransparentUpgradeableProxy(wrapperImpl, admin, wrapperInit));
        IOwnable(wrapperProxy).transferOwnership(safe);
    }
}
