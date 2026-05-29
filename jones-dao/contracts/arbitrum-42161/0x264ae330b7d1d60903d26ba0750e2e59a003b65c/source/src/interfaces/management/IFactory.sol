// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;
pragma abicoder v2;

import {IPriceHelper} from "src/interfaces/swap/IPriceHelper.sol";

interface IFactory {
    enum Stage {
        NON_CREATED,
        CREATED,
        OBSOLETE
    }

    struct InitParams {
        address creator;
        address viewer;
        address swapper;
        address rewardReceiver;
        address merkleDistributor;
        address keeper;
    }

    struct LPContracts {
        address lp;
        address viewer;
        address swapper;
        address receiver;
        address priceHelper;
        address lpManager;
        address doubleTracker;
        address singleTrackerZero;
        address singleTrackerOne;
        address compounder;
        address router;
    }

    struct CreateParams {
        address _pool;
        uint256 _type;
        bytes _paths;
        uint8[] _routes;
        string _positionName;
        string _positionSymbol;
        string _compoundName;
        string _compoundSymbol;
        int24 _defaultLower;
        int24 _defaultUpper;
    }

    function strategy() external view returns (string calldata);

    // External
    function create(CreateParams memory createParams, IPriceHelper.PoolInput memory poolInput)
        external
        returns (uint256 nonce, LPContracts memory contracts);

    // View
    function getLPManagerContracts(uint256 _nonce) external view returns (LPContracts memory);
    function getLPManagerContracts(address _pool) external view returns (LPContracts memory);

    // Only Gov
    function changeStage(address underlyingAddress, Stage _stage) external;
    function updateLPGov(address _lpGov) external;
    function updateInternalContracts(InitParams memory init) external;
    function updateKeeper(address _keeper) external;
    function updateIncentiveReceiver(address _incentiveReceiver) external;
    function updateRetentionIncentives(uint256 _mantentionRate, uint256 _withdrawRate, uint256 _compoundRate)
        external;
    function updateContractsByType(uint256 _type, address _priceHelper, address _lpManager, address _swapper)
        external;
    function updateLPManagerContracts(LPContracts memory contracts) external;
    function pressToggle() external;

    /* -------------------------------------------------------------------------- */
    /*                                   EVENTS                                   */
    /* -------------------------------------------------------------------------- */

    event Toggle(bool toggle);
    event LPManagerCreated(uint256 nonce, address indexed lp, Stage stage, LPContracts);
    event UpdateStage(address indexed lp, Stage oldStage, Stage newStage);
}
