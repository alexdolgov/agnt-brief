// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {AccessControl} from "openzeppelin/access/AccessControl.sol";
import {TimelockController} from "openzeppelin/governance/TimelockController.sol";
import {AccessControlUpgradeable} from "openzeppelin-upgradeable/access/AccessControlUpgradeable.sol";
import {ITransparentUpgradeableProxy, TransparentUpgradeableProxy} from "openzeppelin/proxy/transparent/TransparentUpgradeableProxy.sol";

import {DistributeMerkleERC20Upgradeable} from "../../src/distributes/DistributeMerkleERC20.sol";
import {DistributeYieldERC20Upgradeable} from "../../src/distributes/DistributeYieldERC20.sol";
import {AllocateRegister} from "../../src/AllocateRegister.sol";
import {StakingMETH} from "../../src/StakingMETH.sol";
import {StakingMNT} from "../../src/StakingMNT.sol";
import {Pauser} from "../../src/Pauser.sol";

import {console2 as console} from "forge-std/console2.sol";

// EmptyContract serves as a dud implementation for the proxy, which lets us point
// to something and deploy the proxy before we deploy the implementation.
// This helps avoid the cyclic dependencies in init.
contract EmptyContract {}

struct Deployments {
    TimelockController proxyAdmin;
    StakingMNT stakingMNT;
    StakingMETH stakingMETH;
    AllocateRegister allocateRegisterMNT;
    AllocateRegister allocateRegisterMETH;
    DistributeYieldERC20Upgradeable distributeYield;
    DistributeMerkleERC20Upgradeable distributeMerkle;
    Pauser pauser;
}

/// @notice Deployment paramaters for the protocol contract
/// @dev These are mostly externally controlled addresses
/// @param admin the admin of the timelock controller that administers the proxy contracts.
/// @param upgrader the proposer and executor of the timelock controller that administers the proxy contracts.
/// @param manager the manager of the contracts (allowed to access setters, etc.). Using the same manager for all
/// contracts is our default for now but might change in the future.
/// @param pauser the address that can pause the protocol.
/// @param unpauser the address that can unpause the protocol.
/// @param allocatorService the address of the allocator service that can allocate ETH on the staking contract.
/// @param initiatorService the address of the initiator service that can initiate new validators.
/// @param requestCanceller the address of the request canceller that can cancel unfinalized unstake requests.
/// @param depositContract the address of the deposit contract.
/// @param pendingResolver the address that can resolve pending oracle records.
/// @param reporterModifier the address that can modify the reporter set on the oracle quorum manager.
/// @param reporters the addresses of the initial set of reporters on the oracle quorum manager.
/// @param feesReceiver the address that receives the protocol fees.
struct DeploymentParams {
    address admin;
    address upgrader;
    address manager;

    // Staking setup
    address operator;
    address assetMNT;
    address assetMETH;
    uint256 cooldown;
    uint256 minStake;
    uint256 maxStakeSupply;

    // AllocateRegister setup
    address registerManager;
    address registerOperator;

