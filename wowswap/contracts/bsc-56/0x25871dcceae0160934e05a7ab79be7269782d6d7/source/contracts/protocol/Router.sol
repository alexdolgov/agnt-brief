// SPDX-License-Identifier: agpl-3.0
pragma solidity 0.7.4;
pragma experimental ABIEncoderV2;

import "@openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";
import "@openzeppelin/contracts-upgradeable/proxy/Initializable.sol";
import "./../interfaces/IRouter.sol";
import "./../interfaces/IFactory.sol";
import "./../interfaces/IPool.sol";
import "./../dependencies/pancake/periphery/interfaces/IPancakeRouter02.sol";
import "./../dependencies/pancake/periphery/interfaces/IWETH.sol";
import "./../dependencies/pancake/core/interfaces/IPancakeFactory.sol";
import "./../dependencies/contracts/IERC20.sol";
import "./libraries/upgradeability/Versioned.sol";
import "./libraries/helpers/TransferHelper.sol";

abstract contract RouterStorage is
    Initializable,
    ContextUpgradeable,
    Versioned
{
    IFactory internal m_factory;
    IPancakeRouter02 internal m_pancakeRouter;
    IPancakeFactory internal m_pancakeFactory;

    IWETH internal m_WETH;

    uint256[50] private ____gap;
}

