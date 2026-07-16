// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.24;

import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";

interface IX33 is IERC20 {
    error ZERO();
    error NOT_ENOUGH();
    error NOT_CONFORMED_TO_SCALE();
    error NOT_ACCESSHUB(address);
    error LOCKED();
    error REBASE_IN_PROGRESS();

    event Entered(address indexed user, uint256 amount, uint256 ratioAtDeposit);
    event Exited(
        address indexed user,
        uint256 _outAmount,
        uint256 ratioAtWithdrawal
    );

    event NewOperator(address _oldOperator, address _newOperator);
    event Compounded(uint256 oldRatio, uint256 newRatio, uint256 amount);

    event Rebased(uint256 oldRatio, uint256 newRatio, uint256 amount);

    event Unlocked(uint256 _ts);

    event UpdatedIndex(uint256 _index);

    function enterVault(uint256 _amount) external;

    function exitVault(uint256 _x33) external;

    function submitVotes(
        address[] calldata _pools,
        uint256[] calldata _weights
    ) external;

    function claimRebase() external;

    function compound() external;

    function claimRewards(
        address[] calldata _feeDistributors,
        address[][] calldata _tokens
    ) external;

    function unlock() external;

    function transferOperator(address _newOperator) external;
    
    function fetchUnderlying() external view returns (uint256);

    function calculateIndex() external view returns (uint256);

    function expectedMint(uint256 _xShadow) external view returns (uint256);

    function expectedAmountOut(uint256 _x33) external view returns (uint256);

    function getPeriod() external view returns (uint256 period);

    function isUnlocked() external view returns (bool);

    function isCooldownActive() external view returns (bool);

    /// @notice address of the current operator
    function operator() external view returns (address);

    /// @notice accessHub address
    function accessHub() external view returns (address);

    /// @notice scale constant for multiplication
    function SCALE() external view returns (uint256);

    /// @notice the most recent active period the contract has interacted in
    function activePeriod() external view returns (uint256);

    /// @notice boolean representing if the initial shares are burnt
    function initialSharesBurned() external view returns (bool);

    /// @notice whether the periods are unlocked
    function periodUnlockStatus(
        uint256 _period
    ) external view returns (bool unlocked);
}