    // DistributeYieldERC20
    uint256[] yieldUIDs;
    address[] yields;
    address[] yieldTokens;
    address[] yieldSponsors;
    uint256[] yieldEndTimes;

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
        stakingMNT: StakingMNT(payable(address(newProxy(empty, proxyAdmin)))),
        stakingMETH: StakingMETH(payable(address(newProxy(empty, proxyAdmin)))),
        allocateRegisterMNT: AllocateRegister(address(newProxy(empty, proxyAdmin))),
        allocateRegisterMETH: AllocateRegister(address(newProxy(empty, proxyAdmin))),
        distributeYield: DistributeYieldERC20Upgradeable(payable(address(newProxy(empty, proxyAdmin)))),
        distributeMerkle: DistributeMerkleERC20Upgradeable(payable(address(newProxy(empty, proxyAdmin)))),
        pauser: Pauser(address(newProxy(empty, proxyAdmin)))
    });
    console.log("Implementations: ");
    // Upgrade and iniitialize contracts
    ds.stakingMNT = initStakingMNT(
        proxyAdmin,
        ITransparentUpgradeableProxy(address(ds.stakingMNT)),
        StakingMNT.Init({
            admin: params.admin,
            operator: params.operator,
            pauser: address(ds.pauser),
            asset: params.assetMNT,
            cooldown: params.cooldown,
            minStake: params.minStake,
            maxStakeSupply: params.maxStakeSupply,
            allocator: address(ds.allocateRegisterMNT)
        })
    );
    ds.stakingMETH = initStakingMETH(
        proxyAdmin,
        ITransparentUpgradeableProxy(address(ds.stakingMETH)),
        StakingMETH.Init({
            admin: params.admin,
            operator: params.operator,
            pauser: address(ds.pauser),
            asset: params.assetMETH,
            cooldown: params.cooldown,
            minStake: params.minStake,
            maxStakeSupply: params.maxStakeSupply,
            allocator: address(ds.allocateRegisterMETH)
        })
    );
    ds.allocateRegisterMNT = initAllocateRegister(
        proxyAdmin,
        ITransparentUpgradeableProxy(address(ds.allocateRegisterMNT)),
        AllocateRegister.Init({
            admin: params.admin,
            manager: params.registerManager,
            operator: params.registerOperator,
            pauser: address(ds.pauser)
        })
    );
    ds.allocateRegisterMETH = initAllocateRegister(
        proxyAdmin,
        ITransparentUpgradeableProxy(address(ds.allocateRegisterMETH)),
        AllocateRegister.Init({
            admin: params.admin,
            manager: params.registerManager,
            operator: params.registerOperator,
            pauser: address(ds.pauser)
        })
    );
    ds.distributeYield = initDistributeYieldERC20(
        proxyAdmin,
        ITransparentUpgradeableProxy(address(ds.distributeYield)),
        DistributeYieldERC20Upgradeable.Init({
            admin: params.admin,
            manager: params.manager,
            uids: params.yieldUIDs,
            yields: params.yields,
            tokens: params.yieldTokens,
            sponsors: params.yieldSponsors,
            endTimes: params.yieldEndTimes,
            pauser: address(ds.pauser)
        })
    );
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

function initStakingMNT(
    TimelockController proxyAdmin,
    ITransparentUpgradeableProxy proxy,
    StakingMNT.Init memory init
) returns (StakingMNT) {
    StakingMNT impl = new StakingMNT();
    console.log("StakingMNT Impl:", address(impl));
    upgradeToAndCall(proxyAdmin, proxy, address(impl), abi.encodeCall(StakingMNT.initialize, init));
    return StakingMNT(payable(address(proxy)));
}

function initStakingMETH(
    TimelockController proxyAdmin,
    ITransparentUpgradeableProxy proxy,
    StakingMETH.Init memory init
) returns (StakingMETH) {
    StakingMETH impl = new StakingMETH();
    console.log("StakingMETH Impl:", address(impl));
    upgradeToAndCall(proxyAdmin, proxy, address(impl), abi.encodeCall(StakingMETH.initialize, init));
    return StakingMETH(payable(address(proxy)));
}

function initAllocateRegister(
    TimelockController proxyAdmin,
    ITransparentUpgradeableProxy proxy,
    AllocateRegister.Init memory init
) returns (AllocateRegister) {
    AllocateRegister impl = new AllocateRegister();
    console.log("AllocateRegister Impl:", address(impl));
    upgradeToAndCall(proxyAdmin, proxy, address(impl), abi.encodeCall(AllocateRegister.initialize, init));
    return AllocateRegister(address(proxy));
}

function initDistributeYieldERC20(
    TimelockController proxyAdmin,
    ITransparentUpgradeableProxy proxy,
    DistributeYieldERC20Upgradeable.Init memory init
) returns (DistributeYieldERC20Upgradeable) {
    DistributeYieldERC20Upgradeable impl = new DistributeYieldERC20Upgradeable();
    console.log("DistributeYieldERC20Upgradeable Impl:", address(impl));
    upgradeToAndCall(proxyAdmin, proxy, address(impl), abi.encodeCall(DistributeYieldERC20Upgradeable.initialize, init));
    return DistributeYieldERC20Upgradeable(payable(address(proxy)));
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
    grantRole(ds.stakingMNT, ds.stakingMNT.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.stakingMETH, ds.stakingMETH.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.allocateRegisterMNT, ds.allocateRegisterMNT.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.allocateRegisterMETH, ds.allocateRegisterMETH.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.distributeYield, ds.distributeYield.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.distributeMerkle, ds.distributeMerkle.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.pauser, ds.pauser.DEFAULT_ADMIN_ROLE(), newAdmin);
    grantRole(ds.proxyAdmin, ds.proxyAdmin.TIMELOCK_ADMIN_ROLE(), newAdmin);
}

