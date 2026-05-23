// SPDX-License-Identifier: UNLICENSED
pragma solidity =0.7.6;
pragma abicoder v2;

import "./interfaces/IStableSwapFactory.sol";
import "./interfaces/IStableSwap.sol";
import "@openzeppelin/contracts-3.4.1/access/Ownable.sol";
import "../../stable-amm/interfaces/ISwap.sol";
//import "../../stable-amm/interfaces/ISwap.sol";

contract StableSwapViewer is IStableSwapFactory, Ownable {

    mapping(address => mapping(address => mapping(address => StableSwapThreePoolPairInfo))) public stableSwapPairInfo;
    // Query three pool pair information by two tokens.
    mapping(address => mapping(address => StableSwapThreePoolPairInfo)) threePoolInfo;
    mapping(uint256 => address) public swapPairContract;

    address constant ZEROADDRESS = address(0);
    uint256 public constant FEE_DENOMINATOR = 1e10;
    uint256 public constant PRECISION = 1e18;
    uint256 public constant N_COINS = 2;

    uint256 public override pairLength;

    event NewStableSwapPair(address indexed swapContract, address tokenA, address tokenB, address tokenC, address LP);

    /**
     * View only "factory" to query existing StableSwap pairs
     * Pairs are added manually by owner
     *
     *
     */
    constructor() {

    }

    // returns sorted token addresses, used to handle return values from pairs sorted in this order
    function sortTokens(address tokenA, address tokenB) internal pure returns (address token0, address token1) {
        require(tokenA != tokenB, "IDENTICAL_ADDRESSES");
        (token0, token1) = tokenA < tokenB ? (tokenA, tokenB) : (tokenB, tokenA);
    }

    function sortTokens(
        address tokenA,
        address tokenB,
        address tokenC
    )
    internal
    pure
    returns (
        address,
        address,
        address
    )
    {
        require(tokenA != tokenB && tokenA != tokenC && tokenB != tokenC, "IDENTICAL_ADDRESSES");
        address tmp;
        if (tokenA > tokenB) {
            tmp = tokenA;
            tokenA = tokenB;
            tokenB = tmp;
        }
        if (tokenB > tokenC) {
            tmp = tokenB;
            tokenB = tokenC;
            tokenC = tmp;
            if (tokenA > tokenB) {
                tmp = tokenA;
                tokenA = tokenB;
                tokenB = tmp;
            }
        }
        return (tokenA, tokenB, tokenC);
    }

    function addPairInfoInternal(
        address _swapContract,
        address _t0,
        address _t1,
        address _t2,
        address _LP
    ) internal {
        StableSwapThreePoolPairInfo storage info = stableSwapPairInfo[_t0][_t1][_t2];
        info.swapContract = _swapContract;
        info.token0 = _t0;
        info.token1 = _t1;
        info.token2 = _t2;
        info.LPContract = _LP;
        swapPairContract[pairLength] = _swapContract;
        pairLength += 1;
        if (_t2 != ZEROADDRESS) {
            addThreePoolPairInfo(_t0, _t1, _t2, info);
        }

        emit NewStableSwapPair(_swapContract, _t0, _t1, _t2, _LP);
    }

    function addThreePoolPairInfo(
        address _t0,
        address _t1,
        address _t2,
        StableSwapThreePoolPairInfo memory info
    ) internal {
        threePoolInfo[_t0][_t1] = info;
        threePoolInfo[_t0][_t2] = info;
        threePoolInfo[_t1][_t2] = info;
    }

    function addPairInfo(address _swapContract) external onlyOwner {
        ISwap swap = ISwap(_swapContract);
        if (N_COINS == 2) {
            addPairInfoInternal(_swapContract, address(swap.getToken(0)), address(swap.getToken(1)), ZEROADDRESS, address(swap.getLpToken()));
        } else if (N_COINS == 3) {
            addPairInfoInternal(_swapContract, address(swap.getToken(0)), address(swap.getToken(1)), address(swap.getToken(2)), address(swap.getLpToken()));
        }
    }

    function getPairInfo(address _tokenA, address _tokenB) external override view returns (StableSwapPairInfo memory info) {
        (address t0, address t1) = sortTokens(_tokenA, _tokenB);
        StableSwapThreePoolPairInfo memory pairInfo = stableSwapPairInfo[t0][t1][ZEROADDRESS];
        info.swapContract = pairInfo.swapContract;
        info.token0 = pairInfo.token0;
        info.token1 = pairInfo.token1;
        info.LPContract = pairInfo.LPContract;
    }

    function getThreePoolPairInfo(address _tokenA, address _tokenB)
    external
    override
    view
    returns (StableSwapThreePoolPairInfo memory info)
    {
        (address t0, address t1) = sortTokens(_tokenA, _tokenB);
        info = threePoolInfo[t0][t1];
    }

    //Functions ported from StableSwapInfo

    function balances(IStableSwap _swap) public view returns (uint256[N_COINS] memory swapBalances) {
        for (uint8 i = 0; i < N_COINS; i++) {
            swapBalances[i] = _swap.getTokenBalance(i);
        }
    }

    function RATES(IStableSwap _swap) public view returns (uint256[N_COINS] memory swapRATES) {
        for (uint256 i = 0; i < N_COINS; i++) {
            swapRATES[i] = _swap.getVirtualPrice(); //Pancake has a per token rate
        }
    }

    function _xp_mem(IStableSwap _swap, uint256[N_COINS] memory _balances)
    public
    view
    returns (uint256[N_COINS] memory result)
    {
        result = RATES(_swap);
        for (uint256 i = 0; i < N_COINS; i++) {
            result[i] = (result[i] * _balances[i]) / PRECISION;
        }
    }

    function _getSwapFee(IStableSwap _swap) internal view returns (uint256 swapFee) {
        swapFee = _swap.swapStorage().swapFee;
    }

    function get_D(uint256[N_COINS] memory xp, uint256 amp) internal pure returns (uint256) {
        uint256 S;
        for (uint256 i = 0; i < N_COINS; i++) {
            S += xp[i];
        }
        if (S == 0) {
            return 0;
        }

        uint256 Dprev;
        uint256 D = S;
        uint256 Ann = amp * N_COINS;
        for (uint256 j = 0; j < 255; j++) {
            uint256 D_P = D;
            for (uint256 k = 0; k < N_COINS; k++) {
                D_P = (D_P * D) / (xp[k] * N_COINS); // If division by 0, this will be borked: only withdrawal will work. And that is good
            }
            Dprev = D;
            D = ((Ann * S + D_P * N_COINS) * D) / ((Ann - 1) * D + (N_COINS + 1) * D_P);
            // Equality with the precision of 1
            if (D > Dprev) {
                if (D - Dprev <= 1) {
                    break;
                }
            } else {
                if (Dprev - D <= 1) {
                    break;
                }
            }
        }
        return D;
    }

    function get_y(
        address _swap,
        uint256 i,
        uint256 j,
        uint256 x,
        uint256[N_COINS] memory xp_
    ) internal view returns (uint256) {
        IStableSwap swap = IStableSwap(_swap);
        uint256 amp = swap.getA();
        uint256 D = get_D(xp_, amp);
        uint256 c = D;
        uint256 S_;
        uint256 Ann = amp * N_COINS;

        uint256 _x;
        for (uint256 k = 0; k < N_COINS; k++) {
            if (k == i) {
                _x = x;
            } else if (k != j) {
                _x = xp_[k];
            } else {
                continue;
            }
            S_ += _x;
            c = (c * D) / (_x * N_COINS);
        }
        c = (c * D) / (Ann * N_COINS);
        uint256 b = S_ + D / Ann; // - D
        uint256 y_prev;
        uint256 y = D;

        for (uint256 m = 0; m < 255; m++) {
            y_prev = y;
            y = (y * y + c) / (2 * y + b - D);
            // Equality with the precision of 1
            if (y > y_prev) {
                if (y - y_prev <= 1) {
                    break;
                }
            } else {
                if (y_prev - y <= 1) {
                    break;
                }
            }
        }
        return y;
    }

    function get_dx(
        address _swap,
        uint256 i,
        uint256 j,
        uint256 dy,
        uint256 max_dx
    ) external override view returns (uint256) {
        IStableSwap swap = IStableSwap(_swap);
        uint256[N_COINS] memory old_balances = balances(swap);
        uint256[N_COINS] memory xp = _xp_mem(swap, old_balances);

        uint256 dy_with_fee = (dy * FEE_DENOMINATOR) / (FEE_DENOMINATOR - _getSwapFee(swap));
        require(dy_with_fee < old_balances[j], "Excess balance");
        uint256[N_COINS] memory rates = RATES(swap);
        uint256 y = xp[j] - (dy_with_fee * rates[j]) / PRECISION;
        uint256 x = get_y(_swap, j, i, y, xp);

        uint256 dx = x - xp[i];

        // Convert all to real units
        dx = (dx * PRECISION) / rates[i] + 1; // +1 for round lose.
        require(dx <= max_dx, "Exchange resulted in fewer coins than expected");
        return dx;
    }

}
