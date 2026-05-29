// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.7.6;
pragma abicoder v2;

import {IPriceHelper} from "src/interfaces/swap/IPriceHelper.sol";

interface IRouter {
    /**
     * @notice Deposit Input Params
     * @param _amount0 Amount of token0
     * @param _amount1 Amount of token1
     * @param _amount0Min Minimum amount of token0 to be minted
     * @param _amount1Min Minimum amount of token1 to be minted
     * @param _minPosition Minimum amount of position to be received to the user
     * @param _minShares Minimum amount of shares to be received to the user
     * @param _receiver Who will receive the shares
     * @param _compound True if user choose autocompounding shares.
     * @param _rewardOption Type of reward.
     *
     */
    struct DepositInput {
        uint256 amount0;
        uint256 amount1;
        uint256 amount0Min;
        uint256 amount1Min;
        uint256 minPosition;
        uint256 minShares;
        address receiver;
        bool compound;
        uint8 rewardOption;
    }

    // stage:
    // 1 -> creted;
    // 2 -> executed;
    // 3 -> removed
    struct ExitOrder {
        address receiver;
        uint256 blockNumber;
        uint256 amount;
        uint256 price;
        bool compound;
        uint8 rewardOption;
        uint256 stage;
    }

    struct ExecuteOrder {
        address user;
        uint256[] blockNumbers;
        uint256[] minAmount0;
        uint256[] minAmount1;
    }

    function price() external returns (IPriceHelper);

    function deposit(DepositInput calldata _deposit)
        external
        returns (uint256, /*amount0*/ uint256, /*amount1*/ uint256, /*position*/ uint256); /*shares*/

    function withdraw(
        uint256 _position,
        address _receiver,
        uint256 _amount0Min,
        uint256 _amount1Min,
        bool _compound,
        uint8 _rewardOption
    ) external returns (uint256 amount0, uint256 amount1);

    function compoundDeposit(uint256 _amount0, uint256 _amount1) external;

    function claim(address _receiver, uint8 _rewardOption) external returns (uint256, uint256);

    function previewPosition(
        uint256 price0,
        uint256 price1,
        uint256 amountIn0,
        uint256 amountIn1,
        uint256 position0,
        uint256 position1
    ) external view returns (uint256);

    event Deposit(
        address indexed caller,
        address indexed receiver,
        uint256 amount0,
        uint256 amount1,
        uint256 position,
        uint256 shares,
        uint8 rewardOption
    );
    event Withdraw(
        address indexed caller,
        address indexed receiver,
        uint256 shares,
        uint256 position,
        uint256 amount0,
        uint256 amount1,
        uint256 amount0AfterRetention,
        uint256 amount1AfterRetention,
        uint8 rewardOption
    );
    event CompoundDeposit(address indexed caller, uint256 amount0, uint256 amount1, uint256 position);
    event Claim(address indexed caller, uint256 rewards0, uint256 rewards1, address indexed target, uint8 rewardOption);
    event Compound(address indexed caller, uint256 amount, uint256 shares, uint8 _rewardOption);
    event UnCompound(address indexed caller, uint256 shares, uint256 position, uint8 _rewardOption);
    event NewExitOrder(address indexed user, ExitOrder order);
    event OrderExecuted(
        address indexed user,
        uint256 blockNumber,
        uint256 price0,
        uint256 position,
        uint256 shares,
        uint256 amount0,
        uint256 amount1
    );

    event UpdateOrder(address indexed user, uint256 blockNumber, ExitOrder order);

    event OrderRemoved(address indexed user, ExitOrder order);

    /// @dev Used to index non-compounding balances
    event Transfer(address indexed from, address indexed to, uint256 value);
}
