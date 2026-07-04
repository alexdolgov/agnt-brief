// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity ^0.8.17;

import '@uniswap/lib/contracts/libraries/TransferHelper.sol';
import "../../../interfaces/ISwapIncentive.sol";
import {IERC20} from '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import {SafeMath} from '@openzeppelin/contracts/utils/math/SafeMath.sol';

contract SwapIncentive is ISwapIncentive {
    using SafeMath for uint256;

    address public override rewardSetter;

    // info about rewards for a particular swap token pair
    struct SwapInfo {
        address token0;
        address token1;
        uint256 price0;
        uint256 price1;
    }

    mapping(address => bool) public override getPermittedAccount;
    mapping(address => uint256) public getUserReward;
    mapping(address => mapping(address => SwapInfo)) public getSwapInfo;
    SwapInfo[] public allSwapInfos;

    constructor(address _rewardSetter) {
        rewardSetter = _rewardSetter;
    }

    function allSwapInfosLength() external override view returns (uint256) {
        return allSwapInfos.length;
    }

    function setRewardSetter(address _rewardSetter) external override {
        require(msg.sender == rewardSetter, 'SwapIncentive: FORBIDDEN');
        rewardSetter = _rewardSetter;
    }

    function setSwapInfo(address token0, address token1, uint256 price0, uint256 price1) external override {
        require(msg.sender == rewardSetter, 'SwapIncentive: FORBIDDEN');
        require(token0 < token1, 'SwapIncentive: ORDER REQUIRED');
        SwapInfo storage info = getSwapInfo[token0][token1];
        if (info.token0 == token0 && info.token1 == token1) {
            info.price0 = price0;
            info.price1 = price1;
            return;
        }

        SwapInfo storage newInfo = allSwapInfos.push();
        newInfo.token0 = token0;
        newInfo.token1 = token1;
        newInfo.price0 = price0;
        newInfo.price1 = price1;
        getSwapInfo[token0][token1] = newInfo;

        emit SwapInfoUpdated(msg.sender, token0, token1, price0, price1);
        return;
    }

    function incentivize(
        address inputToken,
        uint256 inputAmount,
        address outputToken,
        uint256 outputAmount) external override {
        require(getPermittedAccount[msg.sender], 'SwapIncentive: FORBIDDEN');

        (address token0, address token1) =
            inputToken < outputToken ? (inputToken, outputToken) : (outputToken, inputToken);
        (uint256 token0Amount, uint256 token1Amount) =
            inputToken < outputToken ? (inputAmount, outputAmount) : (outputAmount, inputAmount);
        SwapInfo storage info = getSwapInfo[token0][token1];
        if (info.token0 == token0 && info.token1 == token1) {
            uint256 token0Volume = info.price0.mul(token0Amount) / (10**18);
            uint256 token1Volume = info.price1.mul(token1Amount) / (10**18);

            uint256 rewards = token0Volume < token1Volume ? token0Volume : token1Volume;
            address origin = tx.origin;
            getUserReward[origin] = getUserReward[origin].add(rewards);

            emit Incentive(origin, token0, token1, rewards, getUserReward[origin]);
        }
    }

    function withdrawERC20(
        address token,
        address to,
        uint256 amount
    ) external virtual override {
        require(msg.sender == rewardSetter, 'SwapIncentive: FORBIDDEN');
        TransferHelper.safeTransfer(token, to, amount);
    }

    function withdrawETH(address payable to, uint256 amountOut) external virtual override {
        require(msg.sender == rewardSetter, 'SwapIncentive: FORBIDDEN');
        TransferHelper.safeTransferETH(to, amountOut);
    }

    function setPermittedAccount(address permittedAccount, bool enabled) external override {
        require(msg.sender == rewardSetter, 'SwapIncentive: FORBIDDEN');

        getPermittedAccount[permittedAccount] = enabled;
    }
}
