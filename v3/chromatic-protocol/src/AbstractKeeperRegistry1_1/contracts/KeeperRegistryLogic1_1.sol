// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "./KeeperRegistryLogic.sol";
import "./KeeperRegistryBase1_1.sol";
import {ExtraModule} from "./interfaces/IAutomation1_1.sol";

contract KeeperRegistryLogic1_1 is KeeperRegistryLogic, KeeperRegistryBase1_1 {
    using Address for address;
    using EnumerableSet for EnumerableSet.UintSet;
    using EnumerableSet for EnumerableSet.AddressSet;

    /**
     * @param registryGasOverhead the gas overhead used by registry in performUpkeep
     */
    constructor(uint256 registryGasOverhead) KeeperRegistryLogic(registryGasOverhead) {}

    /**
     * @dev Called through KeeperRegistry main contract
     */
    function registerUpkeep(
        address target,
        uint32 gasLimit,
        address admin,
        bool useTreasury,
        bool singleExec,
        bytes calldata checkData,
        ExtraModule extraModule,
        bytes calldata extraParam
    ) external returns (uint256 id) {
        if (msg.sender != owner() && !s_whitelistedRegistrars.contains(msg.sender))
            revert OnlyCallableByOwnerOrRegistrar();

        id = uint256(
            keccak256(abi.encodePacked(blockhash(block.number - 1), address(this), s_storage.nonce))
        );
        _createUpkeep(id, target, gasLimit, admin, useTreasury, singleExec, checkData, false);
        if (extraModule != ExtraModule.None) {
            s_extraModule[id] = extraModule;
            s_extraParam[id] = extraParam;
        }

        s_storage.nonce++;
        emit UpkeepRegistered(id, msg.sender, admin, gasLimit, extraModule, extraParam);
        return id;
    }
}