// StakingMNT
function grantAndRenounceStakingMNT(Deployments memory ds, address admin, address sender, address[] memory operators) {
    for (uint256 i; i < operators.length; i++) {
        grantRole(ds.stakingMNT, ds.stakingMNT.STAKING_OPERATOR_ROLE(), operators[i]);
    }
    renounceRole(ds.stakingMNT, ds.stakingMNT.STAKING_OPERATOR_ROLE(), sender);
    grantAndRenounce(ds.stakingMNT, ds.stakingMNT.DEFAULT_ADMIN_ROLE(), sender, admin);

}

// StakingMETH
function grantAndRenounceStakingMETH(Deployments memory ds, address admin, address sender, address[] memory operators) {
    for (uint256 i; i < operators.length; i++) {
        grantRole(ds.stakingMETH, ds.stakingMETH.STAKING_OPERATOR_ROLE(), operators[i]);
    }
    renounceRole(ds.stakingMNT, ds.stakingMNT.STAKING_OPERATOR_ROLE(), sender);
    grantAndRenounce(ds.stakingMNT, ds.stakingMNT.DEFAULT_ADMIN_ROLE(), sender, admin);
}

// AllocateRegisterMNT
function grantAndRenounceAllocateRegisterMNT(Deployments memory ds, address admin, address sender, address[] memory managers, address[] memory operators) {
    for (uint256 i; i < managers.length; i++) {
        grantRole(ds.allocateRegisterMNT, ds.allocateRegisterMNT.REGISTER_MANAGER_ROLE(), managers[i]);
    }
    for (uint256 i; i < operators.length; i++) {
        grantRole(ds.allocateRegisterMNT, ds.allocateRegisterMNT.REGISTER_OPERATOR_ROLE(), operators[i]);
    }
    renounceRole(ds.allocateRegisterMNT, ds.allocateRegisterMNT.REGISTER_MANAGER_ROLE(), sender);
    renounceRole(ds.allocateRegisterMNT, ds.allocateRegisterMNT.REGISTER_OPERATOR_ROLE(), sender);
    grantAndRenounce(ds.allocateRegisterMNT, ds.allocateRegisterMNT.DEFAULT_ADMIN_ROLE(), sender, admin);
}

// AllocateRegisterMETH
function grantAndRenounceAllocateRegisterMETH(Deployments memory ds, address admin, address sender, address[] memory managers, address[] memory operators) {
    for (uint256 i; i < managers.length; i++) {
        grantRole(ds.allocateRegisterMETH, ds.allocateRegisterMETH.REGISTER_MANAGER_ROLE(), managers[i]);
    }
    for (uint256 i; i < operators.length; i++) {
        grantRole(ds.allocateRegisterMETH, ds.allocateRegisterMETH.REGISTER_OPERATOR_ROLE(), operators[i]);
    }
    renounceRole(ds.allocateRegisterMETH, ds.allocateRegisterMETH.REGISTER_MANAGER_ROLE(), sender);
    renounceRole(ds.allocateRegisterMETH, ds.allocateRegisterMETH.REGISTER_OPERATOR_ROLE(), sender);
    grantAndRenounce(ds.allocateRegisterMETH, ds.allocateRegisterMETH.DEFAULT_ADMIN_ROLE(), sender, admin);

}

// DistributeYield
function grantAndRenounceDistributeYield(Deployments memory ds, address admin, address sender, address[] memory managers) {
    for (uint256 i; i < managers.length; i++) {
        grantRole(ds.distributeYield, ds.distributeYield.DISTRIBUTOR_MANAGER_ROLE(), managers[i]);
    }
    renounceRole(ds.distributeYield, ds.distributeYield.DISTRIBUTOR_MANAGER_ROLE(), sender);
    grantAndRenounce(ds.distributeYield, ds.distributeYield.DEFAULT_ADMIN_ROLE(), sender, admin);
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
