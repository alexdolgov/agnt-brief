// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { IERC4626 } from "@openzeppelin/contracts/interfaces/IERC4626.sol";

struct StrategyParams {
    uint256 activation;
    uint256 last_report;
    uint256 current_debt;
    uint256 max_debt;
}

library YearnVaultRoles {
    uint256 public constant ADD_STRATEGY_MANAGER = 1;
    uint256 public constant REVOKE_STRATEGY_MANAGER = 2;
    uint256 public constant FORCE_REVOKE_MANAGER = 4;
    uint256 public constant ACCOUNTANT_MANAGER = 8;
    uint256 public constant QUEUE_MANAGER = 16;
    uint256 public constant REPORTING_MANAGER = 32;
    uint256 public constant DEBT_MANAGER = 64;
    uint256 public constant MAX_DEBT_MANAGER = 128;
    uint256 public constant DEPOSIT_LIMIT_MANAGER = 256;
    uint256 public constant WITHDRAW_LIMIT_MANAGER = 512;
    uint256 public constant MINIMUM_IDLE_MANAGER = 1024;
    uint256 public constant PROFIT_UNLOCK_MANAGER = 2048;
    uint256 public constant DEBT_PURCHASER = 4096;
    uint256 public constant EMERGENCY_MANAGER = 8192;
    uint256 public constant ALL = 16_383;
}

interface IYVaultV3 is IERC4626 {
    // STRATEGY EVENTS
    event StrategyChanged(address indexed strategy, uint256 change_type);
    event StrategyReported(
        address indexed strategy,
        uint256 gain,
        uint256 loss,
        uint256 current_debt,
        uint256 protocol_fees,
        uint256 total_fees,
        uint256 total_refunds
    );
    // DEBT MANAGEMENT EVENTS
    event DebtUpdated(address indexed strategy, uint256 current_debt, uint256 new_debt);
    // ROLE UPDATES
    event RoleSet(address indexed account, uint256 role);
    event UpdateRoleManager(address indexed role_manager);

    event UpdateAccountant(address indexed accountant);
    event UpdateDefaultQueue(address[] new_default_queue);
    event UpdateUseDefaultQueue(bool use_default_queue);
    event UpdatedMaxDebtForStrategy(address indexed sender, address indexed strategy, uint256 new_debt);
    event UpdateDepositLimit(uint256 deposit_limit);
    event UpdateMinimumTotalIdle(uint256 minimum_total_idle);
    event UpdateProfitMaxUnlockTime(uint256 profit_max_unlock_time);
    event DebtPurchased(address indexed strategy, uint256 amount);
    event Shutdown();

    function FACTORY() external view returns (uint256);

    function strategies(address) external view returns (StrategyParams memory);

    function default_queue(uint256) external view returns (address);

    function use_default_queue() external view returns (bool);

    function minimum_total_idle() external view returns (uint256);

    function deposit_limit() external view returns (uint256);

    function deposit_limit_module() external view returns (address);

    function withdraw_limit_module() external view returns (address);

    function accountant() external view returns (address);

    function roles(address) external view returns (uint256);

    function role_manager() external view returns (address);

    function future_role_manager() external view returns (address);

    function isShutdown() external view returns (bool);

    function nonces(address) external view returns (uint256);

    function initialize(address, string memory, string memory, address, uint256) external;

    function set_accountant(address new_accountant) external;

    function set_default_queue(address[] memory new_default_queue) external;

    function set_use_default_queue(bool) external;

    function set_deposit_limit(uint256 deposit_limit) external;

    function set_deposit_limit(uint256 deposit_limit, bool should_override) external;

    function set_deposit_limit_module(address new_deposit_limit_module) external;

    function set_deposit_limit_module(address new_deposit_limit_module, bool should_override) external;

    function set_withdraw_limit_module(address new_withdraw_limit_module) external;

    function set_minimum_total_idle(uint256 minimum_total_idle) external;

    function setProfitMaxUnlockTime(uint256 new_profit_max_unlock_time) external;

    function set_role(address account, uint256 role) external;

    function add_role(address account, uint256 role) external;

    function remove_role(address account, uint256 role) external;

    function transfer_role_manager(address role_manager) external;

    function accept_role_manager() external;

    function unlockedShares() external view returns (uint256);

    function pricePerShare() external view returns (uint256);

    function get_default_queue() external view returns (address[] memory);

    function process_report(address strategy) external returns (uint256, uint256);

    function buy_debt(address strategy, uint256 amount) external;

    function add_strategy(address new_strategy) external;

    function revoke_strategy(address strategy) external;

    function force_revoke_strategy(address strategy) external;

    function update_max_debt_for_strategy(address strategy, uint256 new_max_debt) external;

    function update_debt(address strategy, uint256 target_debt) external returns (uint256);

    function update_debt(address strategy, uint256 target_debt, uint256 max_loss) external returns (uint256);

    function shutdown_vault() external;

    function totalIdle() external view returns (uint256);

    function totalDebt() external view returns (uint256);

    function apiVersion() external view returns (string memory);

    function assess_share_of_unrealised_losses(address strategy, uint256 assets_needed)
        external
        view
        returns (uint256);

    function profitMaxUnlockTime() external view returns (uint256);

    function fullProfitUnlockDate() external view returns (uint256);

    function profitUnlockingRate() external view returns (uint256);

    function lastProfitUpdate() external view returns (uint256);

    //// NON-STANDARD ERC-4626 FUNCTIONS \\\\

    function withdraw(uint256 assets, address receiver, address owner, uint256 max_loss) external returns (uint256);

    function withdraw(uint256 assets, address receiver, address owner, uint256 max_loss, address[] memory strategies)
        external
        returns (uint256);

    function redeem(uint256 shares, address receiver, address owner, uint256 max_loss) external returns (uint256);

    function redeem(uint256 shares, address receiver, address owner, uint256 max_loss, address[] memory strategies)
        external
        returns (uint256);

    function maxWithdraw(address owner, uint256 max_loss) external view returns (uint256);

    function maxWithdraw(address owner, uint256 max_loss, address[] memory strategies)
        external
        view
        returns (uint256);

    function maxRedeem(address owner, uint256 max_loss) external view returns (uint256);

    function maxRedeem(address owner, uint256 max_loss, address[] memory strategies) external view returns (uint256);

    //// NON-STANDARD ERC-20 FUNCTIONS \\\\

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function permit(address owner, address spender, uint256 amount, uint256 deadline, uint8 v, bytes32 r, bytes32 s)
        external
        returns (bool);
}