contract Router is RouterStorage, IRouter {
    modifier ensure(uint256 deadline) {
        require(deadline >= block.timestamp, "SwapRouter: EXPIRED TRANSACTION");
        _;
    }

    modifier strictSwap(address[] calldata path) {
        require(
            path.length == 2,
            "SwapRouter: Path should be exact two steps long"
        );
        _;
    }

    modifier signed(address caller) {
        require(_msgSender() == caller, "SwapRouter: unathorized action");
        _;
    }

    function initialize(
        address _leverageFactory,
        address _swapRouter,
        address _WETH
    ) public initializer {
        __Router_init(_leverageFactory, _swapRouter, _WETH);
    }

    function __Router_init(
        address _leverageFactory,
        address _swapRouter,
        address _WETH
    ) public initializer {
        __Context_init_unchained();
        __Versioned_init_unchained();
        __Router_init_unchained(_leverageFactory, _swapRouter, _WETH);
    }

    function __Router_init_unchained(
        address _leverageFactory,
        address _swapRouter,
        address _WETH
    ) public initializer {
        m_factory = IFactory(_leverageFactory);
        m_pancakeRouter = IPancakeRouter02(_swapRouter);
        m_pancakeFactory = IPancakeFactory(m_pancakeRouter.factory());
        m_WETH = IWETH(_WETH);
    }

    function getRevision() internal pure override returns (uint256) {
        return 0x1;
    }

    function leverageFactory() external view override returns (address) {
        return address(m_factory);
    }

    function factory() external view override returns (address) {
        return address(m_pancakeFactory);
    }

    function WETH() external view override returns (address) {
        return address(m_WETH);
    }

    receive() external payable {
        require(
            _msgSender() == payable(address(m_WETH)),
            "Only WBNB transfers is allowed"
        );
        // only accept ETH via fallback from the WETH contract
    }

    function _receiveTokens(address token, uint256 amount) private {
        // Transfer specified amount of tokens to the contract
        TransferHelper.safeTransferFrom(
            token,
            msg.sender,
            address(this),
            amount
        );
    }

    function _transferTokens(
        address token,
        address to,
        uint256 amount
    ) private {
        // Transfer specified amount of tokens to the recipient
        TransferHelper.safeTransfer(token, to, amount);
    }

    function _open(
        uint256 amountIn,
        uint256 amountOut,
        address lendable,
        address tradable,
        address account
    ) private {
        address poolAddress = m_factory.getOrCreatePool(lendable, tradable);
        IPool pool = IPool(poolAddress);
        _transferTokens(lendable, poolAddress, amountIn);
        pool.openPosition(account, amountOut);
    }

    function _close(
        uint256 amountIn,
        uint256 amountOut,
        address tradable,
        address lendable,
        address to
    ) private {
        address poolAddress = m_factory.getOrCreatePool(lendable, tradable);
        IPool pool = IPool(poolAddress);
        _receiveTokens(poolAddress, amountIn);
        _transferTokens(poolAddress, poolAddress, amountIn);
        pool.closePosition(to, amountOut);
    }

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        virtual
        override
        strictSwap(path)
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        // TODO: add leverage factor to amountIn
        amounts = m_pancakeRouter.getAmountsOut(amountIn, path);

        (address lendable, ) = m_factory.parseTokens(path[0], path[1]);
        bool isOpen = path[0] == lendable;

        require(
            amounts[1] >= amountOutMin,
            "PancakeRouter: INSUFFICIENT_OUTPUT_AMOUNT"
        );

        if (isOpen) {
            _receiveTokens(path[0], amountIn);
            _open(amounts[0], amounts[1], path[0], path[1], to);
        } else {
            _close(amounts[0], amounts[1], path[0], path[1], to);
        }
    }

    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        payable
        virtual
        override
        strictSwap(path)
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        require(path[0] == address(m_WETH), "PancakeRouter: INVALID_PATH");

        // TODO: add leverage factor to amountIn
        amounts = m_pancakeRouter.getAmountsOut(msg.value, path);

        require(
            amounts[1] >= amountOutMin,
            "PancakeRouter: INSUFFICIENT_OUTPUT_AMOUNT"
        );

        m_WETH.deposit{value: amounts[0]}();
        _open(amounts[0], amounts[1], path[0], path[1], to);
    }

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        virtual
        override
        strictSwap(path)
        ensure(deadline)
        returns (uint256[] memory amounts)
    {
        require(path[1] == address(m_WETH), "PancakeRouter: INVALID_PATH");

        // TODO: add leverage factor to amountIn
        amounts = m_pancakeRouter.getAmountsOut(amountIn, path);

        require(
            amounts[1] >= amountOutMin,
            "PancakeRouter: INSUFFICIENT_OUTPUT_AMOUNT"
        );

        _close(amounts[0], amounts[1], path[0], path[1], address(this));
        m_WETH.withdraw(amounts[1]);
        TransferHelper.safeTransferETH(to, amounts[1]);
    }

    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) external view override returns (uint256 amountB) {
        amountB = m_pancakeRouter.quote(amountA, reserveA, reserveB);
    }

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) external view override returns (uint256 amountOut) {
        amountOut = m_pancakeRouter.getAmountOut(
            amountIn,
            reserveIn,
            reserveOut
        );
    }

    function getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) external view override returns (uint256 amountIn) {
        amountIn = m_pancakeRouter.getAmountIn(
            amountOut,
            reserveIn,
            reserveOut
        );
    }

    function getAmountsOut(uint256 amountIn, address[] calldata path)
        external
        view
        override
        returns (uint256[] memory amounts)
    {
        amounts = m_pancakeRouter.getAmountsOut(amountIn, path);
    }

    function getAmountsIn(uint256 amountOut, address[] calldata path)
        external
        view
        override
        returns (uint256[] memory amounts)
    {
        amounts = m_pancakeRouter.getAmountsIn(amountOut, path);
    }

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    )
        external
        virtual
        override
        ensure(deadline)
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        tokenA;
        tokenB;
        amountADesired;
        amountBDesired;
        amountAMin;
        amountBMin;
        to;
        deadline;

        revert("Not supported");
    }

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
        virtual
        override
        ensure(deadline)
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        token;
        amountTokenDesired;
        amountTokenMin;
        amountETHMin;
        to;
        deadline;
        revert("Not supported");
    }

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) public virtual override ensure(deadline) returns (uint256, uint256) {
        tokenA;
        tokenB;
        liquidity;
        amountAMin;
        amountBMin;
        to;
        deadline;
        revert("Not supported");
    }

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) public virtual override ensure(deadline) returns (uint256, uint256) {
        token;
        liquidity;
        amountTokenMin;
        amountETHMin;
        to;
        deadline;
        revert("Not supported");
    }

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
    ) external virtual override returns (uint256, uint256) {
        tokenA;
        tokenB;
        liquidity;
        amountAMin;
        amountBMin;
        to;
        deadline;
        approveMax;
        v;
        r;
        s;
        revert("Not supported");
    }

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
    ) external virtual override returns (uint256, uint256) {
        token;
        liquidity;
        amountTokenMin;
        amountETHMin;
        to;
        deadline;
        approveMax;
        v;
        r;
        s;
        revert("Not supported");
    }

    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) public virtual override ensure(deadline) returns (uint256) {
        token;
        liquidity;
        amountTokenMin;
        amountETHMin;
        to;
        deadline;
        revert("Not supported");
    }

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
    ) external virtual override returns (uint256) {
        token;
        liquidity;
        amountTokenMin;
        amountETHMin;
        to;
        deadline;
        approveMax;
        v;
        r;
        s;
        revert("Not supported");
    }

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) returns (uint256[] memory) {
        amountOut;
        amountInMax;
        path;
        to;
        deadline;
        revert("Not supported");
    }

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) returns (uint256[] memory) {
        amountOut;
        amountInMax;
        path;
        to;
        deadline;
        revert("Not supported");
    }

    function swapETHForExactTokens(
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    )
        external
        payable
        virtual
        override
        ensure(deadline)
        returns (uint256[] memory)
    {
        amountOut;
        path;
        to;
        deadline;
        revert("Not supported");
    }

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) {
        amountIn;
        amountOutMin;
        path;
        to;
        deadline;
        revert("Not supported");
    }

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable virtual override ensure(deadline) {
        amountOutMin;
        path;
        to;
        deadline;
        revert("Not supported");
    }

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external virtual override ensure(deadline) {
        amountIn;
        amountOutMin;
        path;
        to;
        deadline;
        revert("Not supported");
    }
}
