// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

/**
 * @title DLVRegistry
 * @author Everlong Team
 */
contract DLVRegistry {
    struct Vault {
        address vault;
        /// @dev Block number when the vault was deployed
        uint blockNumber;
        // Which instance the vault is at:
        // - n -> Collateral vault for protocol instance n 
        uint8 protocolInstance; 
    }

    IMetaBeraborrowCore public immutable metaBeraborrowCore;

    Vault[] public vaults;
    mapping(address => bool) public isVault;
    mapping(address => uint) private vaultIndex;
    mapping(address => bool) public isOwner;

    error OnlyOwner(address caller);
    error NotVault(address vault);
    error DuplicateVault(address vault);

    event NewVault(address indexed vault, uint blockNumber, uint8 protocolInstance);
    event VaultModified(address indexed vault, uint blockNumber, uint8 protocolInstance);
    event NewOwner(address);
    event RemovedOwner(address);

    modifier onlyOwner() {
        if (msg.sender != metaBeraborrowCore.owner() && !isOwner[msg.sender])
            revert OnlyOwner(msg.sender);
        _;
    }

    constructor(address _metaBeraborrowCore, address _initialOwner) {
        metaBeraborrowCore = IMetaBeraborrowCore(_metaBeraborrowCore);
        isOwner[_initialOwner] = true;
    }

    function setVaults(Vault[] calldata _vaults) external onlyOwner {
        for (uint i; i < _vaults.length; i++) {
            Vault memory _vault = _vaults[i];

            if (IERC4626(_vault.vault).asset() == address(0))
                revert NotVault(_vault.vault);
            if (isVault[_vault.vault])
                revert DuplicateVault(_vault.vault);

            vaultIndex[_vault.vault] = vaults.length;
            vaults.push(_vault);
            isVault[_vault.vault] = true;

            emit NewVault(_vault.vault, _vault.blockNumber, _vault.protocolInstance);
        }
    }

    function modifyVault(Vault calldata _vault) external onlyOwner {
        address vault = _vault.vault;

        if (!isVault[vault])
            revert NotVault(vault);

        uint index = vaultIndex[vault];
        vaults[index].blockNumber = _vault.blockNumber;
        vaults[index].protocolInstance = _vault.protocolInstance;

        emit VaultModified(vault, _vault.blockNumber, _vault.protocolInstance);
    }

    function removeVault(address _vault) external onlyOwner {
        if (!isVault[_vault])
            revert NotVault(_vault);

        uint index = vaultIndex[_vault];
        uint lastIndex = vaults.length - 1;

        if (index != lastIndex) {
            Vault memory lastVault = vaults[lastIndex];
            vaults[index] = lastVault;
            vaultIndex[lastVault.vault] = index;
        }

        vaults.pop();
        delete isVault[_vault];
        delete vaultIndex[_vault];
    }

    function whitelistOwner(address _owner, bool whitelisted) external {
        if (msg.sender != metaBeraborrowCore.owner()) revert OnlyOwner(msg.sender);

        isOwner[_owner] = whitelisted;

        if (whitelisted) {
            emit NewOwner(_owner);
        } else {
            emit RemovedOwner(_owner);
        }
    }

    function getVaults() external view returns (Vault[] memory) {
        return vaults;
    }
}