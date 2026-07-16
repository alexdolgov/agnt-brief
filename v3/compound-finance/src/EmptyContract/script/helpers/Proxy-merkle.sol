// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AccessControl} from "openzeppelin/access/AccessControl.sol";
import {TimelockController} from "openzeppelin/governance/TimelockController.sol";
import {AccessControlUpgradeable} from "openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {ITransparentUpgradeableProxy, TransparentUpgradeableProxy} from "openzeppelin/proxy/transparent/TransparentUpgradeableProxy.sol";

import {DistributeMerkleERC20Upgradeable} from "../../src/distributes/DistributeMerkleERC20.sol";
import {Pauser} from "../../src/Pauser.sol";

import {console2 as console} from "forge-std/console2.sol";

// EmptyContract serves as a dud implementation for the proxy, which lets us point
// to something and deploy the proxy before we deploy the implementation.
// This helps avoid the cyclic dependencies in init.
contract EmptyContract {}

struct Deployments {
    TimelockController proxyAdmin;
    DistributeMerkleERC20Upgradeable distributeMerkle;
    Pauser pauser;
}


struct DeploymentParams {
    address admin;
    address upgrader;
    address manager;

    // DistributeMerkleERC20
    uint256[] merkleUIDs;
    address[] tokens;
    bytes32[] merkleRoots;
    address[] merkleSponsors;
    uint256[] merkleEndTimes;

    // Pauser setup
    address pauser;
    address unpauser;
}

function deployAll(DeploymentParams memory params) returns (Deployments memory) {
    return deployAll(params, msg.sender);
}

/// @notice Deploys all proxy and implementation contract, initializes them and returns a struct containing all the
/// addresses.
/// @dev All upgradeable contracts are deployed using the transparent proxy pattern, with the proxy admin being a
/// timelock controller with `params.upgrader` as proposer and executor, and `params.admin` as timelock admin.
/// The `deployer` will be added as admin, proposer and executer for the duration of the deployment. The permissions are
/// renounced accordingly at the end of the deployment.
/// @param params the configuration to use for the deployment.
/// @param deployer the address executing this function. While this will always be `msg.sender` in deployement scripts,
/// it will need to be set in tests as `prank`s will not affect `msg.sender` in free functions.
function deployAll(DeploymentParams memory params, address deployer) returns (Deployments memory) {
    address[] memory controllers = new address[](2);
    controllers[0] = params.upgrader;
    controllers[1] = deployer;
    TimelockController proxyAdmin =
                new TimelockController({minDelay: 0, admin: deployer, proposers: controllers, executors: controllers});

    // Create empty contract for proxy pointer
    EmptyContract empty = new EmptyContract();
    // Create proxies for all contracts
    Deployments memory ds = Deployments({
        proxyAdmin: proxyAdmin,
        distributeMerkle: DistributeMerkleERC20Upgradeable(payable(address(newProxy(empty, proxyAdmin)))),
        pauser: Pauser(address(newProxy(empty, proxyAdmin)))
    });
    console.log("Implementations: ");
 
    ds.distributeMerkle = initDistributeMerkleERC20(
        proxyAdmin,
        ITransparentUpgradeableProxy(address(ds.distributeMerkle)),
        DistributeMerkleERC20Upgradeable.Init({
            admin: params.admin,
            manager: params.manager,
            uids: params.merkleUIDs,
            tokens: params.tokens,
            merkleRoots: params.merkleRoots,
            sponsors: params.merkleSponsors,
            endTimes: params.merkleEndTimes,
            pauser: address(ds.pauser)
        })
    );
    // Add the provided pauser address from params and the oracle to the PAUSER_ROLE on the pausing contract.
    // This gives the oracle the ability to pause the contracts if the sanity check fails.
    ds.pauser = initPauser(
        proxyAdmin,
        ITransparentUpgradeableProxy(address(ds.pauser)),
        Pauser.Init({
            admin: params.admin,
            pauser: params.pauser,
            unpauser: params.unpauser
        })
    );

    // Renounce all roles, now that we have deployed everything
    // Keep roles only if the deployer was also set as admin or upgrader, repspectively.
    if (deployer != params.admin) {
        proxyAdmin.grantRole(proxyAdmin.TIMELOCK_ADMIN_ROLE(), params.admin);
        proxyAdmin.renounceRole(proxyAdmin.TIMELOCK_ADMIN_ROLE(), deployer);
    }

    if (deployer != params.upgrader) {
        proxyAdmin.renounceRole(proxyAdmin.PROPOSER_ROLE(), deployer);
        proxyAdmin.renounceRole(proxyAdmin.EXECUTOR_ROLE(), deployer);
        proxyAdmin.renounceRole(proxyAdmin.CANCELLER_ROLE(), deployer);
    }

    return ds;
}

function newProxy(EmptyContract empty, TimelockController admin) returns (TransparentUpgradeableProxy) {
    return new TransparentUpgradeableProxy(address(empty), address(admin), "");
}

function scheduleAndExecute(TimelockController controller, address target, uint256 value, bytes memory data) {
    controller.schedule({target: target, value: value, data: data, predecessor: bytes32(0), delay: 0, salt: bytes32(0)});
    controller.execute{value: value}({
        target: target,
        value: value,
        payload: data,
        predecessor: bytes32(0),
        salt: bytes32(0)
    });
}

