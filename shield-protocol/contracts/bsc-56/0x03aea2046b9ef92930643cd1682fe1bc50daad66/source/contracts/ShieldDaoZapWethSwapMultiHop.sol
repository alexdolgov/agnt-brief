// SPDX-License-Identifier: MIT
pragma solidity 0.8.4;

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

interface IUniswapV2Router02 {
    function factory() external pure returns (address);
    function addLiquidity(
        address tokenA, address tokenB,
        uint amountADesired, uint amountBDesired,
        uint amountAMin, uint amountBMin,
        address to, uint deadline
    ) external returns (uint amountA, uint amountB, uint liquidity);
    function swapExactTokensForTokens(
        uint amountIn, uint amountOutMin,
        address[] calldata path, address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    function getAmountsOut(uint amountIn, address[] calldata path) external view returns (uint[] memory amounts);
}

interface IUniswapV2Factory {
    function getPair(address tokenA, address tokenB) external view returns (address pair);
}

interface IShieldDaoChef {
    function lpToken(uint256 pid) external view returns (IERC20);
    function deposit(uint256 pid, uint256 amount, address to) external;
}

interface IWETH is IERC20 {
    function deposit() external payable;
    function withdraw(uint wad) external;
}

contract ShieldDaoZapWethSwapMultiHop is OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    struct ZapInfo {
        uint256 pid;
        IERC20 tokenA;
        IERC20 tokenB;
        address intermediateToken; // For multi-hop swaps (e.g., GUARD in WETH→GUARD→GUARDX)
        bool inactive;
    }

    ZapInfo[] public zaps;
    IShieldDaoChef public ShieldDaoChef;
    IUniswapV2Router02 public uniRouter;
    IUniswapV2Factory public uniFactory;
    IWETH public weth;

    function initialize(
        address _shieldDaoChef,
        address _uniRouter,
        address _weth
    ) external initializer {
        __Ownable_init_unchained();
        __ReentrancyGuard_init_unchained();
        ShieldDaoChef = IShieldDaoChef(_shieldDaoChef);
        uniRouter = IUniswapV2Router02(_uniRouter);
        uniFactory = IUniswapV2Factory(uniRouter.factory());
        weth = IWETH(_weth);
    }

    function zapETH(
        uint256 _zapId,
        uint256 _minLiquidity,
        bool _transferResidual
    ) external payable nonReentrant {
        ZapInfo memory _info = zaps[_zapId];
        require(!_info.inactive, "Zap inactive");
        require(msg.value > 0, "No BNB sent");

        // Convert BNB → WETH
        weth.deposit{value: msg.value}();
        uint256 wethAmount = msg.value;

        address _lp = address(ShieldDaoChef.lpToken(_info.pid));
        require(_lp != address(0), "Invalid LP");

        (IERC20 token0, IERC20 token1) = (_info.tokenA, _info.tokenB);
        
        // Split WETH amount for both tokens
        uint256 halfAmount = wethAmount / 2;
        
        // Swap to token0 (with multi-hop support if needed)
        uint256 token0Received = _swapToTarget(
            address(weth),
            address(token0),
            halfAmount,
            _info.intermediateToken
        );

        // Swap to token1 (with multi-hop support if needed)
        uint256 token1Received = _swapToTarget(
            address(weth),
            address(token1),
            wethAmount - halfAmount,
            _info.intermediateToken
        );

        // Add liquidity
        approveToken(address(token0), address(uniRouter), token0Received);
        approveToken(address(token1), address(uniRouter), token1Received);

        (uint256 usedA, uint256 usedB, uint256 liquidity) = uniRouter.addLiquidity(
            address(token0),
            address(token1),
            token0Received,
            token1Received,
            1,
            1,
            address(this),
            block.timestamp
        );
        require(liquidity >= _minLiquidity, "Slippage too high");

        // Deposit to farm
        approveToken(_lp, address(ShieldDaoChef), liquidity);
        ShieldDaoChef.deposit(_info.pid, liquidity, msg.sender);

        // Transfer dust
        if (_transferResidual) {
            if (token0Received > usedA) {
                token0.safeTransfer(msg.sender, token0Received - usedA);
            }
            if (token1Received > usedB) {
                token1.safeTransfer(msg.sender, token1Received - usedB);
            }
        }

        emit Zapped(_zapId, msg.value, liquidity);
    }

    // Handles both direct and multi-hop swaps
    function _swapToTarget(
        address fromToken,
        address toToken,
        uint256 amountIn,
        address intermediateToken
    ) internal returns (uint256) {
        address[] memory path;
        
        if (fromToken == toToken) {
            return amountIn;
        }

        // Check for direct path first
        if (uniFactory.getPair(fromToken, toToken) != address(0)) {
            path = new address[](2);
            path[0] = fromToken;
            path[1] = toToken;
        }
        // Use predefined intermediate token if available
        else if (intermediateToken != address(0) && 
                uniFactory.getPair(fromToken, intermediateToken) != address(0) &&
                uniFactory.getPair(intermediateToken, toToken) != address(0)) {
            path = new address[](3);
            path[0] = fromToken;
            path[1] = intermediateToken;
            path[2] = toToken;
        }
        // Try WETH as intermediate if different from target
        else if (toToken != address(weth) &&
                uniFactory.getPair(fromToken, address(weth)) != address(0) &&
                uniFactory.getPair(address(weth), toToken) != address(0)) {
            path = new address[](3);
            path[0] = fromToken;
            path[1] = address(weth);
            path[2] = toToken;
        } else {
            revert("No valid swap path");
        }

        approveToken(fromToken, address(uniRouter), amountIn);
        uint256[] memory amounts = uniRouter.swapExactTokensForTokens(
            amountIn,
            1, // minAmountOut - can be improved with price oracle
            path,
            address(this),
            block.timestamp
        );
        return amounts[amounts.length - 1];
    }

    function approveToken(address _token, address _spender, uint256 _amount) public {
        IERC20(_token).safeApprove(_spender, 0);
        IERC20(_token).safeApprove(_spender, _amount);
    }

    // ========= ADMIN FUNCTIONS =========
    function addZap(
        uint256 _pid,
        address _tokenA,
        address _tokenB,
        address _intermediateToken
    ) external onlyOwner {
        zaps.push(ZapInfo({
            pid: _pid,
            tokenA: IERC20(_tokenA),
            tokenB: IERC20(_tokenB),
            intermediateToken: _intermediateToken,
            inactive: false
        }));
        emit ZapAdded(zaps.length - 1, _tokenA, _tokenB, _pid);
    }

    function removeZap(uint256 _zapId) external onlyOwner {
        require(_zapId < zaps.length, "Invalid zapId");
        zaps[_zapId].inactive = true;
        emit ZapRemoved(_zapId);
    }

    // ========= EVENTS =========
    event ZapAdded(uint256 indexed _id, address _tokenA, address _tokenB, uint256 _pid);
    event ZapRemoved(uint256 indexed _id);
    event Zapped(uint256 indexed _zapId, uint256 _bnbAmount, uint256 _liquidity);

    receive() external payable {}
}