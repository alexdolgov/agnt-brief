// SPDX-License-Identifier: MIT

pragma solidity 0.6.12;

import "../libraries/math/SafeMath.sol";
import "../libraries/token/IERC20.sol";
import "../libraries/token/SafeERC20.sol";
import "../libraries/utils/ReentrancyGuard.sol";
import "../access/Governable.sol";

interface IPriceOracle {
    function getPrice(address token) external view returns (uint256);
}

interface IDexRouter {
    function swapExactTokensForTokens(
        uint amountIn,
        uint amountOutMin,
        address[] calldata path,
        address to,
        uint deadline
    ) external returns (uint[] memory amounts);
    
    function getAmountsOut(uint amountIn, address[] calldata path) 
        external view returns (uint[] memory amounts);
}

contract AmpedSwapRouter is ReentrancyGuard, Governable {
    using SafeMath for uint256;
    using SafeERC20 for IERC20;
    
    address public ampedToken;
    address public ampToken;
    address public dexRouter; // External DEX router (e.g., Uniswap V2 style)
    address public priceOracle;
    
    bool public isInitialized;
    bool public useExternalDex = false;
    
    uint256 public swapRatio = 10000; // 10000 = 1:1 ratio, can be adjusted
    uint256 public constant BASIS_POINTS = 10000;
    uint256 public maxSlippage = 300; // 3% max slippage
    
    mapping(address => mapping(address => address[])) public swapPaths;
    mapping(address => bool) public isHandler;
    
    event Swap(
        address indexed user,
        address indexed tokenIn,
        address indexed tokenOut,
        uint256 amountIn,
        uint256 amountOut
    );
    event SwapRatioSet(uint256 newRatio);
    event ExternalDexSet(address dexRouter, bool useExternal);
    event SwapPathSet(address tokenA, address tokenB, address[] path);
    event HandlerSet(address handler, bool isActive);
    
    modifier onlyHandler() {
        require(isHandler[msg.sender] || msg.sender == gov, "AmpedSwapRouter: forbidden");
        _;
    }
    
    function initialize(
        address _ampedToken,
        address _ampToken,
        address _dexRouter,
        address _priceOracle
    ) external onlyGov {
        require(!isInitialized, "AmpedSwapRouter: already initialized");
        isInitialized = true;
        
        ampedToken = _ampedToken;
        ampToken = _ampToken;
        dexRouter = _dexRouter;
        priceOracle = _priceOracle;
    }
    
    function setHandler(address _handler, bool _isActive) external onlyGov {
        isHandler[_handler] = _isActive;
        emit HandlerSet(_handler, _isActive);
    }
    
    function setSwapRatio(uint256 _ratio) external onlyGov {
        require(_ratio > 0 && _ratio <= 20000, "AmpedSwapRouter: invalid ratio");
        swapRatio = _ratio;
        emit SwapRatioSet(_ratio);
    }
    
    function setExternalDex(address _dexRouter, bool _useExternal) external onlyGov {
        dexRouter = _dexRouter;
        useExternalDex = _useExternal;
        emit ExternalDexSet(_dexRouter, _useExternal);
    }
    
    function setSwapPath(
        address _tokenA,
        address _tokenB,
        address[] calldata _path
    ) external onlyGov {
        require(_path.length >= 2, "AmpedSwapRouter: invalid path");
        require(_path[0] == _tokenA && _path[_path.length - 1] == _tokenB, "AmpedSwapRouter: invalid path endpoints");
        
        swapPaths[_tokenA][_tokenB] = _path;
        emit SwapPathSet(_tokenA, _tokenB, _path);
    }
    
    function swap(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountIn
    ) external nonReentrant onlyHandler returns (uint256) {
        require(_amountIn > 0, "AmpedSwapRouter: invalid amount");
        
        // Transfer tokens from caller
        IERC20(_tokenIn).safeTransferFrom(msg.sender, address(this), _amountIn);
        
        uint256 amountOut;
        
        if (useExternalDex && dexRouter != address(0)) {
            // Use external DEX for swap
            amountOut = _swapViaExternalDex(_tokenIn, _tokenOut, _amountIn);
        } else {
            // Use internal swap logic
            amountOut = _swapInternal(_tokenIn, _tokenOut, _amountIn);
        }
        
        // Transfer output tokens to caller
        IERC20(_tokenOut).safeTransfer(msg.sender, amountOut);
        
        emit Swap(msg.sender, _tokenIn, _tokenOut, _amountIn, amountOut);
        
        return amountOut;
    }
    
    function _swapInternal(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountIn
    ) private returns (uint256) {
        uint256 amountOut;
        
        // Handle AMPED <-> AMP swaps with configurable ratio
        if (_tokenIn == ampedToken && _tokenOut == ampToken) {
            amountOut = _amountIn.mul(swapRatio).div(BASIS_POINTS);
            
            // Ensure we have enough AMP tokens
            require(
                IERC20(ampToken).balanceOf(address(this)) >= amountOut,
                "AmpedSwapRouter: insufficient AMP balance"
            );
        } else if (_tokenIn == ampToken && _tokenOut == ampedToken) {
            amountOut = _amountIn.mul(BASIS_POINTS).div(swapRatio);
            
            // Ensure we have enough AMPED tokens
            require(
                IERC20(ampedToken).balanceOf(address(this)) >= amountOut,
                "AmpedSwapRouter: insufficient AMPED balance"
            );
        } else {
            revert("AmpedSwapRouter: unsupported pair for internal swap");
        }
        
        return amountOut;
    }
    
    function _swapViaExternalDex(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountIn
    ) private returns (uint256) {
        address[] memory path = swapPaths[_tokenIn][_tokenOut];
        require(path.length > 0, "AmpedSwapRouter: no swap path configured");
        
        // Get expected output
        uint[] memory amounts = IDexRouter(dexRouter).getAmountsOut(_amountIn, path);
        uint256 expectedOut = amounts[amounts.length - 1];
        
        // Calculate minimum acceptable output with slippage
        uint256 minOut = expectedOut.mul(BASIS_POINTS.sub(maxSlippage)).div(BASIS_POINTS);
        
        // Approve DEX router
        IERC20(_tokenIn).safeApprove(dexRouter, 0);
        IERC20(_tokenIn).safeApprove(dexRouter, _amountIn);
        
        // Perform swap
        uint[] memory swapAmounts = IDexRouter(dexRouter).swapExactTokensForTokens(
            _amountIn,
            minOut,
            path,
            address(this),
            block.timestamp + 300 // 5 minute deadline
        );
        
        return swapAmounts[swapAmounts.length - 1];
    }
    
    function getAmountOut(
        address _tokenIn,
        address _tokenOut,
        uint256 _amountIn
    ) external view returns (uint256) {
        if (useExternalDex && dexRouter != address(0)) {
            address[] memory path = swapPaths[_tokenIn][_tokenOut];
            if (path.length > 0) {
                uint[] memory amounts = IDexRouter(dexRouter).getAmountsOut(_amountIn, path);
                return amounts[amounts.length - 1];
            }
        }
        
        // Internal swap calculation
        if (_tokenIn == ampedToken && _tokenOut == ampToken) {
            return _amountIn.mul(swapRatio).div(BASIS_POINTS);
        } else if (_tokenIn == ampToken && _tokenOut == ampedToken) {
            return _amountIn.mul(BASIS_POINTS).div(swapRatio);
        }
        
        return 0;
    }
    
    // Admin functions to manage token reserves
    function depositTokens(address _token, uint256 _amount) external onlyGov {
        IERC20(_token).safeTransferFrom(msg.sender, address(this), _amount);
    }
    
    function withdrawTokens(address _token, uint256 _amount, address _receiver) external onlyGov {
        IERC20(_token).safeTransfer(_receiver, _amount);
    }
    
    function emergencyWithdraw(address _token, address _receiver) external onlyGov {
        uint256 balance = IERC20(_token).balanceOf(address(this));
        if (balance > 0) {
            IERC20(_token).safeTransfer(_receiver, balance);
        }
    }
}