// SPDX-License-Identifier: MIT

pragma solidity 0.8.26;

import {IERC4626} from "@openzeppelin/contracts/interfaces/IERC4626.sol";
import {IMetaBeraborrowCore} from "src/interfaces/core/IMetaBeraborrowCore.sol";

/**
 * @title MLVRegistry
 * @author Beraborrow Team
 * @notice Registry to help track Managed Leveraged Vault across versions
 */
contract MLVRegistry {
    struct Vault {
        address vault;
        /// @dev Block number when the vault was deployed
        uint blockNumber;
        // Which instance the vault is at:
        // - n -> MLV for protocol instance n 
        uint8 protocolInstance;
        uint8 version;
    }

    IMetaBeraborrowCore public immutable metaBeraborrowCore;

    Vault[] public managedLeverageVaults;
    mapping(address => bool) public isMLV;
    mapping(address => uint) private vaultIndex;
    mapping(address => bool) public isOwner;

    error OnlyOwner(address caller);
    error NotMLV(address vault);
    error DuplicateVault(address vault);

    event NewMLV(address indexed vault, uint blockNumber, uint8 protocolInstance);
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

    function setMLVs(Vault[] calldata _mlvs) external onlyOwner {
        for (uint i; i < _mlvs.length; i++) {
            Vault memory _mlv = _mlvs[i];

            if (IERC4626(_mlv.vault).asset() == address(0))
                revert NotMLV(_mlv.vault);
            if (isMLV[_mlv.vault])
                revert DuplicateVault(_mlv.vault);

            vaultIndex[_mlv.vault] = managedLeverageVaults.length;
            managedLeverageVaults.push(_mlv);
            isMLV[_mlv.vault] = true;

            emit NewMLV(_mlv.vault, _mlv.blockNumber, _mlv.protocolInstance);
        }
    }

    function modifyMLV(Vault calldata _mlv) external onlyOwner {
        address vault = _mlv.vault;

        if (!isMLV[vault])
            revert NotMLV(vault);

        uint index = vaultIndex[vault];
        managedLeverageVaults[index].blockNumber = _mlv.blockNumber;
        managedLeverageVaults[index].protocolInstance = _mlv.protocolInstance;
        managedLeverageVaults[index].version = _mlv.version;

        emit VaultModified(vault, _mlv.blockNumber, _mlv.protocolInstance);
    }

    function removeMLV(address _mlv) external onlyOwner {
        if (!isMLV[_mlv])
            revert NotMLV(_mlv);

        uint index = vaultIndex[_mlv];
        uint lastIndex = managedLeverageVaults.length - 1;

        if (index != lastIndex) {
            Vault memory lastVault = managedLeverageVaults[lastIndex];
            managedLeverageVaults[index] = lastVault;
            vaultIndex[lastVault.vault] = index;
        }

        managedLeverageVaults.pop();
        delete isMLV[_mlv];
        delete vaultIndex[_mlv];
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

    function getMLVs() external view returns (Vault[] memory) {
        return managedLeverageVaults;
    }
}