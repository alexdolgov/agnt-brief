pragma solidity ^0.8.25;

import {BeaconProxy} from "openzeppelin-contracts/proxy/beacon/BeaconProxy.sol";
import {AccessControl} from "openzeppelin-contracts/access/AccessControl.sol";

import {IVaultFactoryV2} from "./IVaultFactoryV2.sol";
import {BracketVaultV2} from "src/vaults/BracketVaultV2.sol";

contract VaultFactoryV2 is AccessControl, IVaultFactoryV2 {
    bytes32 public constant STRATEGY_DEPLOYER_ROLE = keccak256("STRATEGY_DEPLOYER_ROLE");

    address public immutable beacon;

    address public multisig;

    constructor(address _beacon, address _multisig) {
        if (_beacon == address(0) || _multisig == address(0)) {
            revert ZeroAddress();
        }

        _grantRole(DEFAULT_ADMIN_ROLE, _multisig);

        multisig = _multisig;
        beacon = _beacon;
    }

    function setMultisig(address _multisig) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (_multisig == address(0)) revert ZeroAddress();
        multisig = _multisig;
    }

    function deployVault(
        string memory name,
        string memory symbol,
        address token,
        address manager,
        uint16 withdrawDelay,
        uint48 lockFrequency,
        address[] memory accounts,
        bytes32[] memory roles
    ) external onlyRole(STRATEGY_DEPLOYER_ROLE) returns (address) {
        BeaconProxy proxy = new BeaconProxy(
            beacon,
            abi.encodeWithSelector(
                BracketVaultV2.initialize.selector,
                name,
                symbol,
                token,
                manager,
                multisig,
                withdrawDelay,
                lockFrequency,
                accounts,
                roles
            )
        );

        emit VaultDeployed(name, symbol, address(proxy), token, manager, withdrawDelay, lockFrequency);

        return address(proxy);
    }
}
