// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

import "./GenericMathLogic.sol";

abstract contract GenericLeverageLogic is
    GenericMathLogic,
    IFlashLoanRecipient
{
    /**
     * @dev Wrapper function preparing balancer flashloan and
     * loading data to pass into receiver.
     */
    function _executeBalancerFlashLoan(
        uint256 _nftId,
        uint256 _flashAmount,
        uint256 _initialAmount,
        uint256 _lendingShares,
        uint256 _borrowShares,
        uint256 _allowedSpread,
        bool _ethBack,
        bool _isAave,
        bytes memory _callData
    )
        internal
        virtual
    {
        IERC20[] memory tokens = new IERC20[](1);
        uint256[] memory amount = new uint256[](1);

        tokens[0] = IERC20(FARM_ASSET);
        amount[0] = _flashAmount;

        allowEnter = true;

        if (UNISWAP_V2_POOL != IUniswapV2Pool(address(0))) {
            UNISWAP_V2_POOL.swap(
                0,
                _flashAmount,
                address(this),
                abi.encode(
                    _nftId,
                    _initialAmount,
                    _lendingShares,
                    _borrowShares,
                    _allowedSpread,
                    msg.sender,
                    _ethBack,
                    _isAave,
                    _callData
                )
            );

            return;
        }

        if (UNISWAP_V3_POOL != IUniswapV3PoolPowerFarm(address(0))) {
            ongoingFlashAmountV3 = _flashAmount;

            UNISWAP_V3_POOL.flash(
                address(this),
                UNISWAP_V3_POOL.token0() == FARM_ASSET
                    ? _flashAmount
                    : 0,
                UNISWAP_V3_POOL.token1() == FARM_ASSET
                    ? _flashAmount
                    : 0,
                abi.encode(
                    _nftId,
                    _initialAmount,
                    _lendingShares,
                    _borrowShares,
                    _allowedSpread,
                    msg.sender,
                    _ethBack,
                    _isAave,
                    _callData
                )
            );

            return;
        }

        BALANCER_VAULT.flashLoan(
            this,
            tokens,
            amount,
            abi.encode(
                _nftId,
                _initialAmount,
                _lendingShares,
                _borrowShares,
                _allowedSpread,
                msg.sender,
                _ethBack,
                _isAave,
                _callData
            )
        );
    }

    function uniswapV3FlashCallback(
        uint256 _fee0,
        uint256 _fee1,
        bytes calldata _data
    )
        external
    {
        if (msg.sender != address(UNISWAP_V3_POOL)) {
            revert GenericNotV3Pair(
                msg.sender,
                address(UNISWAP_V3_POOL)
            );
        }

        if (allowEnter == false) {
            revert GenericAccessDenied();
        }

        IERC20[] memory tokens = new IERC20[](1);
        tokens[0] = IERC20(FARM_ASSET);

        uint256[] memory amounts = new uint256[](1);
        amounts[0] = ongoingFlashAmountV3;

        uint256[] memory feeAmounts = new uint256[](1);
        feeAmounts[0] = _fee0 == 0
            ? _fee1
            : _fee0;

        this.receiveFlashLoan(
            tokens,
            amounts,
            feeAmounts,
            _data
        );
    }

    function _validateEntryConditions(
        uint256 _tokenLength,
        address _sender
    )
        private
    {
        if (allowEnter == false) {
            revert GenericAccessDenied();
        }

        allowEnter = false;

        if (_tokenLength == 0) {
            revert GenericInvalidParam();
        }

        if (_sender != BALANCER_ADDRESS ) {
            if (_sender != address(this)) {
                revert GenericNotBalancerVaultOrSelf();
            }
        }
    }

    /**
     * @dev Receive function from balancer flashloan. Body
     * is called from balancer at the end of their {flashLoan()}
     * logic. Overwritten with opening flows.
     */
    function receiveFlashLoan(
        IERC20[] memory _flashloanToken,
        uint256[] memory _flashloanAmounts,
        uint256[] memory _feeAmounts,
        bytes memory _userData
    )
        external
        virtual
    {
        _validateEntryConditions(
            _flashloanToken.length,
            msg.sender
        );

        _processLoan(
            _userData,
            _flashloanAmounts[0],
            _flashloanAmounts[0] + _feeAmounts[0]
        );
    }

    function uniswapV2Call(
        address sender,
        uint256 amount0,
        uint256 amount1,
        bytes calldata data
    )
        external
    {
        address token0 = IUniswapV2Pool(msg.sender).token0();
        address token1 = IUniswapV2Pool(msg.sender).token1();

        address pair = UNISWAP_FACTORY.getPair(
            token0,
            token1
        );

        if (msg.sender != address(UNISWAP_V2_POOL)) {
            revert GenericNotV2Pair(
                msg.sender,
                pair
            );
        }

        if (sender != address(this)) {
            revert GenericNotSender();
        }

        IERC20[] memory tokens = new IERC20[](1);
        tokens[0] = IERC20(
            FARM_ASSET
        );

        uint256[] memory amounts = new uint256[](1);
        amounts[0] = amount0 == 0
            ? amount1
            : amount0;

        uint256[] memory feeAmounts = new uint256[](1);
        feeAmounts[0] = _calculateFlashLoanFee(
            amounts[0]
        );

        this.receiveFlashLoan(
            tokens,
            amounts,
            feeAmounts,
            data
        );
    }

    function _calculateFlashLoanFee(
        uint256 amountWithdrawn
    )
        public
        pure
        returns (uint256)
    {
        return (
            amountWithdrawn
                * 1000
                / 997
            ) - amountWithdrawn
                + 1;
    }

    function _processLoan(
        bytes memory _userData,
        uint256 _flashloanAmount,
        uint256 _totalDebtBalancer
    )
        private
    {
        (
            uint256 nftId,
            uint256 initialAmount,
            uint256 lendingShares,
            uint256 borrowShares,
            uint256 allowedSpread,
            address caller,
            bool ethBack,
            bool isAave,
            bytes memory callData
        ) = abi.decode(
            _userData,
            (
                uint256,
                uint256,
                uint256,
                uint256,
                uint256,
                address,
                bool,
                bool,
                bytes
            )
        );

        if (initialAmount > 0) {
            _logicOpenPosition(
                callData,
                isAave,
                nftId,
                _flashloanAmount + initialAmount,
                _totalDebtBalancer,
                allowedSpread
            );

            return;
        }

        _logicClosePosition(
            callData,
            nftId,
            borrowShares,
            lendingShares,
            _totalDebtBalancer,
            allowedSpread,
            caller,
            ethBack,
            isAave
        );
    }

    function _logicClosePosition(
        bytes memory _callData,
        uint256 _nftId,
        uint256 _borrowShares,
        uint256 _lendingShares,
        uint256 _totalDebtBalancer,
        uint256 _allowedSpread,
        address _caller,
        bool _ethBack,
        bool _isAave
    )
        internal
        virtual
    {}

    function _getEthBack(
        uint256 _swapAmount,
        uint256 _minOutAmount
    )
        internal
        virtual
        returns (uint256)
    {
        uint256 wethAmount = _getTokensUniV3(
            _swapAmount,
            _minOutAmount,
            ENTRY_ASSET,
            FARM_ASSET
        );

        _unwrapETH(
            wethAmount
        );

        return wethAmount;
    }

    function _getTokensUniV3(
        uint256 _amountIn,
        uint256 _minOutAmount,
        address _tokenIn,
        address _tokenOut
    )
        internal
        virtual
        returns (uint256)
    {
        return UNISWAP_V3_ROUTER.exactInputSingle(
            IUniswapV3.ExactInputSingleParams(
                {
                    tokenIn: _tokenIn,
                    tokenOut: _tokenOut,
                    fee: UNISWAP_V3_FEE,
                    recipient: address(this),
                    deadline: block.timestamp,
                    amountIn: _amountIn,
                    amountOutMinimum: _minOutAmount,
                    sqrtPriceLimitX96: 0
                }
            )
        );
    }

    function _swapStETHintoETH(
        uint256 _swapAmount,
        uint256 _minOutAmount
    )
        internal
        virtual
        returns (uint256)
    {}

    function _withdrawPendleLPs(
        uint256 _nftId,
        uint256 _lendingShares
    )
        internal
        virtual
        returns (uint256 withdrawnLpsAmount)
    {
        return IPendleChild(PENDLE_CHILD).withdrawExactShares(
            _withdrawExactShares(
                _nftId,
                PENDLE_CHILD,
                _lendingShares
            )
        );
    }

    function _withdrawExactShares(
        uint256 _nftId,
        address _token,
        uint256 _lendingShares
    )
        internal
        virtual
        returns (uint256 withdrawnAmount)
    {
        return WISE_LENDING.withdrawExactShares(
            _nftId,
            _token,
            _lendingShares
        );
    }

    function _paybackExactShares(
        bool _isAave,
        uint256 _nftId,
        uint256 _borrowShares
    )
        internal
        virtual
    {
        if (_isAave == true) {
            AAVE_HUB.paybackExactShares(
                _nftId,
                FARM_ASSET,
                _borrowShares
            );

            return;
        }

        WISE_LENDING.paybackExactShares(
            _nftId,
            FARM_ASSET,
            _borrowShares
        );
    }

    /**
     * @dev Internal wrapper function for a closing route
     * which returns {ENTRY_ASSET} to the owner in the end.
     */
    function _closingRouteToken(
        uint256 _tokenAmount,
        uint256 _totalDebtBalancer,
        address _caller
    )
        internal
        virtual
    {
        if (FARM_ASSET == WETH_ADDRESS) {
            _wrapETH(
                _tokenAmount
            );
        }

        address extraPoolAddress = address(UNISWAP_V2_POOL) == address(0x0)
            ? address(UNISWAP_V3_POOL)
            : address(UNISWAP_V2_POOL);

        _safeTransfer(
            FARM_ASSET,
            msg.sender != BALANCER_ADDRESS
                ? extraPoolAddress
                : BALANCER_ADDRESS,
            _totalDebtBalancer
        );

        _safeTransfer(
            FARM_ASSET,
            _caller,
            _tokenAmount - _totalDebtBalancer
        );
    }

    /**
     * @dev Internal wrapper function for a closing route
     * which returns ETH to the owner in the end.
     */
    function _closingRouteETH(
        uint256 _ethAmount,
        uint256 _totalDebtBalancer,
        address _caller
    )
        internal
        virtual
    {
        _wrapETH(
            _totalDebtBalancer
        );

        _safeTransfer(
            FARM_ASSET,
            msg.sender != BALANCER_ADDRESS
                ? address(UNISWAP_V2_POOL)
                : BALANCER_ADDRESS,
            _totalDebtBalancer
        );

        _sendValue(
            _caller,
            _ethAmount - _totalDebtBalancer
        );
    }

    function _logicOpenPosition(
        bytes memory _callData,
        bool _isAave,
        uint256 _nftId,
        uint256 _depositAmount,
        uint256 _totalDebtBalancer,
        uint256 _allowedSpread
    )
        internal
        virtual
    {}

    function _borrowExactAmount(
        bool _isAave,
        uint256 _nftId,
        uint256 _totalDebtBalancer
    )
        internal
        virtual
    {
        if (_isAave == true) {
            AAVE_HUB.borrowExactAmount(
                _nftId,
                FARM_ASSET,
                _totalDebtBalancer
            );

            return;
        }

        WISE_LENDING.borrowExactAmount(
            _nftId,
            FARM_ASSET,
            _totalDebtBalancer
        );
    }

    /**
     * @dev Internal function summarizing liquidation
     * checks and interface call for core liquidation
     * from wise lending.
     */
    function _coreLiquidation(
        uint256 _nftId,
        uint256 _nftIdLiquidator,
        uint256 _shareAmountToPay
    )
        internal
        virtual
        returns (
            uint256 paybackAmount,
            uint256 receivingAmount
        )
    {
        _checkLiquidatability(
            _nftId
        );

        address paybackToken = isAave[_nftId] == true
            ? POOL_ASSET_AAVE
            : FARM_ASSET;

        paybackAmount = _getPaybackAmount(
            paybackToken,
            _shareAmountToPay
        );

        uint256 cutoffShares = isAave[_nftId] == true
            ? _getPositionBorrowSharesAave(_nftId)
                * FIFTY_PERCENT
                / PRECISION_FACTOR_E18
            : _getPositionBorrowShares(_nftId)
                * FIFTY_PERCENT
                / PRECISION_FACTOR_E18;

        if (_shareAmountToPay > cutoffShares) {
            revert GenericTooManyShares();
        }

        receivingAmount = WISE_LENDING.coreLiquidationIsolationPools(
            _nftId,
            _nftIdLiquidator,
            msg.sender,
            paybackToken,
            PENDLE_CHILD,
            paybackAmount,
            _shareAmountToPay
        );
    }

    function _checkLiquidatability(
        uint256 _nftId
    )
        internal
        virtual
        view
    {
        if (specialDepegCase == true) {
            return;
        }

        if (_checkDebtRatio(_nftId) == true) {
            revert GenericDebtRatioTooLow();
        }
    }

    function _callPendleRouter(
        bytes memory _callData
    )
        internal
        virtual
        returns (
            bool success,
            bytes memory returnData
        )
    {
        routingOngoing = true;

        (
            success,
            returnData
        ) = address(PENDLE_ROUTER).call(
            _callData
        );

        routingOngoing = false;
    }
}
