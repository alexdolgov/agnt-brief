// SPDX-License-Identifier: MIT

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";

pragma solidity >=0.6.2;

interface IUniswapV2Router01 {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

    function addLiquidityETH(
        address token,
        uint256 amountTokenDesired,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    )
        external
        payable
        returns (uint256 amountToken, uint256 amountETH, uint256 liquidity);

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountETH);

    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETHWithPermit(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountToken, uint256 amountETH);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapETHForExactTokens(
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) external pure returns (uint256 amountB);

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountOut);

    function getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountIn);

    function getAmountsOut(
        uint256 amountIn,
        address[] calldata path
    ) external view returns (uint256[] memory amounts);

    function getAmountsIn(
        uint256 amountOut,
        address[] calldata path
    ) external view returns (uint256[] memory amounts);
}

// File @uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol@v1.1.0-beta.0

pragma solidity >=0.6.2;

interface IUniswapV2Router02 is IUniswapV2Router01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountETH);

    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline,
        bool approveMax,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external returns (uint256 amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;
}

// File @uniswap/v2-core/contracts/interfaces/IUniswapV2Pair.sol@v1.0.1

pragma solidity >=0.5.0;

interface IUniswapV2Pair {
    event Approval(
        address indexed owner,
        address indexed spender,
        uint256 value
    );
    event Transfer(address indexed from, address indexed to, uint256 value);

    function name() external pure returns (string memory);

    function symbol() external pure returns (string memory);

    function decimals() external pure returns (uint8);

    function totalSupply() external view returns (uint256);

    function balanceOf(address owner) external view returns (uint256);

    function allowance(
        address owner,
        address spender
    ) external view returns (uint256);

    function approve(address spender, uint256 value) external returns (bool);

    function transfer(address to, uint256 value) external returns (bool);

    function transferFrom(
        address from,
        address to,
        uint256 value
    ) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);

    function PERMIT_TYPEHASH() external pure returns (bytes32);

    function nonces(address owner) external view returns (uint256);

    function permit(
        address owner,
        address spender,
        uint256 value,
        uint256 deadline,
        uint8 v,
        bytes32 r,
        bytes32 s
    ) external;

    event Mint(address indexed sender, uint256 amount0, uint256 amount1);
    event Burn(
        address indexed sender,
        uint256 amount0,
        uint256 amount1,
        address indexed to
    );
    event Swap(
        address indexed sender,
        uint256 amount0In,
        uint256 amount1In,
        uint256 amount0Out,
        uint256 amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint256);

    function factory() external view returns (address);

    function token0() external view returns (address);

    function token1() external view returns (address);

    function getReserves()
        external
        view
        returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);

    function price0CumulativeLast() external view returns (uint256);

    function price1CumulativeLast() external view returns (uint256);

    function kLast() external view returns (uint256);

    function mint(address to) external returns (uint256 liquidity);

    function burn(
        address to
    ) external returns (uint256 amount0, uint256 amount1);

    function swap(
        uint256 amount0Out,
        uint256 amount1Out,
        address to,
        bytes calldata data
    ) external;

    function skim(address to) external;

    function sync() external;

    function initialize(address, address) external;
}

// File contracts/interfaces/ISwapStrategy.sol

pragma solidity 0.8.4;

interface ISwapStrategy {
    function execute(uint256 _wethIn, uint256 _yTokenOut) external;
}

// File contracts/interfaces/IWETH.sol

pragma solidity 0.8.4;

interface IWETH is IERC20 {
    function deposit() external payable;

    function withdraw(uint256 wad) external;
}

// File contracts/libs/WethUtils.sol

pragma solidity 0.8.4;

library WethUtils {
    using SafeERC20 for IWETH;
    using SafeERC20 for IERC20;

    IWETH public constant weth =
        IWETH(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c); //WETH(WBNB)
    IERC20 public constant _WETH =
        IERC20(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c); //_WETH  token

    function isWeth(address token) internal pure returns (bool) {
        return address(weth) == token;
    }

    function wrap(uint256 amount) internal {
        weth.deposit{value: amount}();
    }

    function unwrap(uint256 amount) internal {
        weth.withdraw(amount);
    }

    function transfer(address to, uint256 amount) internal {
        weth.safeTransfer(to, amount);
    }
}

