//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.4;

import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/security/ReentrancyGuard.sol";
import "./tokens/LPToken.sol";
import "hardhat/console.sol";

contract StableSwapTriPool is Ownable, ReentrancyGuard {
    using SafeERC20 for IERC20;

    event TokenExchange(
        address indexed buyer,
        uint256 sold_id,
        uint256 tokens_sold,
        uint256 bought_id,
        uint256 tokens_bought
    );

    event AddLiquidity(
        address indexed provider,
        uint256[] token_amounts,
        uint256[] fees,
        uint256 invariant,
        uint256 token_supply
    );

    event RemoveLiquidity(address indexed provider, uint256[] token_amounts, uint256[] fees, uint256 token_supply);

    event RemoveLiquidityOne(address indexed provider, uint256 token_amount, uint256 coin_amount);

    event RemoveLiquidityImbalance(
        address indexed provider,
        uint256[] token_amounts,
        uint256[] fees,
        uint256 invariant,
        uint256 token_supply
    );

    event CommitNewAdmin(uint256 indexed deadline, address indexed admin);

    event NewAdmin(address indexed admin);

    event CommitNewFee(uint256 indexed deadline, uint256 fee, uint256 admin_fee);

    event NewFee(uint256 fee, uint256 admin_fee);

    event RampA(uint256 old_A, uint256 new_A, uint256 initial_time, uint256 future_time);

    event StopRampA(uint256 A, uint256 t);

    /// constants
    uint256 public constant PRECISION = 1e18;
    uint256[] public PRECISION_MUL;

    /// @dev token i multiplier to reach 36 decimals
    uint256[] public RATES;

    uint256 public constant FEE_DENOMINATOR = 1e10;
    uint256 public constant MAX_ADMIN_FEE = 1e10; //  100%
    uint256 public constant MAX_FEE = 5e9; // 50% (huge)

    uint256 public constant MAX_A = 1e6;
    uint256 public constant MAX_A_CHANGE = 10;

    uint256 public constant ADMIN_ACTIONS_DELAY = 3 days;
    uint256 public constant MIN_RAMP_TIME = 1 days;

    uint256 public constant N_COINS = 3;

    /// STATE VARS
    bool public isKilled;

    address[] public coins;
    uint256[] public balances;
    uint256 public fee;
    uint256 public adminFee;

    LPToken public token;

    uint256 public initialA;
    uint256 public initialATime;
    uint256 public futureA;
    uint256 public futureATime;

    /// MODIFIERS
    modifier notKilled() {
        require(!isKilled, "killed");
        _;
    }

    /// CONSTRUCTORS

    constructor(
        address _owner,
        address[] memory _coins,
        uint8[] memory _decimals,
        address lpToken,
        uint256 A_,
        uint256 _fee,
        uint256 _adminFee
    ) {
        require(_coins.length == N_COINS, "coins size invalid");
        require(_decimals.length == N_COINS, "decimals size invalid");

        uint256[] memory rates = new uint256[](N_COINS);
        for (uint256 i = 0; i < N_COINS; i++) {
            require(_coins[i] != address(0), "invalid coid address");
            require(_decimals[i] <= 36, "decimals invalid");
            rates[i] = 10**(18 * 2 - _decimals[i]);
        }

        balances = new uint256[](N_COINS);
        RATES = rates;
        coins = _coins;
        initialA = A_;
        futureA = A_;
        console.log(futureA);
        fee = _fee;
        adminFee = _adminFee;
        token = LPToken(lpToken);
        transferOwnership(_owner);
    }

    /// PUBLIC FUNCTIONS: VIEW STATE

    function A() external view returns (uint256) {
        return _A();
    }

    /**
     * Returns portfolio virtual price (for calculating profit)
     * scaled up by 1e18
     */
    function getVirtualPrice() external view returns (uint256) {
        uint256 D = get_D(_xp(), _A());
        uint256 tokenSupply = token.totalSupply();
        return (D * PRECISION) / tokenSupply;
    }

    function adminBalances(uint256 index) external view returns (uint256) {
        return IERC20(coins[index]).balanceOf(address(this)) - balances[index];
    }

    /**
     * Estimate amount of LP token minted or burned at deposit or withdrawal
     * without taking fees into account
     */
    function calcTokenAmount(uint256[] memory amounts, bool deposit) external view returns (uint256) {
        require(amounts.length == N_COINS, "amounts size invalid");
        uint256 amp = _A();
        uint256 D0 = get_D_mem(balances, amp);

        uint256[] memory newBalances = balances;
        for (uint256 i = 0; i < N_COINS; i++) {
            if (deposit) {
                newBalances[i] += amounts[i];
            } else {
                newBalances[i] -= amounts[i];
            }
        }

        uint256 D1 = get_D_mem(newBalances, amp);
        uint256 diff = deposit ? D1 - D0 : D0 - D1;
        return (diff * token.totalSupply()) / D0;
    }

    function get_dy(
        uint256 inIndex,
        uint256 outIndex,
        uint256 inAmount
    ) external view returns (uint256) {
        uint256[] memory normalizedBalances = _xp();
        uint256 newInBalance = normalizedBalances[inIndex] + (inAmount * RATES[inIndex]) / PRECISION;
        uint256 outBalance = get_y(inIndex, outIndex, newInBalance, normalizedBalances);
        uint256 outAmount = ((normalizedBalances[outIndex] - outBalance - 1) * PRECISION) / RATES[outIndex];
        uint256 _fee = (fee * outAmount) / FEE_DENOMINATOR;
        return outAmount - _fee;
    }

    /// PUBLIC FUNCTIONS : WRITE

    function addLiquidity(uint256[] memory amounts, uint256 minMintAmount) external notKilled nonReentrant {
        require(amounts.length == N_COINS, "amounts size invalid");
        uint256[] memory fees = new uint256[](N_COINS);
        uint256 _fee = (fee * N_COINS) / (4 * (N_COINS - 1));

        uint256 tokenSupply = token.totalSupply();
        uint256 amp = _A();
        console.log("amp", amp);

        uint256 D0 = 0;
        if (tokenSupply > 0) {
            D0 = get_D_mem(balances, amp);
        }

        uint256[] memory newBalances = balances;
        uint256 priorBalance = 0;
        for (uint256 i = 0; i < N_COINS; i++) {
            if (tokenSupply == 0) {
                require(amounts[i] > 0, "initial deposit requires all coins");
            }

            // transfer from sender
            IERC20 inCoin = IERC20(coins[i]);
            priorBalance = inCoin.balanceOf(address(this));
            inCoin.safeTransferFrom(msg.sender, address(this), amounts[i]);

            // get real transfer in amount
            newBalances[i] += inCoin.balanceOf(address(this)) - priorBalance;
        }

        console.log("calculate D1");
        uint256 D1 = get_D_mem(newBalances, amp);
        console.log("D1", D1);
        assert(D1 > D0);

        uint256 D2 = D1;
        if (tokenSupply == 0) {
            balances = newBalances;
        } else {
            for (uint256 i = 0; i < N_COINS; i++) {
                uint256 idealBalance = (D1 * balances[i]) / D0;
                uint256 diff = idealBalance > newBalances[i]
                    ? idealBalance - newBalances[i]
                    : newBalances[i] - idealBalance;
                fees[i] = (_fee * diff) / FEE_DENOMINATOR;
                balances[i] = newBalances[i] - ((fees[i] * adminFee) / FEE_DENOMINATOR);
                newBalances[i] -= fees[i];
            }
            D2 = get_D_mem(newBalances, amp);
        }

        uint256 mintAmount = tokenSupply == 0 ? D1 : (tokenSupply * (D2 - D0)) / D0;

        require(mintAmount >= minMintAmount, ">slippage");

        token.mint(msg.sender, mintAmount);
        emit AddLiquidity(msg.sender, amounts, fees, D1, mintAmount);
    }

    /**
     * swap token
     * @param i: index of input coin
     * @param j: index of output coin
     */
    function exchange(
        uint256 i,
        uint256 j,
        uint256 inAmount,
        uint256 minOutAmount
    ) external notKilled nonReentrant {
        IERC20 inCoin = IERC20(coins[i]);

        uint256[] memory normalizedBalances = _xp_mem(balances);
        uint256 priorBalance = inCoin.balanceOf(address(this));
        inCoin.safeTransferFrom(msg.sender, address(this), inAmount);
        inAmount = inCoin.balanceOf(address(this)) - priorBalance;

        uint256 x = normalizedBalances[i] + (inAmount * RATES[i]) / PRECISION;
        uint256 y = get_y(i, j, x, normalizedBalances);

        uint256 dy = normalizedBalances[j] - y - 1; // iliminate rouding errors
        uint256 dy_fee = (dy * fee) / FEE_DENOMINATOR;

        dy = ((dy - dy_fee) * PRECISION) / RATES[j]; // denormalize

        require(dy > minOutAmount, ">slippage");

        uint256 _adminFee = (dy_fee * adminFee * PRECISION) / FEE_DENOMINATOR / RATES[j];

        console.log("_adminFee", _adminFee);

        // update balances
        balances[i] += inAmount;
        balances[j] -= dy + _adminFee;

        IERC20(coins[j]).safeTransfer(msg.sender, dy);
        emit TokenExchange(msg.sender, i, inAmount, j, dy);
    }

    function removeLiquidity(uint256 lpAmount, uint256[] memory minAmounts) external nonReentrant {
        uint256[] memory amounts = new uint256[](N_COINS);
        uint256[] memory fees = new uint256[](N_COINS);
        uint256 totalSupply = token.totalSupply();
        for (uint256 i = 0; i < N_COINS; i++) {
            uint256 value = (balances[i] * lpAmount) / totalSupply;
            require(value >= minAmounts[i], "> slippage");
            balances[i] -= value;
            amounts[i] = value;
        }

        token.burn(msg.sender, lpAmount);
        emit RemoveLiquidity(msg.sender, amounts, fees, totalSupply - lpAmount);
    }

    function removeLiquidityImbalance(uint256[] memory amounts, uint256 maxBurnAmount) external nonReentrant notKilled {
        require(amounts.length == N_COINS, "amounts size invalid");
        uint256 totalSupply = token.totalSupply();
        require(totalSupply != 0, "totalSupply = 0");
        uint256 _fee = (fee * N_COINS) / (4 * (N_COINS - 1));
        uint256 amp = _A();

        uint256[] memory newBalances = balances;
        uint256 D0 = get_D_mem(balances, amp);

        for (uint256 i = 0; i < N_COINS; i++) {
            newBalances[i] -= amounts[i];
        }

        uint256 D1 = get_D_mem(newBalances, amp);
        uint256[] memory fees = new uint256[](N_COINS);

        for (uint256 i = 0; i < N_COINS; i++) {
            uint256 idealBalance = (D1 * balances[i]) / D0;
            uint256 diff = distance(newBalances[i], idealBalance);
            fees[i] = (_fee * diff) / FEE_DENOMINATOR;
            balances[i] = newBalances[i] - ((fees[i] * adminFee) / FEE_DENOMINATOR);
            newBalances[i] -= fees[i];
        }

        uint256 D2 = get_D_mem(newBalances, amp);
        uint256 burnAmount = ((D0 - D2) * totalSupply) / D0;
        assert(burnAmount > 0);
        burnAmount += 1; //In case of rounding errors - make it unfavorable for the "attacker"
        require(burnAmount <= maxBurnAmount);
        token.burn(msg.sender, burnAmount);

        for (uint256 i = 0; i < N_COINS; i++) {
            if (amounts[i] != 0) {
                IERC20(coins[i]).safeTransfer(address(this), amounts[i]);
            }
        }

        emit RemoveLiquidityImbalance(msg.sender, amounts, fees, D1, totalSupply - burnAmount);
    }

    /// RESTRICTED FUNCTIONS

    /// INTERNAL FUNCTIONS

    /**
     * Ramping A from last A to future A
     */
    function _A() internal view returns (uint256) {
        if (block.timestamp >= futureATime) {
            console.log("futureA", futureA);
            return futureA;
        }

        if (futureA > initialA) {
            return initialA + ((futureA - initialA) * (block.timestamp - initialATime)) / (futureATime - initialATime);
        }

        return initialA - ((initialA - futureA) * (block.timestamp - initialATime)) / (futureATime - initialATime);
    }

    /**
     * calculate D for non-normalized balances
     */
    function get_D_mem(uint256[] memory _balances, uint256 amp) internal view returns (uint256) {
        return get_D(_xp_mem(_balances), amp);
    }

    /**
     * Calculate D for *NORMALIZED* balances of each tokens
     */
    function get_D(uint256[] memory xp, uint256 amp) internal view returns (uint256) {
        uint256 sum = _sumOf(xp);
        if (sum == 0) {
            return 0;
        }

        console.log("sum", sum);
        uint256 Dprev = 0;
        uint256 D = sum;
        uint256 Ann = amp * N_COINS;
        console.log("Ann", Ann);

        for (uint256 i = 0; i < 255; i++) {
            uint256 D_P = D;
            for (uint256 j = 0; j < xp.length; j++) {
                D_P = (D_P * D) / (xp[j] * N_COINS);
            }
            Dprev = D;
            D = ((Ann * sum + D_P * N_COINS) * D) / ((Ann - 1) * D + (N_COINS + 1) * D_P);
            if (distance(D, Dprev) <= 1) {
                break;
            }
        }

        return D;
    }

    /**
     * normalized balances of each tokens.
     */
    function _xp() internal view returns (uint256[] memory results) {
        return _xp_mem(balances);
    }

    /**
     * normalized balances of each tokens.
     */
    function _xp_mem(uint256[] memory _balances) internal view returns (uint256[] memory results) {
        results = RATES;
        for (uint256 i = 0; i < results.length; i++) {
            results[i] = (results[i] * _balances[i]) / PRECISION;
        }
    }

    function _sumOf(uint256[] memory x) internal pure returns (uint256 sum) {
        sum = 0;
        for (uint256 i = 0; i < x.length; i++) {
            sum += x[i];
        }
    }

    /**
     * calculate new balance of when swap
     * @param inIndex index of token to swap in
     * @param outIndex index of token to swap out
     * @param inBalance new balance (normalized) of input token if the swap success
     * @return NORMALIZED balance of output token if the swap success
     */
    function get_y(
        uint256 inIndex,
        uint256 outIndex,
        uint256 inBalance,
        uint256[] memory normalizedBalances
    ) internal view returns (uint256) {
        require(inIndex != outIndex, "same token");
        require(inIndex < N_COINS && outIndex < N_COINS, "out of range");

        uint256 amp = _A();
        uint256 Ann = amp * N_COINS;
        uint256 D = get_D(normalizedBalances, amp);

        uint256 sum = 0; // sum of new balances except output token
        uint256 c = D;
        for (uint256 i = 0; i < N_COINS; i++) {
            if (i == outIndex) {
                continue;
            }

            uint256 x = i == inIndex ? inBalance : normalizedBalances[i];
            sum += x;
            c = (c * D) / (x * N_COINS);
        }

        c = (c * D) / (Ann * N_COINS);
        uint256 b = sum + D / Ann;

        uint256 lastY = 0;
        uint256 y = D;

        for (uint256 index = 0; index < 256; index++) {
            lastY = y;
            y = (y * y + c) / (2 * y + b - D);
            if (distance(lastY, y) <= 1) {
                break;
            }
        }
        return y;
    }

    function distance(uint256 x, uint256 y) internal pure returns (uint256) {
        return x > y ? x - y : y - x;
    }
}
