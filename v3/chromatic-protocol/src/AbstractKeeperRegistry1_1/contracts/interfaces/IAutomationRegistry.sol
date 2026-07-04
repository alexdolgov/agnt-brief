// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <0.9.0;

/**
 * @notice config of the registry
 * @dev only used in params and return values
 * @member paymentPremiumPPB payment premium rate oracles receive on top of
 * being reimbursed for gas, measured in parts per billion
 * @member blockCountPerTurn number of blocks each oracle has during their turn to
 * perform upkeep before it will be the next keeper's turn to submit
 * @member gasCeilingMultiplier multiplier to apply to the fast gas feed price
 * when calculating the payment ceiling for keepers
 * @member maxPerformGas max executeGas allowed for an upkeep on this registry
 * @member fallbackGasPrice gas price used if the gas price feed is stale
 */
struct Config {
    uint32 paymentPremiumPPB;
    uint24 blockCountPerTurn;
    uint16 gasCeilingMultiplier;
    uint32 maxPerformGas;
    uint256 fallbackGasPrice;
}

/**
 * @notice state of the registry
 * @dev only used in params and return values
 * @member nonce used for ID generation
 * @member expectedBalance the expected balance of the registry
 * @member numUpkeeps total number of upkeeps on the registry
 */
struct State {
    uint32 nonce;
    uint256 expectedBalance;
    uint256 numUpkeeps;
}

/**
 * @notice relevant state of an upkeep
 * @member lastKeeper the keeper which last performs the upkeep
 * @member amountSpent the amount this upkeep has spent
 * @member admin the upkeep admin
 * @member executeGas the gas limit of upkeep execution
 * @member maxValidBlocknumber until which block this upkeep is valid
 * @member target the contract which needs to be serviced
 * @member singleExec the flag which task cancels itself after 1 execution
 * @member paused if this upkeep has been paused
 */
struct Upkeep {
    uint256 amountSpent;
    address lastKeeper;
    address admin;
    address target;
    uint32 executeGas;
    uint32 maxValidBlocknumber;
    bool useTreasury;
    bool singleExec;
    bool paused;
}

interface IAutomationRegistry {
    // function getUpkeepAdmin(address target) external returns (address admin);
    function registerUpkeep(
        address target,
        uint32 gasLimit,
        address admin,
        bool useTreasury,
        bool singleExec,
        bytes calldata checkData
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
            address lastKeeper,
            address admin,
            uint64 maxValidBlocknumber,
            uint256 amountSpent,
            bool useTreasury,
            bool singleExec,
            bool paused
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
        address from
    ) external view returns (bytes memory performData, uint256 maxPayment, uint256 gasLimit);

    function getPerformUpkeepFee() external view returns (uint256 fee);
}
