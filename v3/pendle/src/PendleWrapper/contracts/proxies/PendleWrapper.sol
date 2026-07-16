// solhint-disable var-name-mixedcase
// SPDX-License-Identifier: MIT
/*
 * MIT License
 * ===========
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 */
pragma solidity 0.7.6;
pragma abicoder v2;
import "../libraries/PendleStructs.sol";
import "../libraries/TokenUtilsLib.sol";
import "../interfaces/IWETH.sol";
import "../interfaces/IPendleMarket.sol";
import "../interfaces/IAaveV2LendingPool.sol";
import "../periphery/WithdrawableV2.sol";
import "../interfaces/IPendleForge.sol";
import "../interfaces/IUniswapV2Router02.sol";
import "../interfaces/IPendleYieldToken.sol";
import "../interfaces/IDMMLiquidityRouter.sol";
import "../interfaces/IPendleLiquidityMining.sol";
import "../interfaces/IPendleLiquidityMiningV2.sol";
import "../interfaces/ICToken.sol";
import "../interfaces/IJoeBar.sol";
import "./ICEther.sol";
import "../libraries/UniswapV2Lib.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

enum Mode {
    AAVE,
    COMPOUND,
    UNI,
    SUSHI,
    KYBER,
    xJOE
}

struct Element {
    address token;
    uint256 amount;
}

struct Approval {
    address token;
    address to;
}

struct DataTknzSingle {
    address token;
    uint256 amount;
}

struct DataTknz {
    DataTknzSingle single;
    DataAddLiqUniFork double;
    address forge;
    uint256 expiryYT;
}

struct DataYO {
    address OT;
    address YT;
    uint256 amountYO;
}

struct DataAddLiqOT {
    address baseToken;
    uint256 amountTokenDesired;
    uint256 amountTokenMin;
    uint256 deadline;
    address liqMiningAddr;
}

struct DataAddLiqYT {
    address baseToken;
    uint256 amountTokenDesired;
    uint256 amountTokenMin;
    bytes32 marketFactoryId;
    address liqMiningAddr;
}

struct DataAddLiqUniFork {
    address tokenA;
    address tokenB;
    uint256 amountADesired;
    uint256 amountBDesired;
    uint256 amountAMin;
    uint256 amountBMin;
    uint256 deadline;
    address kyberPool;
    uint256[2] kybervReserveRatioBounds;
}

struct ConstructorData {
    IPendleRouter pendleRouter;
    IAaveV2LendingPool aaveLendingPool;
    IUniswapV2Router02 uniRouter;
    IUniswapV2Router02 sushiRouter;
    IDMMLiquidityRouter kyberRouter;
    IJoeBar joeBar;
    IWETH weth;
    bytes32 codeHashUni;
    bytes32 codeHashSushi;
    bool deployedOnAvax;
}

library SmartArray {
    function add(
        Element[7] memory arr,
        address token,
        uint256 amount
    ) internal pure {
        if (token == address(0)) return;
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i].token == token) {
                arr[i].amount += amount;
                return;
            }
            if (arr[i].token == address(0)) {
                arr[i] = Element(token, amount);
                return;
            }
        }
        revert("INTERNAL_ERROR");
    }

    function add(Element[7] memory arr, address token) internal pure {
        add(arr, token, 0);
    }

    function add(Element[7] memory arr, DataTknz calldata data) internal pure {
        add(arr, data.single.token, data.single.amount);
        add(arr, data.double.tokenA, data.double.amountADesired);
        add(arr, data.double.tokenB, data.double.amountBDesired);
    }

    function add(Element[7] memory arr, DataAddLiqYT calldata data) internal pure {
        add(arr, data.baseToken, data.amountTokenDesired);
    }

    function add(Element[7] memory arr, DataAddLiqOT calldata data) internal pure {
        add(arr, data.baseToken, data.amountTokenDesired);
    }

    function add(Element[7] memory arr, DataYO memory data) internal pure {
        add(arr, data.OT, data.amountYO);
        add(arr, data.YT, data.amountYO);
    }
}

