//SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.10;

import {ReentrancyGuard} from "openzeppelin-contracts/contracts/security/ReentrancyGuard.sol";
import {SafeERC20} from "openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import {Ownable} from "openzeppelin-contracts/contracts/access/Ownable.sol";
import {Keepable, Governable} from "src/common/Keepable.sol";
// Interfaces
import {IERC20} from "openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import {IMasterChefV2, UserStruct, IRewarder} from "src/interfaces/IMasterChefV2.sol";
import {IStakingRewardsV3} from "src/interfaces/IStakingRewardsV3.sol";
import {IUniswapV2Router01} from "src/interfaces/IUniswapV2Router01.sol";
import {IAggregatorV3} from "src/interfaces/IAggregatorV3.sol";

contract SushiLPAdapter is IStakingRewardsV3, Ownable, ReentrancyGuard, Keepable {
    using SafeERC20 for IERC20;

    address public vault;

    IUniswapV2Router01 public constant sushiRouter = IUniswapV2Router01(0x1b02dA8Cb0d097eB8D57A175b88c7D8b47997506);

    // Token being deposited
    IERC20 public immutable depositToken;
    IERC20 public immutable rewardToken; // DPX
    IERC20 public constant sushi = IERC20(0xd4d42F0b6DEF4CE0383636770eF773390d85c61A);
    address public constant weth = 0x82aF49447D8a07e3bd95BD0d56f35241523fBab1;

    // Oracles
    IAggregatorV3 public constant dpxOracle = IAggregatorV3(0xc373B9DB0707fD451Bc56bA5E9b029ba26629DF0);
    IAggregatorV3 public constant sushiOracle = IAggregatorV3(0xb2A8BA74cbca38508BA1632761b56C897060147C);
    address public constant dpx = 0x6C2C06790b3E3E3c38e12Ee22F8183b37a13EE55;

    // Staking rewards
    IMasterChefV2 public farm;

    uint256 public poolPID;
    uint256 public slippage;
    uint256 public constant BASIS = 100;

    constructor(address _vault, address _depositToken, address _rewardToken, address _farm, uint256 _poolPID)
        Governable(msg.sender)
        ReentrancyGuard()
    {
        if (_depositToken == address(0) || _farm == address(0) || _vault == address(0) || _rewardToken == address(0)) {
            revert AddressCannotBeZeroAddress();
        }

        vault = _vault;
        depositToken = IERC20(_depositToken);
        rewardToken = IERC20(_rewardToken);
        farm = IMasterChefV2(_farm);
        depositToken.safeApprove(_farm, type(uint256).max);
        poolPID = _poolPID;
        slippage = 98; // default sets slip to 2%
    }

    function pendingRewards() external view returns (address[] memory, uint256[] memory) {
        uint256 pendingSushi = farm.pendingSushi(poolPID, address(this));
        IRewarder rewarder = farm.rewarder(poolPID);
        if (address(rewarder) != address(0)) {
            (IERC20[] memory tokens, uint256[] memory rewards) =
                rewarder.pendingTokens(poolPID, address(this), pendingSushi);

            uint256 length = rewards.length;

            address[] memory tokenAddresses = new address[](length + 1);
            uint256[] memory rewardAmounts = new uint256[](length + 1);

            for (uint8 i = 0; i < length;) {
                tokenAddresses[i] = address(tokens[i]);
                rewardAmounts[i] = rewards[i];
                unchecked {
                    ++i;
                }
            }

            tokenAddresses[length] = address(sushi);
            rewardAmounts[length] = pendingSushi;

            return (tokenAddresses, rewardAmounts);
        } else {
            address[] memory tokenAddresses = new address[](1);
            uint256[] memory rewardAmounts = new uint256[](1);

            tokenAddresses[0] = address(sushi);
            rewardAmounts[0] = pendingSushi;

            return (tokenAddresses, rewardAmounts);
        }
    }

    function balanceOf(address account) external view returns (uint256) {
        UserStruct.UserInfo memory userInfo = farm.userInfo(poolPID, address(this));
        return userInfo.amount;
    }

    function totalSupply() external view returns (uint256) {
        return depositToken.balanceOf(address(farm));
    }

    function stake(uint256 amount) external nonReentrant {
        onlyVault();
        depositToken.safeTransferFrom(msg.sender, address(this), amount);
        farm.deposit(poolPID, amount, address(this));
    }

    function unstake(uint256 amount) external nonReentrant {
        onlyVault();
        farm.withdraw(poolPID, amount, address(this));
        depositToken.safeTransfer(vault, amount);
    }

    function claim() external nonReentrant {
        onlyVault();
        farm.harvest(poolPID, address(this));

        _swapSushi();

        rewardToken.safeTransfer(vault, rewardToken.balanceOf(address(this)));
    }

    function exit() external nonReentrant {
        onlyVault();
        UserStruct.UserInfo memory userInfo = farm.userInfo(poolPID, address(this));
        farm.withdrawAndHarvest(poolPID, userInfo.amount, address(this));

        _swapSushi();

        depositToken.safeTransfer(vault, depositToken.balanceOf(address(this)));
        rewardToken.safeTransfer(vault, rewardToken.balanceOf(address(this)));
    }

    // --------- Only Owner ------------ //

    function updatePID(uint256 _pid) external onlyGovernor {
        poolPID = _pid;
    }

    function updateVault(address _vault) external onlyGovernor {
        if (_vault == address(0)) {
            revert AddressCannotBeZeroAddress();
        }

        vault = _vault;
    }

    function updateFarm(address _farm) external onlyGovernor {
        if (_farm == address(0)) {
            revert AddressCannotBeZeroAddress();
        }

        farm = IMasterChefV2(_farm);
    }

    function updateSlippage(uint256 _min) external onlyGovernor {
        if (_min == 0) {
            revert NoAmountSet();
        }

        slippage = _min;
    }

    function onlyVault() private view {
        if (msg.sender != vault) {
            revert InvalidCaller();
        }
    }

    // --------- Only Keeper ------------ //

    function _swapSushi() private {
        (, int256 _dpxPrice,,,) = dpxOracle.latestRoundData(); // 8 decimals
        (, int256 _sushiPrice,,,) = sushiOracle.latestRoundData(); // 8 decimals

        uint256 dpxPrice = uint256(_dpxPrice) * 1e10;
        uint256 sushiPrice = uint256(_sushiPrice) * 1e10;

        address[] memory path = new address[](3);
        path[0] = address(sushi);
        path[1] = weth;
        path[2] = dpx;

        uint256 balanceSushi = sushi.balanceOf(address(this)); // 18 decimals

        uint256 minAmountOut = (((balanceSushi * sushiPrice) / dpxPrice) * slippage) / BASIS;

        if (minAmountOut > 0) {
            sushi.approve(address(sushiRouter), balanceSushi);
            sushiRouter.swapExactTokensForTokens(balanceSushi, minAmountOut, path, address(this), block.timestamp);
        }
    }

    error AddressCannotBeZeroAddress();
    error InvalidCaller();
    error NoAmountSet();

    // Not Used Functions
    function addToContractWhitelist(address _contract) external {}

    function earned(address account) external view returns (uint256) {}
}