library GuardUtils {
    using SafeERC20 for IWETH;
    using SafeERC20 for IERC20;

    IERC20 public constant guard =
        IERC20(0xF606bd19b1E61574ED625d9ea96C841D4E247A32); //WETH(WBNB)
    IERC20 public constant _GUARD =
        IERC20(0xF606bd19b1E61574ED625d9ea96C841D4E247A32); //_WETH  token

    function transfer(address to, uint256 amount) internal {
        guard.safeTransfer(to, amount);
    }
}

// File contracts/libs/Babylonian.sol

pragma solidity 0.8.4;

// computes square roots using the babylonian method
// https://en.wikipedia.org/wiki/Methods_of_computing_square_roots#Babylonian_method
library Babylonian {
    function sqrt(uint256 y) internal pure returns (uint256 z) {
        if (y > 3) {
            z = y;
            uint256 x = y / 2 + 1;
            while (x < z) {
                z = x;
                x = (y / x + x) / 2;
            }
        } else if (y != 0) {
            z = 1;
        }
        // else z = 0
    }
}

// File contracts/SwapStrategyPOL.sol

pragma solidity 0.8.4;

/*
    Swapper: Protocol Owned Liquidity
    - Swap WETH -> YToken
    - Add liquidity for YToken/WETH pair
    - Transfer LP to Treasury
*/
contract SwapStrategySHLDGUARD is ISwapStrategy, OwnableUpgradeable {
    using SafeERC20 for IWETH;
    using SafeERC20 for IERC20;

    IERC20 public yToken;
    address public lp;
    address public lpGuard;
    IUniswapV2Router02 public swapRouter;
    address public treasury;
    uint256 public swapSlippage; // 20%
    uint256 private constant SLIPPAGE_PRECISION = 1e6;

    function initialize() external initializer {
        __Ownable_init_unchained();
        swapSlippage = 200000;
    }

    function setContracts(
        address _yToken,
        address _lp,
        address _treasury,
        address _swapRouter,
        address _lpGuard       // 0x72Cb715ABfDDf7Ef640784c28b317094939B312E
    ) external onlyOwner {
        yToken = IERC20(_yToken);
        lp = _lp;
        treasury = _treasury;
        swapRouter = IUniswapV2Router02(_swapRouter);
        lpGuard = _lpGuard;
    }

    /* ========== PUBLIC FUNCTIONS ============ */


    function execute(uint256 _guardIn, uint256 _yTokenOut) external override {

        // transfer guard
        GuardUtils.guard.safeTransferFrom(msg.sender, address(this), _guardIn);
        
        // convert guard to weth
        IUniswapV2Pair _pairGuard = IUniswapV2Pair(lpGuard);
        address _token0G = _pairGuard.token0();
        address _token1G = _pairGuard.token1();
        (uint256 _res0G, uint256 _res1G, ) = _pairGuard.getReserves();

        swap2(_guardIn, 0);
        uint _wethIn = WethUtils.weth.balanceOf(address(this));

        // WethUtils.weth.safeTransferFrom(msg.sender, address(this), _wethIn);

        // 1. swap 50% of WETH to YToken
        IUniswapV2Pair _pair = IUniswapV2Pair(lp);
        address _token0 = _pair.token0();
        (uint256 _res0, uint256 _res1, ) = _pair.getReserves();
        uint256 _wethToSwap;
        if (_token0 == address(yToken)) {
            _wethToSwap = calculateSwapInAmount(_res1, _wethIn);
        } else {
            _wethToSwap = calculateSwapInAmount(_res0, _wethIn);
        }
        if (_wethToSwap <= 0) _wethToSwap = _wethIn / 2;
        uint256 _wethToAdd = _wethIn - _wethToSwap;
        // uint256 _minYTokenOut = (_yTokenOut *
        //     (SLIPPAGE_PRECISION - swapSlippage)) /
        //     2 /
        //     SLIPPAGE_PRECISION;
        uint256 _yTokenReceived = swap(_wethToSwap, 0);

        // 2. add liquidity for YToken/WETH LP
        addLiquidity(_yTokenReceived, _wethToAdd, swapSlippage);
    }

    /* ========== INTERNAL FUNCTIONS ============ */

    /// @notice calculate amount to swap just enough so least dust will be leftover when adding liquidity
    /// copied from zapper.fi contract. Assuming 0.2% swap fee
    function calculateSwapInAmount(
        uint256 _reserveIn,
        uint256 _tokenIn
    ) public pure returns (uint256) {
        return
            (Babylonian.sqrt(
                _reserveIn * ((_tokenIn * 3992000) + (_reserveIn * 3992004))
            ) - (_reserveIn * 1998)) / 1996;
    }

    /// @notice Add liquidity for YToken/WETH with the current balance
    function swap(
        uint256 _wethToSwap,
        uint256 _minYTokenOut
    ) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = address(WethUtils.weth);
        path[1] = address(yToken);
        WethUtils.weth.safeIncreaseAllowance(address(swapRouter), _wethToSwap);
        uint256[] memory _amounts = swapRouter.swapExactTokensForTokens(
            _wethToSwap,
            _minYTokenOut,
            path,
            address(this),
            block.timestamp
        );
        return _amounts[path.length - 1];
    }

    function swap2(
        uint256 _guardToSwap,
        uint256 _minYTokenOut
    ) internal returns (uint256) {
        address[] memory path = new address[](2);
        path[0] = address(GuardUtils.guard);
        path[1] = address(WethUtils.weth);
        GuardUtils.guard.safeIncreaseAllowance(address(swapRouter), _guardToSwap);
        uint256[] memory _amounts = swapRouter.swapExactTokensForTokens(
            _guardToSwap,
            _minYTokenOut,
            path,
            address(this),
            block.timestamp
        );
        return _amounts[path.length - 1];
    }


    /// @notice Add liquidity for YToken/WETH with the current balance and Move LP to Treasury
    function addLiquidity(
        uint256 yTokenAmt,
        uint256 wethAmt,
        uint256 slippage
    ) internal {
        require(
            treasury != address(0),
            "SwapStrategyPOL::addLiquidity:Invalid treasury address"
        );
        if (yTokenAmt > 0 && wethAmt > 0) {
            uint256 _minYTokenOut = (yTokenAmt *
                (SLIPPAGE_PRECISION - slippage)) / SLIPPAGE_PRECISION;
            uint256 _minWethOut = (wethAmt * (SLIPPAGE_PRECISION - slippage)) /
                SLIPPAGE_PRECISION;
            yToken.safeIncreaseAllowance(address(swapRouter), yTokenAmt);
            WethUtils.weth.safeIncreaseAllowance(address(swapRouter), wethAmt);
            (
                uint256 _amountA,
                uint256 _amountB,
                uint256 _liquidity
            ) = swapRouter.addLiquidity(
                    address(yToken),
                    address(WethUtils.weth),
                    yTokenAmt,
                    wethAmt,
                    _minYTokenOut,
                    _minWethOut,
                    treasury,
                    block.timestamp
                );
            emit LiquidityAdded(_liquidity, _amountA, _amountB);
        }
    }

    function cleanDust() external onlyOwner {
        yToken.safeTransfer(treasury, yToken.balanceOf(address(this)));
        WethUtils.weth.safeTransfer(
            treasury,
            WethUtils.weth.balanceOf(address(this))
        );
    }

    function changeSlippage(uint256 _newSlippage) external onlyOwner {
        require(
            _newSlippage <= SLIPPAGE_PRECISION,
            "SwapStrategyPOL::changeSlippage: Invalid slippage"
        );
        swapSlippage = _newSlippage;
        emit SlippageChanged(_newSlippage);
    }

    /* ========== EVENTS ============ */

    event LiquidityAdded(
        uint256 _lpBalance,
        uint256 _wethAmt,
        uint256 _yTokenAmt
    );
    event SlippageChanged(uint256 _newSlippage);

    uint256[45] private __gap;

}