function upgradeToAndCall(
    TimelockController controller,
    ITransparentUpgradeableProxy proxy,
    address implementation,
    uint256 value,
    bytes memory data
) {
    scheduleAndExecute(
        controller,
        address(proxy),
        value,
        abi.encodeCall(ITransparentUpgradeableProxy.upgradeToAndCall, (implementation, data))
    );
}

function upgradeToAndCall(
    TimelockController controller,
    ITransparentUpgradeableProxy proxy,
    address implementation,
    bytes memory data
) {
    upgradeToAndCall(controller, proxy, implementation, 0, data);
}

function upgradeTo(TimelockController controller, ITransparentUpgradeableProxy proxy, address implementation) {
    scheduleAndExecute(
        controller, address(proxy), 0, abi.encodeCall(ITransparentUpgradeableProxy.upgradeTo, (implementation))
    );
}


function initDistributeMerkleERC20(
    TimelockController proxyAdmin,
    ITransparentUpgradeableProxy proxy,
    DistributeMerkleERC20Upgradeable.Init memory init
) returns (DistributeMerkleERC20Upgradeable) {
    DistributeMerkleERC20Upgradeable impl = new DistributeMerkleERC20Upgradeable();
    console.log("DistributeMerkleERC20Upgradeable Impl:", address(impl));
    upgradeToAndCall(proxyAdmin, proxy, address(impl), abi.encodeCall(DistributeMerkleERC20Upgradeable.initialize, init));
    return DistributeMerkleERC20Upgradeable(payable(address(proxy)));
}

function initPauser(TimelockController proxyAdmin, ITransparentUpgradeableProxy proxy, Pauser.Init memory init)
returns (Pauser)
{
    Pauser impl = new Pauser();
    console.log("Pauser Impl:", address(impl));
    upgradeToAndCall(proxyAdmin, proxy, address(impl), abi.encodeCall(Pauser.initialize, init));
    return Pauser(address(proxy));
}

function grantAndRenounce(AccessControlUpgradeable controllable, bytes32 role, address sender, address newAccount) {
    grantAndRenounce(AccessControl(address(controllable)), role, sender, newAccount);
}

function grantAndRenounce(AccessControl controllable, bytes32 role, address sender, address newAccount) {
    // To prevent reassigning to self and renouncing later leaving the role empty
    if (sender != newAccount) {
        controllable.grantRole(role, newAccount);
        controllable.renounceRole(role, sender);
    }
}

function grantRole(AccessControlUpgradeable controllable, bytes32 role, address newAccount) {
    grantRole(AccessControl(address(controllable)), role, newAccount);
}

function grantRole(AccessControl controllable, bytes32 role, address newAccount) {
    controllable.grantRole(role, newAccount);
}

function renounceRole(AccessControlUpgradeable controllable, bytes32 role, address sender) {
    renounceRole(AccessControl(address(controllable)), role, sender);
}

function renounceRole(AccessControl controllable, bytes32 role, address sender) {
    controllable.renounceRole(role, sender);
}

function grantAllAdminRoles(Deployments memory ds, address newAdmin) {
    grantRole(ds.distributeMerkle, ds.distributeMerkle.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.pauser, ds.pauser.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.proxyAdmin, ds.proxyAdmin.TIMELOCK_ADMIN_ROLE(), newAdmin);
}

// DistributeMerkle
function grantAndRenounceDistributeMerkle(Deployments memory ds, address admin, address sender, address[] memory managers) {
    for (uint256 i; i < managers.length; i++) {
        grantRole(ds.distributeMerkle, ds.distributeMerkle.DISTRIBUTOR_MANAGER_ROLE(), managers[i]);
    }
    renounceRole(ds.distributeMerkle, ds.distributeMerkle.DISTRIBUTOR_MANAGER_ROLE(), sender);
    grantAndRenounce(ds.distributeMerkle, ds.distributeMerkle.DEFAULT_ADMIN_ROLE(), sender, admin);
}

// Pauser
function grantAndRenouncePauser(Deployments memory ds, address admin, address sender, address[] memory pausers, address[] memory unpausers) {
    for (uint256 i; i < pausers.length; i++) {
        grantRole(ds.pauser, ds.pauser.PAUSER_ROLE(), pausers[i]);
    }
    for (uint256 i; i < unpausers.length; i++) {
        grantRole(ds.pauser, ds.pauser.UNPAUSER_ROLE(), unpausers[i]);
    }
    renounceRole(ds.pauser, ds.pauser.PAUSER_ROLE(), sender);
    renounceRole(ds.pauser, ds.pauser.UNPAUSER_ROLE(), sender);
    grantAndRenounce(ds.pauser, ds.pauser.DEFAULT_ADMIN_ROLE(), sender, admin);
}

// ProxyAdmin TimeLock
function grantAndRenounceProxyAdmin(Deployments memory ds, address admin, address sender, address upgrader) {
    grantAndRenounce(ds.proxyAdmin, ds.proxyAdmin.PROPOSER_ROLE(), sender, upgrader);
    grantAndRenounce(ds.proxyAdmin, ds.proxyAdmin.EXECUTOR_ROLE(), sender, upgrader);
    grantAndRenounce(ds.proxyAdmin, ds.proxyAdmin.CANCELLER_ROLE(), sender, upgrader);
    grantAndRenounce(ds.proxyAdmin, ds.proxyAdmin.TIMELOCK_ADMIN_ROLE(), sender, admin);
}
