// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.33;

interface IERC20 {
    function balanceOf(address account) external view returns (uint256);
    function transfer(address to, uint256 amount) external returns (bool);
}

interface IWETH is IERC20 {
    function deposit() external payable;
}

interface IUniswapV2Pair {
    function token0() external view returns (address);
    function token1() external view returns (address);
    function getReserves() external view returns (uint112 reserve0, uint112 reserve1, uint32 blockTimestampLast);
    function swap(uint256 amount0Out, uint256 amount1Out, address to, bytes calldata data) external;
}

interface IUniswapV3Pool {
    function token0() external view returns (address);
    function token1() external view returns (address);

    function swap(
        address recipient,
        bool zeroForOne,
        int256 amountSpecified,
        uint160 sqrtPriceLimitX96,
        bytes calldata data
    ) external returns (int256 amount0, int256 amount1);
}

interface IUniswapV3SwapCallback {
    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external;
}

contract DefiIRAAutoBuy is IUniswapV3SwapCallback {
    error OnlyBot();
    error BpsTooHigh();
    error InvalidPoolConfig();
    error InvalidPairSwapPath();
    error InvalidV3Callback();
    error EthTransferFailed();
    error TokenTransferFailed();
    error Reentrancy();

    uint256 public constant BPS_DENOMINATOR = 10_000;

    // Uniswap V3 swap bounds from TickMath.
    uint160 private constant MIN_SQRT_RATIO = 4295128739 + 1;
    uint160 private constant MAX_SQRT_RATIO = 1461446703485210103287273052203988822378723970342 - 1;

    address public immutable treasury;
    address public immutable bot;

    address public immutable IRA_CBBTC_POOL;
    address public immutable VDT_WETH_POOL;
    address public immutable WETH_CBBTC_POOL;

    address public immutable IRA;
    address public immutable VDT;
    address public immutable cbBTC;
    address public immutable WETH;

    address private immutable _v3Token0;
    address private immutable _v3Token1;
    bool private _v3SwapActive;
    bool private _v3ExpectToken0Input;
    bool private _locked;
    uint256 public immutable botRefundWei;

    uint256 public iraBps = 25; // 0.25%
    uint256 public vdtBps = 25; // 0.25%
    uint256 public btcBps = 100; // 1%

    event BpsUpdated(string indexed bpsType, uint256 oldBps, uint256 newBps);
    event BuyIRAVDTExecuted(uint256 totalEthValue, uint256 iraInputEth, uint256 vdtInputEth);
    event BuyBTCExecuted(uint256 totalEthValue, uint256 btcInputEth);
    event NonEthSwept(address indexed token, uint256 amount);
    event EthSwept(uint256 amount);
    event BotRefundPaid(uint256 amount);

    modifier onlyBot() {
        if (msg.sender != bot) revert OnlyBot();
        _;
    }

    modifier nonReentrant() {
        if (_locked) revert Reentrancy();
        _locked = true;
        _;
        _locked = false;
    }

    constructor() {
        treasury = 0x9B6A2Be500e38d8508Dc445034dCEC3110a6834D;
        bot = 0xD5125dd532Fab26a7bc1EB54046811bE33B54Bb1;

        IRA_CBBTC_POOL = 0xAbC07a34e62bB53918fDbD13A51004E226Bbe9Fa;
        VDT_WETH_POOL = 0xbfec1cF9bF7ed03e88A3a63b3EA2c81CF3b4F2B5;
        WETH_CBBTC_POOL = 0x8c7080564B5A792A33Ef2FD473fbA6364d5495e5;

        address v3t0 = IUniswapV3Pool(WETH_CBBTC_POOL).token0();
        address v3t1 = IUniswapV3Pool(WETH_CBBTC_POOL).token1();

        address iraPair0 = IUniswapV2Pair(IRA_CBBTC_POOL).token0();
        address iraPair1 = IUniswapV2Pair(IRA_CBBTC_POOL).token1();

        address vdtPair0 = IUniswapV2Pair(VDT_WETH_POOL).token0();
        address vdtPair1 = IUniswapV2Pair(VDT_WETH_POOL).token1();

        address weth_ = _findShared(v3t0, v3t1, vdtPair0, vdtPair1);
        address cbbtc_ = _findShared(v3t0, v3t1, iraPair0, iraPair1);
        if (weth_ == address(0) || cbbtc_ == address(0) || weth_ == cbbtc_) revert InvalidPoolConfig();

        address ira_ = iraPair0 == cbbtc_ ? iraPair1 : iraPair0;
        address vdt_ = vdtPair0 == weth_ ? vdtPair1 : vdtPair0;

        if (ira_ == address(0) || vdt_ == address(0) || ira_ == cbbtc_ || vdt_ == weth_) revert InvalidPoolConfig();

        WETH = weth_;
        cbBTC = cbbtc_;
        IRA = ira_;
        VDT = vdt_;
        botRefundWei = 0.00001 ether;

        _v3Token0 = v3t0;
        _v3Token1 = v3t1;
    }

    receive() external payable {}

    function buyIRAVDT() external onlyBot nonReentrant {
        uint256 total = _totalEthValue();

        uint256 iraInput = (total * iraBps) / BPS_DENOMINATOR;
        uint256 vdtInput = (total * vdtBps) / BPS_DENOMINATOR;

        _buyVdt(vdtInput);
        _buyIra(iraInput);
        emit BuyIRAVDTExecuted(total, iraInput, vdtInput);
        _payFixedBotRefund();
    }

    function buyBTC() external onlyBot nonReentrant {
        uint256 total = _totalEthValue();
        uint256 btcInput = (total * btcBps) / BPS_DENOMINATOR;

        uint256 wethIn = _ensureWeth(btcInput);
        _swapV3WethToCbBtc(wethIn, address(this));
        emit BuyBTCExecuted(total, btcInput);
        _payFixedBotRefund();
    }

    function sweepNonEthToTreasury() external onlyBot nonReentrant {
        _sweepToken(WETH);
        _sweepToken(cbBTC);
        _sweepToken(IRA);
        _sweepToken(VDT);
        _payFixedBotRefund();
    }

    function sweepEthToTreasury() external onlyBot nonReentrant {
        _payFixedBotRefund();

        uint256 amount = address(this).balance;
        if (amount == 0) return;
        (bool ok,) = payable(treasury).call{value: amount}("");
        if (!ok) revert EthTransferFailed();
        emit EthSwept(amount);
    }

    function setIRABps(uint256 newBps) external onlyBot nonReentrant {
        if (newBps > BPS_DENOMINATOR) revert BpsTooHigh();
        uint256 oldBps = iraBps;
        iraBps = newBps;
        emit BpsUpdated("IRA", oldBps, newBps);
    }

    function setVDTBps(uint256 newBps) external onlyBot nonReentrant {
        if (newBps > BPS_DENOMINATOR) revert BpsTooHigh();
        uint256 oldBps = vdtBps;
        vdtBps = newBps;
        emit BpsUpdated("VDT", oldBps, newBps);
    }

    function setBTCBps(uint256 newBps) external onlyBot nonReentrant {
        if (newBps > BPS_DENOMINATOR) revert BpsTooHigh();
        uint256 oldBps = btcBps;
        btcBps = newBps;
        emit BpsUpdated("BTC", oldBps, newBps);
    }

    function uniswapV3SwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external override {
        if (msg.sender != WETH_CBBTC_POOL || data.length != 0 || !_v3SwapActive) revert InvalidV3Callback();

        if (_v3ExpectToken0Input) {
            if (amount0Delta <= 0 || amount1Delta > 0) revert InvalidV3Callback();
            if (!IERC20(_v3Token0).transfer(msg.sender, uint256(amount0Delta))) revert TokenTransferFailed();
        } else {
            if (amount1Delta <= 0 || amount0Delta > 0) revert InvalidV3Callback();
            if (!IERC20(_v3Token1).transfer(msg.sender, uint256(amount1Delta))) revert TokenTransferFailed();
        }
    }

    function _buyVdt(uint256 ethInput) internal {
        uint256 wethIn = _ensureWeth(ethInput);
        _swapV2ExactIn(VDT_WETH_POOL, WETH, VDT, wethIn, address(this));
    }

    function _buyIra(uint256 ethInput) internal {
        uint256 wethIn = _ensureWeth(ethInput);
        uint256 cbbtcOut = _swapV3WethToCbBtc(wethIn, address(this));
        _swapV2ExactIn(IRA_CBBTC_POOL, cbBTC, IRA, cbbtcOut, address(this));
    }

    function _totalEthValue() internal view returns (uint256) {
        return address(this).balance + IERC20(WETH).balanceOf(address(this));
    }

    function _ensureWeth(uint256 targetAmount) internal returns (uint256) {
        if (targetAmount == 0) return 0;

        uint256 wethBal = IERC20(WETH).balanceOf(address(this));
        if (wethBal >= targetAmount) return targetAmount;

        uint256 missing = targetAmount - wethBal;
        uint256 ethBal = address(this).balance;
        uint256 toWrap = missing < ethBal ? missing : ethBal;

        if (toWrap != 0) {
            IWETH(WETH).deposit{value: toWrap}();
            wethBal += toWrap;
        }

        return wethBal < targetAmount ? wethBal : targetAmount;
    }

    function _swapV3WethToCbBtc(uint256 amountIn, address recipient) internal returns (uint256 amountOut) {
        if (amountIn == 0) return 0;

        bool zeroForOne = WETH == _v3Token0;
        _v3SwapActive = true;
        _v3ExpectToken0Input = zeroForOne;
        (int256 amount0, int256 amount1) = IUniswapV3Pool(WETH_CBBTC_POOL).swap(
            recipient,
            zeroForOne,
            int256(amountIn),
            zeroForOne ? MIN_SQRT_RATIO : MAX_SQRT_RATIO,
            ""
        );
        _v3SwapActive = false;

        int256 outDelta = zeroForOne ? amount1 : amount0;
        amountOut = uint256(-outDelta);
    }

    function _swapV2ExactIn(
        address pair,
        address tokenIn,
        address tokenOut,
        uint256 amountIn,
        address recipient
    ) internal returns (uint256 amountOut) {
        if (amountIn == 0) return 0;

        address token0 = IUniswapV2Pair(pair).token0();
        address token1 = IUniswapV2Pair(pair).token1();
        (uint112 reserve0, uint112 reserve1,) = IUniswapV2Pair(pair).getReserves();

        bool zeroForOne;
        uint256 reserveIn;
        uint256 reserveOut;

        if (tokenIn == token0 && tokenOut == token1) {
            zeroForOne = true;
            reserveIn = reserve0;
            reserveOut = reserve1;
        } else if (tokenIn == token1 && tokenOut == token0) {
            zeroForOne = false;
            reserveIn = reserve1;
            reserveOut = reserve0;
        } else {
            revert InvalidPairSwapPath();
        }

        uint256 amountInWithFee = amountIn * 997;
        amountOut = (amountInWithFee * reserveOut) / ((reserveIn * 1000) + amountInWithFee);

        if (!IERC20(tokenIn).transfer(pair, amountIn)) revert TokenTransferFailed();

        if (zeroForOne) {
            IUniswapV2Pair(pair).swap(0, amountOut, recipient, "");
        } else {
            IUniswapV2Pair(pair).swap(amountOut, 0, recipient, "");
        }
    }

    function _sweepToken(address token) internal {
        uint256 bal = IERC20(token).balanceOf(address(this));
        if (bal == 0) return;
        if (!IERC20(token).transfer(treasury, bal)) revert TokenTransferFailed();
        emit NonEthSwept(token, bal);
    }

    function _payFixedBotRefund() internal {
        if (address(this).balance < botRefundWei) return;
        (bool ok,) = payable(bot).call{value: botRefundWei}("");
        if (!ok) revert EthTransferFailed();
        emit BotRefundPaid(botRefundWei);
    }

    function _findShared(address a0, address a1, address b0, address b1) internal pure returns (address) {
        if (a0 == b0 || a0 == b1) return a0;
        if (a1 == b0 || a1 == b1) return a1;
        return address(0);
    }
}
