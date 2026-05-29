//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.7.6;
pragma abicoder v2;

import {IERC20} from "@openzeppelin/token/ERC20/IERC20.sol";

interface IMinimalInit {
    // ACCESS
    function addOperator(address _newOperator) external;
    function addKeeper(address _keeper) external;
    function updateGovernor(address _newGovernor) external;
    function transferOwnership(address _newOwner) external;
    function updateCaller(address _caller, bool _allowed) external;

    // UTILS
    function token0() external view returns (IERC20);
    function token1() external view returns (IERC20);

    // INITS

    // LP Manager
    function initializeLPManager(
        address _pool,
        address _receiver,
        address _price,
        address _swapper,
        address _incentiveReceiver,
        uint256 _mantentionRate,
        uint256 _withdrawRate,
        string memory _name,
        string memory _symbol,
        int24 defaultLower,
        int24 defaultUpper
    ) external;

    // Double Tracker
    function initializeDoubleTracker(
        address _manager,
        address _swapper,
        address _receiver,
        address _distributor,
        address _incentiveReceiver
    ) external;

    // Single Tracker
    function initializeSingleTracker(
        address _manager,
        address _rewardsSwapper,
        address _incentivesSwapper,
        address _receiver,
        address _distributor,
        address _incentiveReceiver,
        bool _tokenOption
    ) external;

    // Compounder
    function initializeCompounder(
        address _router,
        address _tracker,
        address _manager,
        address _swapper,
        address _incentiveReceiver,
        uint256 _retentionPercentage,
        string calldata _name,
        string calldata _symbol
    ) external;

    // Router
    function initializeRouter(
        address _manager,
        address _price,
        address _compounder,
        address _tracker,
        address _trackerZero,
        address _trackerOne
    ) external;
}
