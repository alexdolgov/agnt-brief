// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import { AccessControl } from "@openzeppelin/contracts/access/AccessControl.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { SEFVaultStorageV1 } from "../../SEFVault/SEFVaultStorage.sol";
import { SEFTeamVestingRecovery } from "./SEFTeamVestingRecovery.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";

/**
 * Team Vesting Contract with SEFVault Staking and Rewards Harvesting.
 *
 * - A team member can ALL submit vested tokens to the uSEF vault
 * - A team member can execute the claiming process, which will distribute the rewards proportionally to ALL team members.
 * - A team member can withdraw their vested tokens from the vault
 */

contract SEFTeamVesting is AccessControl, SEFTeamVestingRecovery {
    bytes32 public constant VESTING_MANAGER_ROLE = keccak256("STAKING_MANAGER_ROLE");
    uint256 public constant VAULT_COOLDOWN_PERIOD = 7 days;

    event ReleasedToVault(uint amount, uint totalReleased);
    event WithdrawalRequested(address indexed allocatee, uint amount);
    event WithdrawalExecuted(address indexed allocatee, uint amount, uint totalWithdrawn);
    event RewardsClaimed();

    struct TAllocation {
        address recipient;
        uint256 amount;

        uint256 withdrawn;
        uint256 pendingWithdrawals;
        uint256 pendingWithdrawalAt;
    }

    address public constant sef = 0x5dE40C1152c990492eaeaEECc4ECAab788BbC4fD;
    address public constant vault = 0xC6BcBe182b0F85dBfF6b49DC81CecEe02A16fE57;

    // Vault U-Pool
    address public constant rewardToken = 0x8AC76a51cc950d9822D68b83fE1Ad97B32Cd580d;
    uint    public constant pid = 0;

    uint    public constant vestingAmount = 15_000_000 ether;
    uint    public constant vestingStart = 1712707200;
    uint    public constant vestingPeriod = 2 * 365 days;
    uint    public releasedAmount = 0;

    TAllocation[]  public allocations;
    // address => ID
    mapping(address => uint) public allocatees;

    address[] public rewardTokens;
    mapping(address => uint256) public rewardTokenIndexes;

    modifier onlyTeam () {
        ensureTeam();
        _;
    }
    modifier onlyAllocatee () {
        ensureAllocatee();
        _;
    }
    modifier onlyManager () {
        ensureManager();
        _;
    }

    constructor(address manager, address timelock) {
        _grantRole(DEFAULT_ADMIN_ROLE,   timelock);
        _grantRole(VESTING_MANAGER_ROLE, manager);

        // Prepare allowance
        IERC20(sef).approve(vault, vestingAmount);

        // USDT
        rewardTokens.push(0x55d398326f99059fF775485246999027B3197955);
        // THE
        rewardTokens.push(0xF4C8E32EaDEC4BFe97E0F595AdD0f4450a863a11);


        addAllocatee(0xE557db3eC1F94128853136Fc8F9f109beF13f03D, 3_187_500);
        addAllocatee(0x6B69E7c68a218C4148B9EE6160B4CCb31D6A2AeE, 3_187_500);
        addAllocatee(0x73362311853a070d4ce836Bb1Ac50E12459d1fE7, 3_187_500);
        addAllocatee(0xC0b354a68ab16a5bf783E2F2005AcD2db4707ec3, 1_593_750);
        addAllocatee(0xbfb95d0007B3a1986405a2129b021Cdc849a137e, 1_593_750);

        addAllocatee(0xfF8Ad5e3570Df49D0E18Df7B28e0C1d9475e812e, 550_000);
        addAllocatee(0xBc5be98DADf3aCbD0E6fB4a8Be7879bd0f5daE13, 500_000);
        addAllocatee(0x58Dc5605326043a2aCa4313bbd5ad2E3deEA60EA, 450_000);
        addAllocatee(0xB196e7DA786405838aB28C447dF643f2AC1cF6B1, 325_000);
        addAllocatee(0x8E5141c4Ca801E3865b45aB1352C490aEE2728ea, 325_000);
        addAllocatee(0xA07f2E459773733b15A1eB95Be7530EE6DaDb515, 100_000);
    }

    function addAllocatee (address allocatee, uint amountEther) internal {
        allocations.push(TAllocation({
            recipient: allocatee,
            amount: amountEther * 10**18,
            withdrawn: 0,
            pendingWithdrawals: 0,
            pendingWithdrawalAt: 0
        }));
        allocatees[allocatee] = allocations.length;
    }

    function stakeVested() external onlyTeam() {
        uint release = getPendingReleaseAmount();
        require(release > 0, "Nothing_To_Stake");

        uint balance = IERC20(sef).balanceOf(address(this));
        require(release <= balance, "Out_Of_Funds");

        ISEFVault(vault).deposit(rewardToken, pid, release);
        releasedAmount += release;
        emit ReleasedToVault(release, releasedAmount);
    }

    function requestWithdrawal (uint amount) external onlyAllocatee() {
        requestWithdrawalInternal(amount, msg.sender);
    }
    function requestWithdrawal(uint amount, address allocatee) external onlyManager() {
        requestWithdrawalInternal(amount, allocatee);
    }
    function requestWithdrawalInternal(uint amount, address allocatee) internal {
        TAllocation storage allocation = allocations[getAllocationIdx(allocatee)];
        require(allocation.amount > 0, "Invalid allocatee");
        require(amount <= getStaked(allocatee));

        ISEFVault(vault).requestWithdrawal(rewardToken, pid, amount);
        allocation.pendingWithdrawals += amount;
        allocation.pendingWithdrawalAt = block.timestamp;
        emit WithdrawalRequested(allocatee, amount);
    }

    function executeWithdrawal () external onlyAllocatee() {
        executeWithdrawalInternal(msg.sender);
    }
    function executeWithdrawal (address allocatee) external onlyManager() {
        executeWithdrawalInternal(allocatee);
    }
    function executeWithdrawalInternal(address allocatee) internal {
        TAllocation storage allocation = allocations[getAllocationIdx(allocatee)];
        uint amount = allocation.pendingWithdrawals;
        require(amount > 0, "Allocatee: Not enough pendingWithdrawals");
        require(block.timestamp - allocation.pendingWithdrawalAt >= VAULT_COOLDOWN_PERIOD, "Withdrawal too early");

        SEFVaultStorageV1.UserInfo memory info = ISEFVault(vault).getUserInfo(rewardToken, pid, address(this));
        require(amount <= info.pendingWithdrawals, "Vault: Not enough pendingWithdrawals");

        // we execute ALL ready withdrawal requests
        uint balanceBefore = IERC20(sef).balanceOf(address(this));
        ISEFVault(vault).executeWithdrawal(rewardToken, pid);
        uint withdrawn = IERC20(sef).balanceOf(address(this)) - balanceBefore;
        require(amount <= withdrawn, "Withdrawal not enough");

        allocation.withdrawn += amount;
        allocation.pendingWithdrawals = 0;

        bool ok = IERC20(sef).transfer(allocatee, amount);
        require(ok, "Token was not transfered");
        emit WithdrawalExecuted(allocatee, amount, allocation.withdrawn);
    }

    function claimAndDistributeRewards () external onlyTeam() {
        ISEFVault(vault).claim(address(this), rewardToken, pid);

        uint total = 0;
        uint[] memory shares = new uint[](allocations.length);
        for (uint j = 0; j < allocations.length; j++) {
            uint share = allocations[j].amount - allocations[j].withdrawn - allocations[j].pendingWithdrawals;
            shares[j] = share;
            total += share;
        }

        for (uint i = 0; i < rewardTokens.length; i++) {
            uint balance = IERC20(rewardTokens[i]).balanceOf(address(this));
            for (uint j = 0; j < allocations.length; j++) {
                uint share = shares[j];
                uint amount = balance * share / total;
                if (amount > 10**6) {
                    // >>> 1gwei
                    IERC20(rewardTokens[i]).transfer(allocations[j].recipient, amount);
                }
            }
            // leave dust for next claims
        }
        emit RewardsClaimed();
    }

    function getAllocation (address allocatee) internal view returns (TAllocation memory) {
        return allocations[getAllocationIdx(allocatee)];
    }
    function getAllocationIdx (address allocatee) internal view returns (uint256) {
        uint id = allocatees[allocatee];
        require(id > 0, "Allocatee 404");
        return id - 1;
    }

    function getReleased (address allocatee) public view returns (uint) {
        TAllocation memory allocation = getAllocation(allocatee);
        return releasedAmount * allocation.amount / vestingAmount;
    }
    function getStaked (address allocatee) public view returns (uint) {
        TAllocation memory allocation = getAllocation(allocatee);
        return releasedAmount * allocation.amount / vestingAmount - allocation.withdrawn - allocation.pendingWithdrawals;
    }

    function getPendingReleaseAmount() public view returns (uint256) {
        uint vested = getVestedAmount();
        return vested - releasedAmount;
    }

    function getVestedAmount() internal view returns (uint256) {
        if (block.timestamp < vestingStart) {
            return 0;
        }
        if (block.timestamp - vestingStart >= vestingPeriod) {
            return vestingAmount;
        }
        return vestingAmount * (block.timestamp - vestingStart) / vestingPeriod;
    }

    function ensureTeam () override internal view {
        address sender = msg.sender;
        if (allocatees[sender] > 0) {
            return;
        }
        if (hasRole(VESTING_MANAGER_ROLE, sender)) {
            return;
        }
        if (hasRole(DEFAULT_ADMIN_ROLE, sender)) {
            return;
        }
        revert AccessControlUnauthorizedAccount(sender, VESTING_MANAGER_ROLE);
    }
    function ensureAllocatee () internal view {
        if (allocatees[msg.sender] == 0) {
            revert AccessControlUnauthorizedAccount(msg.sender, VESTING_MANAGER_ROLE);
        }
    }
    function ensureManager () internal view {
        if (hasRole(VESTING_MANAGER_ROLE, msg.sender) == false) {
            revert AccessControlUnauthorizedAccount(msg.sender, VESTING_MANAGER_ROLE);
        }
    }
}

interface ISEFVault {
    function deposit(address _rewardToken, uint256 _pid, uint256 _amount) external;
    function requestWithdrawal(address _rewardToken, uint256 _pid, uint256 _amount)  external;
    function executeWithdrawal(address _rewardToken, uint256 _pid) external;
    function claim(address _account, address _rewardToken, uint256 _pid) external;
    function getUserInfo (address _rewardToken, uint256 _pid, address _account) external view returns (SEFVaultStorageV1.UserInfo memory);
}