contract PendleWrapper is ReentrancyGuard {
    using TokenUtils for IERC20;
    using SmartArray for Element[7];

    address public constant ETH_ADDRESS = address(0xEeeeeEeeeEeEeeEeEeEeeEEEeeeeEeeeeeeeEEeE);

    bytes32 public immutable codeHashUni;
    bytes32 public immutable codeHashSushi;

    IAaveV2LendingPool public immutable aaveLendingPool;
    IUniswapV2Router02 public immutable uniRouter;
    IUniswapV2Router02 public immutable sushiRouter;
    IDMMLiquidityRouter public immutable kyberRouter;
    IJoeBar public immutable joeBar;
    IWETH public immutable weth;
    bool public immutable deployedOnAvax;

    IPendleRouter public immutable pendleRouter;
    IPendleData public immutable pendleData;

    event SwapEventYT(
        address user,
        address inToken,
        address outToken,
        uint256 inAmount,
        uint256 outAmount
    );
    event MintYieldTokens(
        bytes32 forgeId,
        address indexed underlyingAsset,
        uint256 indexed expiry,
        uint256 amountToTokenize,
        uint256 amountTokenMinted,
        address indexed user
    );
    event AddLiquidityYT(
        address indexed sender,
        bytes32 marketFactoryId,
        address token0,
        address token1,
        uint256 token0Amount,
        uint256 token1Amount,
        uint256 exactOutLp
    );
    event AddLiquidityOT(
        address indexed sender,
        address token0,
        address token1,
        uint256 token0Amount,
        uint256 token1Amount,
        uint256 exactOutLp
    );
    event RawTokenToYTokenSingle(
        address indexed user,
        address rawAsset,
        address yieldBearingToken,
        uint256 amountIn,
        uint256 amountOut
    );
    event RawTokenToYTokenDouble(
        address indexed user,
        address token0,
        address token1,
        address lpToken,
        uint256 amountIn0,
        uint256 amountIn1,
        uint256 lpOut
    );

    constructor(ConstructorData memory _data) {
        pendleRouter = _data.pendleRouter;
        pendleData = _data.pendleRouter.data();
        aaveLendingPool = _data.aaveLendingPool;
        uniRouter = _data.uniRouter;
        sushiRouter = _data.sushiRouter;
        joeBar = _data.joeBar;
        kyberRouter = _data.kyberRouter;
        weth = _data.weth;
        codeHashUni = _data.codeHashUni;
        codeHashSushi = _data.codeHashSushi;
        deployedOnAvax = _data.deployedOnAvax;
    }

    receive() external payable {}

    function insAddDualLiqForYT(
        Mode mode,
        DataTknz calldata dataTknz,
        DataAddLiqYT calldata dataAddYT
    )
        external
        payable
        nonReentrant
        returns (
            DataYO memory dataYO,
            uint256 lpOut,
            uint256 amountBaseTokenUsed
        )
    {
        Element[7] memory arr;
        arr.add(dataTknz);
        arr.add(dataAddYT);
        _pullToken(arr);

        dataYO = _insTokenize(mode, address(this), dataTknz);
        arr.add(dataYO);

        (amountBaseTokenUsed, lpOut) = _addDualLiqYT(dataYO, dataAddYT);
        arr.add(_getPendleLp(dataAddYT.marketFactoryId, dataAddYT.baseToken, dataYO.YT));

        _pushToken(arr);
    }

    function insAddSingleLiq(
        Mode mode,
        DataTknz calldata dataTknz,
        bytes32 marketFactoryId,
        address baseToken,
        uint256 minOutLp,
        address liqMiningAddr
    ) external payable nonReentrant returns (DataYO memory dataYO, uint256 lpOut) {
        Element[7] memory arr;
        arr.add(dataTknz);
        _pullToken(arr);

        dataYO = _insTokenize(mode, address(this), dataTknz);
        arr.add(dataYO);

        lpOut = _addSingleLiqYT(dataYO, marketFactoryId, baseToken, minOutLp, liqMiningAddr);
        arr.add(_getPendleLp(marketFactoryId, baseToken, dataYO.YT));

        _pushToken(arr);
    }

    function insAddDualLiqForOT(
        Mode mode,
        DataTknz calldata dataTknz,
        DataAddLiqOT calldata dataAddOT
    )
        external
        payable
        nonReentrant
        returns (
            DataYO memory dataYO,
            uint256 lpOutOT,
            uint256 amountBaseTokenUsedOT
        )
    {
        Element[7] memory arr;
        arr.add(dataTknz);
        arr.add(dataAddOT);
        _pullToken(arr);

        dataYO = _insTokenize(mode, address(this), dataTknz);
        arr.add(dataYO);

        (amountBaseTokenUsedOT, lpOutOT) = _addDualLiqOT(dataYO, dataAddOT);
        // LP has been sent directly to msg.sender or added to liqMining

        _pushToken(arr);
    }

    function insAddDualLiqForOTandYT(
        Mode mode,
        DataTknz calldata dataTknz,
        DataAddLiqOT calldata dataAddOT,
        DataAddLiqYT calldata dataAddYT
    )
        external
        payable
        nonReentrant
        returns (
            DataYO memory dataYO,
            uint256 lpOutOT,
            uint256 amountBaseTokenUsedOT,
            uint256 lpOutYT,
            uint256 amountBaseTokenUsedYT
        )
    {
        Element[7] memory arr;
        arr.add(dataTknz);
        arr.add(dataAddOT);
        arr.add(dataAddYT);
        _pullToken(arr);

        dataYO = _insTokenize(mode, address(this), dataTknz);
        arr.add(dataYO);

        (amountBaseTokenUsedOT, lpOutOT) = _addDualLiqOT(dataYO, dataAddOT);
        // LP has been sent directly to users or added to liqMining

        (amountBaseTokenUsedYT, lpOutYT) = _addDualLiqYT(dataYO, dataAddYT);
        arr.add(_getPendleLp(dataAddYT.marketFactoryId, dataAddYT.baseToken, dataYO.YT));

        _pushToken(arr);
    }

    function insRealizeFutureYield(
        Mode mode,
        DataTknz calldata dataTknz,
        bytes32 marketFactoryId,
        address baseToken,
        uint256 minOutBaseTokenAmount
    ) external payable nonReentrant returns (DataYO memory dataYO, uint256 amountBaseTokenOut) {
        Element[7] memory arr;
        arr.add(dataTknz);
        _pullToken(arr);

        dataYO = _insTokenize(mode, address(this), dataTknz);
        arr.add(dataYO);

        amountBaseTokenOut = _sellAllYT(dataYO, marketFactoryId, baseToken, minOutBaseTokenAmount);
        arr.add(baseToken);

        _pushToken(arr);
    }

    /**
    @notice pulls token from `msg.sender` and sends OT + YT
    */
    function insTokenize(Mode mode, DataTknz calldata dataTknz)
        external
        payable
        nonReentrant
        returns (DataYO memory dataYO)
    {
        Element[7] memory arr;
        arr.add(dataTknz);
        _pullToken(arr);

        dataYO = _insTokenize(mode, msg.sender, dataTknz);
        // OT & YT has been tokenized directly to users

        _pushToken(arr);
    }

    function infinityApprove(Approval[] calldata approvals) public {
        for (uint256 i = 0; i < approvals.length; i++)
            IERC20(approvals[i].token).safeApprove(approvals[i].to, type(uint256).max);
    }

    function _insTokenize(
        Mode mode,
        address to,
        DataTknz calldata data
    ) internal returns (DataYO memory dataYO) {
        uint256 amountToTokenize = _rawTokenToYToken(mode, data);
        bytes32 forgeId = IPendleForge(data.forge).forgeId();
        address underlyingAsset = _getUnderlyingAsset(mode, data);

        (dataYO.OT, dataYO.YT, dataYO.amountYO) = pendleRouter.tokenizeYield(
            forgeId,
            underlyingAsset,
            data.expiryYT,
            amountToTokenize,
            to
        );

        emit MintYieldTokens(
            forgeId,
            underlyingAsset,
            data.expiryYT,
            amountToTokenize,
            dataYO.amountYO,
            msg.sender
        );
    }

    function _addDualLiqOT(DataYO memory dataYO, DataAddLiqOT calldata data)
        internal
        returns (uint256 lpOut, uint256 amountBaseTokenUsed)
    {
        bool addToLiqMining = data.liqMiningAddr != address(0);
        address lpReceiver = addToLiqMining ? address(this) : msg.sender;

        uint256[2] memory emptyArr;

        (, amountBaseTokenUsed, lpOut) = _addDualLiqUniSushi(
            Mode.SUSHI,
            lpReceiver,
            DataAddLiqUniFork(
                dataYO.OT,
                data.baseToken,
                dataYO.amountYO,
                data.amountTokenDesired,
                dataYO.amountYO,
                data.amountTokenMin,
                data.deadline,
                address(0),
                emptyArr
            )
        );
        if (addToLiqMining) _addToOTLiqMiningContract(data.liqMiningAddr, lpOut);
        emit AddLiquidityOT(
            msg.sender,
            dataYO.OT,
            data.baseToken,
            dataYO.amountYO,
            amountBaseTokenUsed,
            lpOut
        );
    }

    function _addDualLiqYT(DataYO memory dataYO, DataAddLiqYT calldata data)
        internal
        returns (uint256 amountBaseTokenUsed, uint256 lpOut)
    {
        bool addToLiqMining = data.liqMiningAddr != address(0);

        (, amountBaseTokenUsed, lpOut) = pendleRouter.addMarketLiquidityDual{
            value: (_isETH(data.baseToken) ? data.amountTokenDesired : 0)
        }(
            data.marketFactoryId,
            dataYO.YT,
            data.baseToken,
            dataYO.amountYO,
            data.amountTokenDesired,
            dataYO.amountYO,
            data.amountTokenMin
        );

        emit AddLiquidityYT(
            msg.sender,
            data.marketFactoryId,
            dataYO.YT,
            data.baseToken,
            dataYO.amountYO,
            data.amountTokenDesired,
            lpOut
        );

        if (addToLiqMining) {
            _addToYTLiqMiningContract(
                data.liqMiningAddr,
                IPendleYieldToken(dataYO.YT).expiry(),
                lpOut
            );
        }
    }

    function _addSingleLiqYT(
        DataYO memory dataYO,
        bytes32 marketFactoryId,
        address baseToken,
        uint256 minOutLp,
        address liqMiningAddr
    ) internal returns (uint256 lpOut) {
        bool addToLiqMining = liqMiningAddr != address(0);

        lpOut = pendleRouter.addMarketLiquiditySingle(
            marketFactoryId,
            dataYO.YT,
            baseToken,
            true,
            dataYO.amountYO,
            minOutLp
        );

        emit AddLiquidityYT(
            msg.sender,
            marketFactoryId,
            dataYO.YT,
            baseToken,
            dataYO.amountYO,
            0,
            lpOut
        );

        if (addToLiqMining)
            _addToYTLiqMiningContract(liqMiningAddr, IPendleYieldToken(dataYO.YT).expiry(), lpOut);
    }

    function _rawTokenToYToken(Mode mode, DataTknz calldata data)
        internal
        returns (uint256 amountYTokenReceived)
    {
        if (mode == Mode.AAVE) amountYTokenReceived = _rawTokenToYTokenAave(data);
        else if (mode == Mode.COMPOUND) amountYTokenReceived = _rawTokenToYTokenCompound(data);
        else if (mode == Mode.xJOE) amountYTokenReceived = _rawTokenToYTokenXJoe(data);
        else {
            (, , amountYTokenReceived) = _rawTokenToYTokenUniFork(
                mode,
                address(this),
                data.double
            );
        }
    }

    function _rawTokenToYTokenAave(DataTknz calldata data)
        internal
        returns (uint256 amountYTokenReceived)
    {
        (address token, uint256 amount) = (data.single.token, data.single.amount);
        address aToken = IPendleForge(data.forge).getYieldBearingToken(token);
        aaveLendingPool.deposit(token, amount, address(this), 0);
        amountYTokenReceived = _selfBalanceOf(aToken);
        emit RawTokenToYTokenSingle(msg.sender, token, aToken, amount, amountYTokenReceived);
    }

    function _rawTokenToYTokenCompound(DataTknz calldata data)
        internal
        returns (uint256 amountYTokenReceived)
    {
        (address token, uint256 amount) = (data.single.token, data.single.amount);
        address cToken = IPendleForge(data.forge).getYieldBearingToken(token);
        if (_isETH(token)) ICEther(cToken).mint{value: amount}();
        else ICToken(cToken).mint(amount);
        amountYTokenReceived = _selfBalanceOf(cToken);
        emit RawTokenToYTokenSingle(msg.sender, token, cToken, amount, amountYTokenReceived);
    }

    function _rawTokenToYTokenXJoe(DataTknz calldata data)
        internal
        returns (uint256 amountYTokenReceived)
    {
        joeBar.enter(data.single.amount);
        amountYTokenReceived = _selfBalanceOf(address(joeBar));
        emit RawTokenToYTokenSingle(
            msg.sender,
            data.single.token,
            address(joeBar),
            data.single.amount,
            amountYTokenReceived
        );
    }

    function _rawTokenToYTokenUniFork(
        Mode mode,
        address to,
        DataAddLiqUniFork memory data
    )
        internal
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 lpOut
        )
    {
        address pool;
        if (mode == Mode.KYBER) {
            pool = data.kyberPool;
            (amountA, amountB, lpOut) = _addDualLiqKyber(to, data);
        } else {
            pool = _getUniSushiPool(mode, data);
            (amountA, amountB, lpOut) = _addDualLiqUniSushi(mode, to, data);
        }
        emit RawTokenToYTokenDouble(
            msg.sender,
            data.tokenA,
            data.tokenB,
            pool,
            amountA,
            amountB,
            lpOut
        );
    }

    function _addDualLiqKyber(address to, DataAddLiqUniFork memory data)
        internal
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 lpOut
        )
    {
        bool swapped = false;
        if (_isETH(data.tokenB)) {
            swapped = true;
            _swapTokenABData(data);
        }

        // if one of the two tokens is ETH, it will always be tokenA
        if (_isETH(data.tokenA)) {
            // amountToken, amountETH, liquidity
            (amountB, amountA, lpOut) = kyberRouter.addLiquidityETH{value: data.amountADesired}(
                IERC20(data.tokenB),
                data.kyberPool,
                data.amountBDesired,
                data.amountBMin,
                data.amountAMin,
                data.kybervReserveRatioBounds,
                to,
                data.deadline
            );
        } else {
            (amountA, amountB, lpOut) = kyberRouter.addLiquidity(
                IERC20(data.tokenA),
                IERC20(data.tokenB),
                data.kyberPool,
                data.amountADesired,
                data.amountBDesired,
                data.amountAMin,
                data.amountBMin,
                data.kybervReserveRatioBounds,
                to,
                data.deadline
            );
        }

        if (swapped) {
            (amountA, amountB) = (amountB, amountA);
            _swapTokenABData(data);
        }
    }

    function _addDualLiqUniSushi(
        Mode mode,
        address to,
        DataAddLiqUniFork memory data
    )
        internal
        returns (
            uint256 amountA,
            uint256 amountB,
            uint256 lpOut
        )
    {
        IUniswapV2Router02 router = (mode == Mode.UNI ? uniRouter : sushiRouter);
        bool swapped = false;
        if (_isETH(data.tokenB)) {
            swapped = true;
            _swapTokenABData(data);
        }

        // if one of the two tokens is ETH, it will always be tokenA
        if (_isETH(data.tokenA)) {
            if (deployedOnAvax) {
                // amountToken, amountETH, liquidity
                (amountB, amountA, lpOut) = router.addLiquidityAVAX{value: data.amountADesired}(
                    data.tokenB,
                    data.amountBDesired,
                    data.amountBMin,
                    data.amountAMin,
                    to,
                    data.deadline
                );
            } else {
                // amountToken, amountETH, liquidity
                (amountB, amountA, lpOut) = router.addLiquidityETH{value: data.amountADesired}(
                    data.tokenB,
                    data.amountBDesired,
                    data.amountBMin,
                    data.amountAMin,
                    to,
                    data.deadline
                );
            }
        } else {
            (amountA, amountB, lpOut) = router.addLiquidity(
                data.tokenA,
                data.tokenB,
                data.amountADesired,
                data.amountBDesired,
                data.amountAMin,
                data.amountBMin,
                to,
                data.deadline
            );
        }

        if (swapped) {
            (amountA, amountB) = (amountB, amountA);
            _swapTokenABData(data);
        }
    }

    function _sellAllYT(
        DataYO memory dataYO,
        bytes32 marketFactoryId,
        address baseToken,
        uint256 minOutBaseTokenAmount
    ) internal returns (uint256 amountBaseTokenOut) {
        amountBaseTokenOut = pendleRouter.swapExactIn(
            dataYO.YT,
            baseToken,
            dataYO.amountYO,
            minOutBaseTokenAmount,
            marketFactoryId
        );
        emit SwapEventYT(msg.sender, dataYO.YT, baseToken, dataYO.amountYO, amountBaseTokenOut);
    }

    function _addToYTLiqMiningContract(
        address liqAddr,
        uint256 expiry,
        uint256 lpAmount
    ) internal {
        IPendleLiquidityMining(liqAddr).stakeFor(msg.sender, expiry, lpAmount);
    }

    function _addToOTLiqMiningContract(address liqAddr, uint256 lpAmount) internal {
        IPendleLiquidityMiningV2(liqAddr).stake(msg.sender, lpAmount);
    }

    function _pullToken(Element[7] memory arr) internal {
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i].amount == 0 || _isETH(arr[i].token)) continue;
            IERC20(arr[i].token).safeTransferFrom(msg.sender, address(this), arr[i].amount);
        }
    }

    function _pushToken(Element[7] memory arr) internal {
        for (uint256 i = 0; i < arr.length; i++) {
            if (arr[i].token == address(0)) break;
            if (_isETH(arr[i].token)) {
                (bool success, ) = msg.sender.call{value: _selfBalanceOf(arr[i].token)}("");
                require(success, "TRANSFER_FAILED");
            } else {
                IERC20(arr[i].token).safeTransfer(msg.sender, _selfBalanceOf(arr[i].token));
            }
        }
    }

    function _getPendleLp(
        bytes32 marketFactoryId,
        address baseToken,
        address YT
    ) internal view returns (address) {
        return
            pendleData.getMarket(
                marketFactoryId,
                YT,
                _isETH(baseToken) ? address(weth) : baseToken
            );
    }

    function _selfBalanceOf(address token) internal view returns (uint256) {
        if (_isETH(token)) return address(this).balance;
        return IERC20(token).balanceOf(address(this));
    }

    function _getUnderlyingAsset(Mode mode, DataTknz memory data) internal view returns (address) {
        if (mode == Mode.AAVE || mode == Mode.COMPOUND || mode == Mode.xJOE) {
            return data.single.token;
        } else if (mode == Mode.UNI || mode == Mode.SUSHI) {
            return _getUniSushiPool(mode, data.double);
        } else if (mode == Mode.KYBER) {
            return data.double.kyberPool;
        } else {
            revert("INTERNAL_ERROR");
        }
    }

    function _getUniSushiPool(Mode mode, DataAddLiqUniFork memory data)
        internal
        view
        returns (address)
    {
        IUniswapV2Router02 router = (mode == Mode.UNI ? uniRouter : sushiRouter);
        (address tokenA, address tokenB) = (data.tokenA, data.tokenB);
        return
            UniswapV2Library.pairFor(
                router.factory(),
                (_isETH(tokenA) ? address(weth) : tokenA),
                (_isETH(tokenB) ? address(weth) : tokenB),
                (mode == Mode.UNI ? codeHashUni : codeHashSushi)
            );
    }

    function _swapTokenABData(DataAddLiqUniFork memory data) internal pure {
        (data.tokenA, data.tokenB) = (data.tokenB, data.tokenA);
        (data.amountADesired, data.amountBDesired) = (data.amountBDesired, data.amountADesired);
        (data.amountAMin, data.amountBMin) = (data.amountBMin, data.amountAMin);
    }

    function _isETH(address token) internal pure returns (bool) {
        return (token == ETH_ADDRESS);
    }
}
