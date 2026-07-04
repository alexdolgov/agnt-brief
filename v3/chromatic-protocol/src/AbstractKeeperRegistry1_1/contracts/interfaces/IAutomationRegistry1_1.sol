// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

import {Config, State} from "./IAutomationRegistry.sol";
import {ExtraModule} from "./IAutomation1_1.sol";

struct ExtraData {
    ExtraModule extraModule;
    bytes extraParam;
}

interface IAutomationRegistry1_1 {
    // function getUpkeepAdmin(address target) external returns (address admin);
    function registerUpkeep(
        address target,
        uint32 gasLimit,
        address admin,
        bool useTreasury,
        bool singleExec,
        bytes calldata checkData,
        ExtraModule extraModule,
        bytes calldata extraParam
    ) external returns (uint256 id);

    function performUpkeep(
        uint256 id,
        uint256 estimatedGas,
        bytes calldata performData
    ) external returns (bool success);

    function cancelUpkeep(uint256 id) external;

    function pauseUpkeep(uint256 id) external;

    function unpauseUpkeep(uint256 id) external;

    function transferUpkeepAdmin(uint256 id, address proposed) external;

    function acceptUpkeepAdmin(uint256 id) external;

    function updateCheckData(uint256 id, bytes calldata newCheckData) external;

    function setUpkeepGasLimit(uint256 id, uint32 gasLimit) external;

    function getUpkeep(
        uint256 id
    )
        external
        view
        returns (
            address target,
            uint32 executeGas,
            bytes memory checkData,
            ExtraData memory extraData, // to avoid stack too deep
            address lastKeeper,
            address admin,
            uint64 maxValidBlocknumber,
            uint256 amountSpent,
            bool[3] memory flags // [bool useTreasury, bool singleExec, bool paused]
        );

    function getActiveUpkeepIDs(
        uint256 startIndex,
        uint256 maxCount
    ) external view returns (uint256[] memory);

    function getKeeperInfo(
        address query
    ) external view returns (address payee, bool active, uint256 balance);

    function getUpkeepTreasury() external view returns (address);

    function getState()
        external
        view
        returns (State memory, Config memory, address, address[] memory);

    function checkUpkeep(
        uint256 upkeepId,
        address from,
        bytes calldata extraData
    ) external view returns (bytes memory performData, uint256 maxPayment, uint256 gasLimit);

    function getPerformUpkeepFee() external view returns (uint256 fee);
}
