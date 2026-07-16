// SPDX-License-Identifier: MIT
pragma solidity 0.8.5;
interface IUniswapV2Factory {
    event PairCreated(address indexed token0, address indexed token1, address pair, uint);

    function feeTo() external view returns (address);
    function feeToSetter() external view returns (address);

    function getPair(address tokenA, address tokenB) external view returns (address pair);
    function allPairs(uint) external view returns (address pair);
    function allPairsLength() external view returns (uint);

    function createPair(address tokenA, address tokenB) external returns (address pair);

    function setFeeTo(address) external;
    function setFeeToSetter(address) external;
}
interface IUniswapV2Pair {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external pure returns (string memory);
    function symbol() external pure returns (string memory);
    function decimals() external pure returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);

    function DOMAIN_SEPARATOR() external view returns (bytes32);
    function PERMIT_TYPEHASH() external pure returns (bytes32);
    function nonces(address owner) external view returns (uint);

    function permit(address owner, address spender, uint value, uint deadline, uint8 v, bytes32 r, bytes32 s) external;

    event Mint(address indexed sender, uint amount0, uint amount1);
    event Burn(address indexed sender, uint amount0, uint amount1, address indexed to);
    event Swap(
        address indexed sender,
        uint amount0In,
        uint amount1In,
        uint amount0Out,
        uint amount1Out,
        address indexed to
    );
    event Sync(uint112 reserve0, uint112 reserve1);

    function MINIMUM_LIQUIDITY() external pure returns (uint);
    function factory() external view returns (address);
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function price0CumulativeLast() external view returns (uint);
    function price1CumulativeLast() external view returns (uint);
    function kLast() external view returns (uint);

    function mint(address to) external returns (uint liquidity);
    function burn(address to) external returns (uint amount0, uint amount1);
    function swap(uint amount0Out, uint amount1Out, address to, bytes calldata data) external;
    function skim(address to) external;
    function sync() external;

    function initialize(address, address) external;
}
interface IUniswapV2Router01 {
    function factory() external pure returns (address);
    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint amountADesired,
        uint amountBDesired,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);
    function addLiquidityETH(
        address token,
        uint amountTokenDesired,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external payable returns (uint amountToken, uint amountETH, uint liquidity);
    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityETH(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external returns (uint amountToken, uint amountETH);
    function removeLiquidityWithPermit(
        address tokenA,
        address tokenB,
        uint liquidity,
        uint amountAMin,
        uint amountBMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountA, uint amountB);
    function removeLiquidityETHWithPermit(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountToken, uint amountETH);
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function swapTokensForExactTokens(
        uint amountOut,
        uint amountInMax,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function swapExactETHForTokens(uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        payable
        returns (uint[] memory amounts);
    function swapTokensForExactETH(uint amountOut, uint amountInMax, address[] calldata path, address to, uint deadline)
        external
        returns (uint[] memory amounts);
    function swapExactTokensForETH(uint amountIn, uint amountOutMin, address[] calldata path, address to, uint deadline)
        external
        returns (uint[] memory amounts);
    function swapETHForExactTokens(uint amountOut, address[] calldata path, address to, uint deadline)
        external
        payable
        returns (uint[] memory amounts);

    function quote(uint amountA, uint reserveA, uint reserveB) external pure returns (uint amountB);
    function getAmountOut(uint amountIn, uint reserveIn, uint reserveOut) external pure returns (uint amountOut);
    function getAmountIn(uint amountOut, uint reserveIn, uint reserveOut) external pure returns (uint amountIn);
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);
    function getAmountsIn(uint amountOut, address[] calldata path) external view returns (uint[] memory amounts);
}

interface IUniswapV2Router02 is IUniswapV2Router01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline
    ) external returns (uint amountETH);
    function removeLiquidityETHWithPermitSupportingFeeOnTransferTokens(
        address token,
        uint liquidity,
        uint amountTokenMin,
        uint amountETHMin,
        address to,
        uint deadline,
        bool approveMax, uint8 v, bytes32 r, bytes32 s
    ) external returns (uint amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external payable;
    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external;
}

interface IERC20 {
    event Approval(address indexed owner, address indexed spender, uint value);
    event Transfer(address indexed from, address indexed to, uint value);

    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint);
    function balanceOf(address owner) external view returns (uint);
    function allowance(address owner, address spender) external view returns (uint);

    function approve(address spender, uint value) external returns (bool);
    function transfer(address to, uint value) external returns (bool);
    function transferFrom(address from, address to, uint value) external returns (bool);
}

interface IWETH {
    function deposit() external payable;
    function transfer(address to, uint value) external returns (bool);
    function withdraw(uint) external;
}

