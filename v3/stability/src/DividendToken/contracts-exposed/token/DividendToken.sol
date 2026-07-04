// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.6.0;

import "../../contracts/token/DividendToken.sol";

contract XDividendToken is DividendToken {
    constructor() {}

    function x_beforeTokenTransfer(address from,address to,uint256 amount) external {
        return super._beforeTokenTransfer(from,to,amount);
    }

    function x_authorizeUpgrade(address newImplementation) external {
        return super._authorizeUpgrade(newImplementation);
    }

    function x__UUPSUpgradeable_init() external {
        return super.__UUPSUpgradeable_init();
    }

    function x__UUPSUpgradeable_init_unchained() external {
        return super.__UUPSUpgradeable_init_unchained();
    }

    function x__ERC1967Upgrade_init() external {
        return super.__ERC1967Upgrade_init();
    }

    function x__ERC1967Upgrade_init_unchained() external {
        return super.__ERC1967Upgrade_init_unchained();
    }

    function x_getImplementation() external view returns (address) {
        return super._getImplementation();
    }

    function x_upgradeTo(address newImplementation) external {
        return super._upgradeTo(newImplementation);
    }

    function x_upgradeToAndCall(address newImplementation,bytes calldata data,bool forceCall) external {
        return super._upgradeToAndCall(newImplementation,data,forceCall);
    }

    function x_upgradeToAndCallSecure(address newImplementation,bytes calldata data,bool forceCall) external {
        return super._upgradeToAndCallSecure(newImplementation,data,forceCall);
    }

    function x_getAdmin() external view returns (address) {
        return super._getAdmin();
    }

    function x_changeAdmin(address newAdmin) external {
        return super._changeAdmin(newAdmin);
    }

    function x_getBeacon() external view returns (address) {
        return super._getBeacon();
    }

    function x_upgradeBeaconToAndCall(address newBeacon,bytes calldata data,bool forceCall) external {
        return super._upgradeBeaconToAndCall(newBeacon,data,forceCall);
    }

    function x__AccessControl_init() external {
        return super.__AccessControl_init();
    }

    function x__AccessControl_init_unchained() external {
        return super.__AccessControl_init_unchained();
    }

    function x_checkRole(bytes32 role,address account) external view {
        return super._checkRole(role,account);
    }

    function x_setupRole(bytes32 role,address account) external {
        return super._setupRole(role,account);
    }

    function x_setRoleAdmin(bytes32 role,bytes32 adminRole) external {
        return super._setRoleAdmin(role,adminRole);
    }

    function x_grantRole(bytes32 role,address account) external {
        return super._grantRole(role,account);
    }

    function x_revokeRole(bytes32 role,address account) external {
        return super._revokeRole(role,account);
    }

    function x__ERC165_init() external {
        return super.__ERC165_init();
    }

    function x__ERC165_init_unchained() external {
        return super.__ERC165_init_unchained();
    }

    function x__ERC20Permit_init(string calldata name) external {
        return super.__ERC20Permit_init(name);
    }

    function x__ERC20Permit_init_unchained(string calldata name) external {
        return super.__ERC20Permit_init_unchained(name);
    }

    function x_useNonce(address owner) external returns (uint256) {
        return super._useNonce(owner);
    }

    function x__EIP712_init(string calldata name,string calldata version) external {
        return super.__EIP712_init(name,version);
    }

    function x__EIP712_init_unchained(string calldata name,string calldata version) external {
        return super.__EIP712_init_unchained(name,version);
    }

    function x_domainSeparatorV4() external view returns (bytes32) {
        return super._domainSeparatorV4();
    }

    function x_hashTypedDataV4(bytes32 structHash) external view returns (bytes32) {
        return super._hashTypedDataV4(structHash);
    }

    function x_EIP712NameHash() external view returns (bytes32) {
        return super._EIP712NameHash();
    }

    function x_EIP712VersionHash() external view returns (bytes32) {
        return super._EIP712VersionHash();
    }

    function x__ERC20Snapshot_init() external {
        return super.__ERC20Snapshot_init();
    }

    function x__ERC20Snapshot_init_unchained() external {
        return super.__ERC20Snapshot_init_unchained();
    }

    function x_snapshot() external returns (uint256) {
        return super._snapshot();
    }

    function x_getCurrentSnapshotId() external view returns (uint256) {
        return super._getCurrentSnapshotId();
    }

    function x__ERC20Burnable_init() external {
        return super.__ERC20Burnable_init();
    }

    function x__ERC20Burnable_init_unchained() external {
        return super.__ERC20Burnable_init_unchained();
    }

    function x__ERC20_init(string calldata name_,string calldata symbol_) external {
        return super.__ERC20_init(name_,symbol_);
    }

    function x__ERC20_init_unchained(string calldata name_,string calldata symbol_) external {
        return super.__ERC20_init_unchained(name_,symbol_);
    }

    function x_transfer(address sender,address recipient,uint256 amount) external {
        return super._transfer(sender,recipient,amount);
    }

    function x_mint(address account,uint256 amount) external {
        return super._mint(account,amount);
    }

    function x_burn(address account,uint256 amount) external {
        return super._burn(account,amount);
    }

    function x_approve(address owner,address spender,uint256 amount) external {
        return super._approve(owner,spender,amount);
    }

    function x_afterTokenTransfer(address from,address to,uint256 amount) external {
        return super._afterTokenTransfer(from,to,amount);
    }

    function x__Context_init() external {
        return super.__Context_init();
    }

    function x__Context_init_unchained() external {
        return super.__Context_init_unchained();
    }

    function x_msgSender() external view returns (address) {
        return super._msgSender();
    }

    function x_msgData() external view returns (bytes memory) {
        return super._msgData();
    }
}
