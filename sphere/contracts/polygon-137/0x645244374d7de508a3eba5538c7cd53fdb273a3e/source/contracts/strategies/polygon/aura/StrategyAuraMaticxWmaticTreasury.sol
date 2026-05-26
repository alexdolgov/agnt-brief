// SPDX-License-Identifier: MIT
pragma solidity 0.8.17;

import "@openzeppelin/contracts-upgradeable/token/ERC20/ERC20Upgradeable.sol";
import "@openzeppelin/contracts-upgradeable/token/ERC20/utils/SafeERC20Upgradeable.sol";

import "./interfaces/IAuraRewardPool.sol";
import "./interfaces/IAuraBooster.sol";
import "../../../common/StratManagerUpgradeable.sol";
import "../../../common/DynamicFeeManager.sol";
import "hardhat/console.sol";

contract StrategyAuraMaticxWmaticTreasury is StratManagerUpgradeable, DynamicFeeManager {
    using SafeERC20Upgradeable for IERC20Upgradeable;

    address public constant AURA_BOOSTER = 0x98Ef32edd24e2c92525E59afc4475C1242a30184;
    uint256 public constant POOL_ID = 12;

    address public constant BAL = 0x9a71012B13CA4d3D0Cdc72A177DF3ef03b0E76A3;
    address public constant AURA = 0x1509706a6c66CA549ff0cB464de88231DDBe213B;

    address public constant want = 0xcd78A20c597E367A4e478a2411cEB790604D7c8F;

    address public rewardPool;
    address public treasury;

    event Deposit(uint256 indexed tvl);
    event Withdraw(uint256 indexed tvl);
    event StratHarvest(uint256 _bal, uint256 _aura);

    function initialize(address _treasury, address[] memory _addresses) public initializer {
        __Ownable_init_unchained();
        __Pausable_init_unchained();
        __DynamicFeeManager_init();
        __StratManager_init_unchained(_addresses[0], _addresses[1], _addresses[2], _addresses[3], _addresses[4]);

        treasury = _treasury;

        (, , , rewardPool, , ) = IAuraBooster(AURA_BOOSTER).poolInfo(POOL_ID);

        _giveAllowances();
    }

    // puts the funds to work
    function deposit() public whenNotPaused {
        uint256 wantBal = IERC20Upgradeable(want).balanceOf(address(this));

        if (wantBal > 0) {
            IAuraBooster(AURA_BOOSTER).deposit(POOL_ID, wantBal, true);
            emit Deposit(balanceOf());
        }
    }

    function withdraw(uint256 _amount) external {
        require(msg.sender == vault, "!vault");

        uint256 wantBal = IERC20Upgradeable(want).balanceOf(address(this));

        if (wantBal < _amount) {
            IAuraRewardPool(rewardPool).withdrawAndUnwrap(_amount - wantBal, false);
            wantBal = IERC20Upgradeable(want).balanceOf(address(this));
        }

        if (wantBal > _amount) {
            wantBal = _amount;
        }

        if (tx.origin != owner() && !paused()) {
            uint256 withdrawalFeeAmount = (wantBal * withdrawalFee) / WITHDRAWAL_MAX;
            wantBal = wantBal - withdrawalFeeAmount;
        }

        IERC20Upgradeable(want).safeTransfer(vault, wantBal);

        emit Withdraw(balanceOf());
    }

    function beforeDeposit() external override {}

    function harvest() external virtual {
        IAuraRewardPool(rewardPool).getReward();
        uint256 _bal = IERC20Upgradeable(BAL).balanceOf(address(this));
        uint256 _aura = IERC20Upgradeable(AURA).balanceOf(address(this));

        IERC20Upgradeable(BAL).safeTransfer(treasury, _bal);
        IERC20Upgradeable(AURA).safeTransfer(treasury, _aura);

        emit StratHarvest(_bal, _aura);
    }

    function setTreasury(address _treasury) external onlyManager {
        treasury = _treasury;
    }

    // calculate the total underlaying 'want' held by the strat.
    function balanceOf() public view returns (uint256) {
        return balanceOfWant() + balanceOfPool();
    }

    // it calculates how much 'want' this contract holds.
    function balanceOfWant() public view returns (uint256) {
        return IERC20Upgradeable(want).balanceOf(address(this));
    }

    // it calculates how much 'want' the strategy has working in the farm.
    function balanceOfPool() public view returns (uint256) {
        return IAuraRewardPool(rewardPool).balanceOf(address(this));
    }

    // returns rewards unharvested
    function rewardsAvailable() public view returns (uint256) {
        return IAuraRewardPool(rewardPool).earned(address(this));
    }

    // native reward amount for calling harvest
    function callReward() public pure returns (uint256) {
        return 0; // multiple swap providers with no easy way to estimate native output.
    }

    // called as part of strat migration. Sends all the available funds back to the vault.
    function retireStrat() external {
        require(msg.sender == vault, "!vault");

        IAuraRewardPool(rewardPool).withdrawAndUnwrap(balanceOfPool(), false);

        uint256 wantBal = IERC20Upgradeable(want).balanceOf(address(this));
        IERC20Upgradeable(want).transfer(vault, wantBal);
    }

    // pauses deposits and withdraws all funds from third party systems.
    function panic() public onlyManager {
        pause();
        IAuraRewardPool(rewardPool).withdrawAndUnwrap(balanceOfPool(), false);
    }

    function pause() public onlyManager {
        _pause();

        _removeAllowances();
    }

    function unpause() external onlyManager {
        _unpause();

        _giveAllowances();

        deposit();
    }

    function _giveAllowances() internal {
        IERC20Upgradeable(want).safeApprove(AURA_BOOSTER, type(uint).max);
    }

    function _removeAllowances() internal {
        IERC20Upgradeable(want).safeApprove(AURA_BOOSTER, 0);
    }

    receive() external payable {}
}