contract RomaPosrednik {
    IUniswapV2Router02 public ROUTER;
    
    mapping(address => bool) whitelistModerator;
    mapping(address => bool) whitelistTradeable;
    mapping(address => bool) whitelistTrader;
    mapping(address => bool) whitelistOutput;
    
    event SetModerator(address moderator, bool value);
    event SetTrader(address trader, bool value);
    event SetTradeable(address tradeable, bool value);
    event SetOutput(address output, bool value);
    event Withdraw(address wallet, uint amount);
    event Approve(address token, uint amount);
    event SwapExactTokensForTokens(uint amountIn, uint amountOutMin, address[] path, address to, uint deadline);
    event SwapTokensForExactTokens(uint amountOut, uint amountInMax, address[] path, address to, uint deadline);
    
    modifier traderOnly {
        require(whitelistTrader[msg.sender], "Missing trader rights");
        _;
    }
    modifier moderatorOnly {
        require(whitelistModerator[msg.sender], "Missing moderator rights");
        _;
    }
    
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) public traderOnly returns (uint[] memory amounts) {
        for (uint i = 0; i < path.length; i++) require(whitelistTradeable[path[i]], "Not tradeable");
        amounts = ROUTER.swapExactTokensForTokens(amountIn, amountOutMin, path, address(this), deadline);
        emit SwapExactTokensForTokens(amountIn, amountOutMin, path, to, deadline);
    }
    function swapTokensForExactTokens(
        uint amountOut,
        uint amountInMax,
        address[] calldata path,
        address to,
        uint deadline
    ) public traderOnly returns (uint[] memory amounts) {
        for (uint i = 0; i < path.length; i++) require(whitelistTradeable[path[i]], "Not tradeable");
        amounts = ROUTER.swapTokensForExactTokens(amountOut, amountInMax, path, address(this), deadline);
        emit SwapTokensForExactTokens(amountOut, amountInMax, path, to, deadline);
    }
    function setModerators(address[] memory _moderators, bool[] memory _values) public moderatorOnly {
        for (uint i = 0; i < _moderators.length; i++) {
            whitelistModerator[_moderators[i]] = _values[i];
            emit SetModerator(_moderators[i], _values[i]);
        }
    }
    function setTraders(address[] memory _traders, bool[] memory _values) public moderatorOnly {
        for (uint i = 0; i < _traders.length; i++) {
            whitelistTrader[_traders[i]] = _values[i];
            emit SetTrader(_traders[i], _values[i]);
        }
    }
    function setTradeables(address[] memory _tradeables, bool[] memory _values) public moderatorOnly {
        for (uint i = 0; i < _tradeables.length; i++) {
            IERC20(_tradeables[i]).approve(address(ROUTER), _values[i] ? 2**256-1 : 0);
            emit Approve(address(_tradeables[i]), 2**256-1);
            whitelistTradeable[_tradeables[i]] = _values[i];
            emit SetTradeable(_tradeables[i], _values[i]);
        }
    }
    function setTradeablesWithoutApprove(address[] memory _tradeables, bool[] memory _values) public moderatorOnly {
        for (uint i = 0; i < _tradeables.length; i++) {
            whitelistTradeable[_tradeables[i]] = _values[i];
            emit SetTradeable(_tradeables[i], _values[i]);
        }
    }
    function setOutputs(address[] memory _outputs, bool[] memory _values) public moderatorOnly {
        for (uint i = 0; i < _outputs.length; i++) {
            whitelistOutput[_outputs[i]] = _values[i];
            emit SetOutput(_outputs[i], _values[i]);
        }
    }
    function withdraw(IERC20 _token, uint _amount, address _to) public traderOnly {
        require(whitelistOutput[_to], "Target wallet is not whitelisted");
        _token.transfer(_to, _amount);
        emit Withdraw(_to, _amount);
    }
    function approveMultiple(IERC20[] memory _tokens) public traderOnly {
        for (uint i = 0; i < _tokens.length; i++) {
            _tokens[i].approve(address(ROUTER), 2**256-1);
            emit Approve(address(_tokens[i]), 2**256-1);
        }
    }
    function approve(IERC20 _token) public traderOnly {
        _token.approve(address(ROUTER), 2**256-1);
        emit Approve(address(_token), 2**256-1);
    }
    function disapprove(IERC20 _token) public traderOnly {
        _token.approve(address(ROUTER), 0);
        emit Approve(address(_token), 0);
    }
    constructor(address _moderator, IUniswapV2Router02 _router) {
        ROUTER = _router;
        whitelistModerator[_moderator] = true;
        emit SetModerator(_moderator, true);
    }
}