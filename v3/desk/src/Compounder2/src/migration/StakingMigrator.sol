// SPDX-License-Identifier: BUSL-1.1
// This code is made available under the terms and conditions of the Business Source License 1.1 (BUSL-1.1).
// The act of publishing this code is driven by the aim to promote transparency and facilitate its utilization for educational purposes.

pragma solidity 0.8.18;

import { OwnableUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/access/OwnableUpgradeable.sol";
import { IDeskExchanger } from "src/interfaces/IDeskExchanger.sol";
import { SafeERC20 } from "lib/openzeppelin-contracts/contracts/token/ERC20/utils/SafeERC20.sol";
import { IERC20 } from "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import { IHMXStaking } from "src/staking/interfaces/IHMXStaking.sol";
import { DragonPoint } from "src/tokens/DragonPoint.sol";
import { ReentrancyGuardUpgradeable } from "lib/openzeppelin-contracts-upgradeable/contracts/security/ReentrancyGuardUpgradeable.sol";
import { Compounder2 } from "src/staking/Compounder2.sol";

contract StakingMigrator is OwnableUpgradeable, ReentrancyGuardUpgradeable {
  using SafeERC20 for IERC20;

  // Events
  event LogSetWhitelistedCaller(address oldAddress, address newAddress);
  event LogMigration(address indexed user, address indexed token, uint256 amount);

  // Errors
  error StakingMigrator_Forbidden();
  error StakingMigrator_ZeroAddress();
  error StakingMigrator_EmptyUsersArray();
  error StakingMigrator_BatchTooLarge();
  error StakingMigrator_EmptyArray();
  error StakingMigrator_ArrayLengthMismatch();
  error StakingMigrator_InvalidTimestamp();
  /**
   * States
   */
  IDeskExchanger public deskExchanger;
  IHMXStaking public hmxStaking;
  address public whitelistedCaller;
  address payable public compounder;
  address[] public stakingPools;
  address[][] public rewarders;
  uint256 public startEpochTimestamp;

  /**
   * Modifiers
   */
  modifier onlyWhitelistedCaller() {
    if (msg.sender != whitelistedCaller) revert StakingMigrator_Forbidden();
    _;
  }

  function initialize(address _deskExchanger, address _hmxStaking) external initializer {
    if (_deskExchanger == address(0)) revert StakingMigrator_ZeroAddress();
    if (_hmxStaking == address(0)) revert StakingMigrator_ZeroAddress();

    OwnableUpgradeable.__Ownable_init();
    ReentrancyGuardUpgradeable.__ReentrancyGuard_init();

    deskExchanger = IDeskExchanger(_deskExchanger);
    hmxStaking = IHMXStaking(_hmxStaking);

    IERC20(deskExchanger.hmx()).approve(address(deskExchanger), type(uint256).max);
    IERC20(deskExchanger.esHmx()).approve(address(deskExchanger), type(uint256).max);
    IERC20(deskExchanger.lhmx2()).approve(address(deskExchanger), type(uint256).max);
    IERC20(deskExchanger.lhmx3()).approve(address(deskExchanger), type(uint256).max);
    IERC20(deskExchanger.desk()).approve(address(hmxStaking), type(uint256).max);
    IERC20(deskExchanger.bDesk()).approve(address(hmxStaking), type(uint256).max);
    IERC20(deskExchanger.ldesk2()).approve(address(hmxStaking), type(uint256).max);
    IERC20(deskExchanger.ldesk3()).approve(address(hmxStaking), type(uint256).max);
    IERC20(address(hmxStaking.dp())).approve(address(hmxStaking), type(uint256).max);
  }

  function setCompounderParams(
    address _compounder,
    address[] memory _stakingPools,
    address[][] memory _rewarders,
    uint256 _startEpochTimestamp
  ) external onlyOwner {
    if (_compounder == address(0)) revert StakingMigrator_ZeroAddress();
    if (_stakingPools.length == 0) revert StakingMigrator_EmptyArray();
    if (_rewarders.length == 0) revert StakingMigrator_EmptyArray();
    if (_stakingPools.length != _rewarders.length) revert StakingMigrator_ArrayLengthMismatch();
    if (_startEpochTimestamp == 0) revert StakingMigrator_InvalidTimestamp();

    compounder = payable(_compounder);
    stakingPools = _stakingPools;
    rewarders = _rewarders;
    startEpochTimestamp = _startEpochTimestamp;
  }

  struct LocalVars {
    uint256 i;
    uint256 length;
    address hmx;
    address esHmx;
    address desk;
    address bDesk;
    address dp;
    address lhmx2;
    address ldesk2;
    address lhmx3;
    address ldesk3;
    uint256 newAmount;
    uint256 burnAmount;
    uint256 dpMaxCapOfThisUser;
    uint256 stakingAmount;
  }

  function migrate(address[] memory _users) external onlyWhitelistedCaller {
    if (_users.length == 0) revert StakingMigrator_EmptyUsersArray();
    LocalVars memory vars;
    vars.length = _users.length;
    vars.hmx = deskExchanger.hmx();
    vars.esHmx = deskExchanger.esHmx();
    vars.desk = deskExchanger.desk();
    vars.bDesk = deskExchanger.bDesk();
    vars.dp = address(hmxStaking.dp());
    vars.lhmx2 = deskExchanger.lhmx2();
    vars.ldesk2 = deskExchanger.ldesk2();
    vars.lhmx3 = deskExchanger.lhmx3();
    vars.ldesk3 = deskExchanger.ldesk3();
    for (; vars.i < vars.length; ) {
      // Compound all rewards
      Compounder2(compounder).compoundFor(
        _users[vars.i],
        stakingPools,
        rewarders,
        startEpochTimestamp
      );

      // Reinvest DP from user's pending DP to get every DP available for them
      hmxStaking.reinvestDp(_users[vars.i]);
      vars.stakingAmount = hmxStaking.userTokenAmount(vars.dp, _users[vars.i]);
      if (vars.stakingAmount > 0) {
        // Withdraw DP from HMX Staking
        hmxStaking.withdrawAsMigrator(_users[vars.i], vars.dp, vars.stakingAmount);

        // Burn them all first
        DragonPoint(vars.dp).burn(address(this), vars.stakingAmount);

        // Increase DP to the new weight and cap at 2x of the staking amount
        vars.newAmount = vars.stakingAmount * deskExchanger.RATIO();
        vars.dpMaxCapOfThisUser =
          hmxStaking.calculateShare(address(hmxStaking.dragonPointRewarder()), _users[vars.i]) *
          deskExchanger.RATIO() *
          2;
        if (vars.newAmount > vars.dpMaxCapOfThisUser) {
          vars.newAmount = vars.dpMaxCapOfThisUser;
        }

        // Mint the new amount of DP with the ratio of DESK
        DragonPoint(vars.dp).mint(address(this), vars.newAmount);

        // Stake DP
        hmxStaking.deposit(_users[vars.i], vars.dp, vars.newAmount);

        emit LogMigration(_users[vars.i], vars.dp, vars.newAmount);
      }

      vars.stakingAmount = hmxStaking.userTokenAmount(vars.hmx, _users[vars.i]);
      if (vars.stakingAmount > 0) {
        // Withdraw HMX from HMX Staking
        hmxStaking.withdrawAsMigrator(_users[vars.i], vars.hmx, vars.stakingAmount);

        // Exchange HMX into DESK
        vars.newAmount = deskExchanger.exchangeToken(vars.hmx, vars.stakingAmount);

        // Stake DESK
        hmxStaking.deposit(_users[vars.i], vars.desk, vars.newAmount);

        emit LogMigration(_users[vars.i], vars.desk, vars.newAmount);
      }

      vars.stakingAmount = hmxStaking.userTokenAmount(vars.esHmx, _users[vars.i]);
      if (vars.stakingAmount > 0) {
        // Withdraw esHMX from HMX Staking
        hmxStaking.withdrawAsMigrator(_users[vars.i], vars.esHmx, vars.stakingAmount);

        // Exchange esHMX into bDESK
        vars.newAmount = deskExchanger.exchangeToken(vars.esHmx, vars.stakingAmount);

        // Stake bDESK
        hmxStaking.deposit(_users[vars.i], vars.bDesk, vars.newAmount);

        emit LogMigration(_users[vars.i], vars.bDesk, vars.newAmount);
      }

      vars.stakingAmount = hmxStaking.userTokenAmount(vars.lhmx2, _users[vars.i]);
      if (vars.stakingAmount > 0) {
        // Withdraw LHMX2 from HMX Staking
        hmxStaking.withdrawAsMigrator(_users[vars.i], vars.lhmx2, vars.stakingAmount);

        // Exchange LHMX2 into LDESK2
        vars.newAmount = deskExchanger.exchangeToken(vars.lhmx2, vars.stakingAmount);

        // Stake LDESK2
        hmxStaking.deposit(_users[vars.i], vars.ldesk2, vars.newAmount);

        emit LogMigration(_users[vars.i], vars.ldesk2, vars.newAmount);
      }

      vars.stakingAmount = hmxStaking.userTokenAmount(vars.lhmx3, _users[vars.i]);
      if (vars.stakingAmount > 0) {
        // Withdraw LHMX3 from HMX Staking
        hmxStaking.withdrawAsMigrator(_users[vars.i], vars.lhmx3, vars.stakingAmount);

        // Exchange LHMX3 into LDESK3
        vars.newAmount = deskExchanger.exchangeToken(vars.lhmx3, vars.stakingAmount);

        // Stake LDESK3
        hmxStaking.deposit(_users[vars.i], vars.ldesk3, vars.newAmount);

        emit LogMigration(_users[vars.i], vars.ldesk3, vars.newAmount);
      }

      unchecked {
        ++vars.i;
      }
    }
  }

  function setWhitelistedCaller(address _whitelistedCaller) external onlyOwner {
    if (_whitelistedCaller == address(0)) revert StakingMigrator_ZeroAddress();
    emit LogSetWhitelistedCaller(whitelistedCaller, _whitelistedCaller);
    whitelistedCaller = _whitelistedCaller;
  }

  /**
   * @notice Revokes token approvals for all tokens that were approved in initialize
   * @dev Only callable by the owner
   */
  function revokeAllowances() external onlyOwner {
    IERC20(deskExchanger.hmx()).approve(address(deskExchanger), 0);
    IERC20(deskExchanger.esHmx()).approve(address(deskExchanger), 0);
    IERC20(deskExchanger.lhmx2()).approve(address(deskExchanger), 0);
    IERC20(deskExchanger.lhmx3()).approve(address(deskExchanger), 0);
    IERC20(deskExchanger.desk()).approve(address(hmxStaking), 0);
    IERC20(deskExchanger.bDesk()).approve(address(hmxStaking), 0);
    IERC20(deskExchanger.ldesk2()).approve(address(hmxStaking), 0);
    IERC20(deskExchanger.ldesk3()).approve(address(hmxStaking), 0);
    IERC20(address(hmxStaking.dp())).approve(address(hmxStaking), 0);
  }

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }
}
