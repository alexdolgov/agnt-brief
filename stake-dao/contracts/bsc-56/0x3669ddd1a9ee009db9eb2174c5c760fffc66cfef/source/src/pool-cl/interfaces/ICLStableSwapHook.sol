// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IERC20Metadata} from "openzeppelin-contracts/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {PoolKey} from "infinity-core/src/types/PoolKey.sol";
import {ICLPoolManager} from "infinity-core/src/pool-cl/interfaces/ICLPoolManager.sol";

interface ICLStableSwapHook is IERC20Metadata {
    event AddLiquidity(
        address indexed provider, uint256[] token_amounts, uint256[] fees, uint256 invariant, uint256 token_supply
    );
    event AdminFeesReceiverUpdated(address indexed new_admin_fees_receiver);
    event ApplyNewFee(uint256 fee, uint256 offpeg_fee_multiplier);
    event RampA(uint256 old_A, uint256 new_A, uint256 initial_time, uint256 future_time);
    event RemoveLiquidity(address indexed provider, uint256[] token_amounts, uint256[] fees, uint256 token_supply);
    event RemoveLiquidityImbalance(
        address indexed provider, uint256[] token_amounts, uint256[] fees, uint256 invariant, uint256 token_supply
    );
    event RemoveLiquidityOne(
        address indexed provider,
        int128 token_id,
        uint256 token_amount,
        uint256 coin_amount,
        uint256 fee,
        uint256 token_supply
    );
    event SetNewMATime(uint256 ma_exp_time, uint256 D_ma_time);
    event StopRampA(uint256 A, uint256 t);
    event TokenExchange(
        address indexed buyer, int128 sold_id, uint256 tokens_sold, int128 bought_id, uint256 tokens_bought, uint256 fee
    );

    function A() external view returns (uint256);
    function A_precise() external view returns (uint256);
    function D_ma_time() external view returns (uint256);
    function D_oracle() external view returns (uint256);
    function MIN_RAMP_TIME() external view returns (uint256);
    function N_COINS() external view returns (uint256);
    function add_liquidity(uint256 _amount0, uint256 _amount1, uint256 _min_mint_amount) external returns (uint256);
    function add_liquidity(uint256 _amount0, uint256 _amount1, uint256 _min_mint_amount, address _receiver)
        external
        returns (uint256);
    function admin_balances(uint256 index) external view returns (uint256);
    function admin_fee() external view returns (uint256);
    function balances(uint256 i) external view returns (uint256);
    function beforeAddLiquidity(
        address sender,
        PoolKey memory key,
        ICLPoolManager.ModifyLiquidityParams memory params,
        bytes memory hookData
    ) external returns (bytes4);
    function beforeInitialize(address sender, PoolKey memory key, uint160 sqrtPriceX96) external returns (bytes4);
    function beforeRemoveLiquidity(
        address sender,
        PoolKey memory key,
        ICLPoolManager.ModifyLiquidityParams memory params,
        bytes memory hookData
    ) external returns (bytes4);
    function beforeSwap(
        address sender,
        PoolKey memory key,
        ICLPoolManager.SwapParams memory params,
        bytes memory hookData
    ) external returns (bytes4, int256, uint24);
    function calc_token_amount(uint256[] memory _amounts, bool _is_deposit) external view returns (uint256);
    function calc_withdraw_one_coin(uint256 _burn_amount, int128 i) external view returns (uint256);
    function coins(uint256 index) external view returns (address);
    function dynamic_fee(int128 i, int128 j) external view returns (uint256);
    function ema_price(uint256 i) external view returns (uint256);
    function fee() external view returns (uint256);
    function future_A() external view returns (uint256);
    function future_A_time() external view returns (uint256);
    function getHooksRegistrationBitmap() external pure returns (uint16);
    function get_balances() external view returns (uint256[] memory);
    function get_dx(int128 i, int128 j, uint256 dy) external view returns (uint256);
    function get_dy(int128 i, int128 j, uint256 dx) external view returns (uint256);
    function get_p(uint256 i) external view returns (uint256);
    function get_virtual_price() external view returns (uint256);
    function initial_A() external view returns (uint256);
    function initial_A_time() external view returns (uint256);
    function is_binded() external view returns (bool);
    function last_price(uint256 i) external view returns (uint256);
    function lockAcquired(bytes memory data) external returns (bytes memory);
    function lock_acquired_add_liquidity(
        address _sender,
        uint256 _amount0,
        uint256 _amount1,
        uint256 _min_mint_amount,
        address _receiver
    ) external returns (bytes memory);
    function lock_acquired_remove_liquidity(
        address _sender,
        uint256 _burn_amount,
        uint256 _min_amount0,
        uint256 _min_amount1,
        address _receiver,
        bool _claim_admin_fees
    ) external returns (bytes memory);
    function lock_acquired_remove_liquidity_imbalance(
        address _sender,
        uint256 _amount0,
        uint256 _amount1,
        uint256 _max_burn_amount,
        address _receiver
    ) external returns (bytes memory);
    function lock_acquired_remove_liquidity_one_coin(
        address _sender,
        uint256 _burn_amount,
        bool _zero_or_one,
        uint256 _min_received,
        address _receiver
    ) external returns (bytes memory);
    function lock_acquired_withdraw_admin_fees() external returns (bytes memory);
    function ma_exp_time() external view returns (uint256);
    function ma_last_time() external view returns (uint256);
    function offpeg_fee_multiplier() external view returns (uint256);
    function oracle() external view returns (address);
    function pool_manager() external view returns (address);
    function price_oracle(uint256 i) external view returns (uint256);
    function ramp_A(uint256 _future_A, uint256 _future_time) external;
    function remove_liquidity(uint256 _burn_amount, uint256 _min_amount0, uint256 _min_amount1)
        external
        returns (uint256, uint256);
    function remove_liquidity(uint256 _burn_amount, uint256 _min_amount0, uint256 _min_amount1, address _receiver)
        external
        returns (uint256, uint256);
    function remove_liquidity(
        uint256 _burn_amount,
        uint256 _min_amount0,
        uint256 _min_amount1,
        address _receiver,
        bool _claim_admin_fees
    ) external returns (uint256, uint256);
    function remove_liquidity_imbalance(uint256 _amount0, uint256 _amount1, uint256 _max_burn_amount)
        external
        returns (uint256);
    function remove_liquidity_imbalance(uint256 _amount0, uint256 _amount1, uint256 _max_burn_amount, address _receiver)
        external
        returns (uint256);
    function remove_liquidity_one_coin(uint256 _burn_amount, bool _zero_or_one, uint256 _min_received)
        external
        returns (uint256);
    function remove_liquidity_one_coin(
        uint256 _burn_amount,
        bool _zero_or_one,
        uint256 _min_received,
        address _receiver
    ) external returns (uint256);
    function set_ma_exp_time(uint256 _ma_exp_time, uint256 _D_ma_time) external;
    function set_new_fee(uint256 _new_fee, uint256 _new_offpeg_fee_multiplier) external;
    function stop_ramp_A() external;
    function stored_rates() external view returns (uint256[] memory);
    function vault() external view returns (address);
    function withdraw_admin_fees() external;
}
