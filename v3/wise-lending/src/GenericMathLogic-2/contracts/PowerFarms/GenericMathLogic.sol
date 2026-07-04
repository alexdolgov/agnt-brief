// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

import "./GenericDeclarations.sol";

abstract contract GenericMathLogic is GenericDeclarations {

    modifier updatePools() {
        _checkReentrancy();
        _updatePools();
        _;
    }

    /**
     * @dev Update logic for pools via wise lending
     * interfaces
     */
    function _updatePools()
        internal
        virtual
    {
        WISE_LENDING.syncManually(
            FARM_ASSET
        );

        WISE_LENDING.syncManually(
            POOL_ASSET_AAVE
        );

        WISE_LENDING.syncManually(
            PENDLE_CHILD
        );
    }

    function _checkReentrancy()
        internal
        virtual
        view
    {
        if (sendingProgress == true) {
            revert GenericAccessDenied();
        }

        if (WISE_LENDING.sendingProgress() == true) {
            revert GenericAccessDenied();
        }

        if (AAVE_HUB.sendingProgressAaveHub() == true) {
            revert GenericAccessDenied();
        }
    }

    /**
     * @dev Internal function getting the
     * borrow shares from position {_nftId}
     * with token {_borrowToken}
     */
    function _getPositionBorrowShares(
        uint256 _nftId
    )
        internal
        virtual
        view
        returns (uint256)
    {
        return WISE_LENDING.getPositionBorrowShares(
            _nftId,
            FARM_ASSET
        );
    }

    /**
     * @dev Internal function getting the
     * borrow shares of aave from position {_nftId}
     * with token {_borrowToken}
     */
    function _getPositionBorrowSharesAave(
        uint256 _nftId
    )
        internal
        virtual
        view
        returns (uint256)
    {
        return WISE_LENDING.getPositionBorrowShares(
            _nftId,
            POOL_ASSET_AAVE
        );
    }

    /**
     * @dev Internal function converting
     * borrow shares into tokens.
     */
    function _getPositionBorrowTokenAmount(
        uint256 _nftId
    )
        internal
        virtual
        view
        returns (uint256 tokenAmount)
    {
        uint256 positionBorrowShares = _getPositionBorrowShares(
            _nftId
        );

        if (positionBorrowShares > 0) {
            tokenAmount = _getPaybackAmount(
                FARM_ASSET,
                positionBorrowShares
            );
        }
    }

    function _getPaybackAmount(
        address _poolToken,
        uint256 _borrowShares
    )
        internal
        virtual
        view
        returns (uint256 tokenAmount)
    {
        return WISE_LENDING.paybackAmount(
            _poolToken,
            _borrowShares
        );
    }

    function _getPositionBorrowTokenAmountAave(
        uint256 _nftId
    )
        internal
        virtual
        view
        returns (uint256 tokenAmountAave)
    {
        uint256 positionBorrowSharesAave = _getPositionBorrowSharesAave(
            _nftId
        );

        if (positionBorrowSharesAave == 0) {
            return 0;
        }

        tokenAmountAave = _getPaybackAmount(
            POOL_ASSET_AAVE,
            positionBorrowSharesAave
        );
    }
    /**
     * @dev Internal function getting the
     * lending shares from position {_nftId}
     * with token {_borrowToken}
     */
    function _getPositionLendingShares(
        uint256 _nftId
    )
        internal
        virtual
        view
        returns (uint256)
    {
        return WISE_LENDING.getPositionLendingShares(
            _nftId,
            PENDLE_CHILD
        );
    }

    /**
     * @dev Internal function converting
     * lending shares into tokens.
     */
    function _getPostionCollateralTokenAmount(
        uint256 _nftId
    )
        internal
        virtual
        view
        returns (uint256)
    {
        return _getCashoutAmount(
            {
                _poolToken: PENDLE_CHILD,
                _shares: _getPositionLendingShares(
                    _nftId
                )
            }
        );
    }

    /**
     * @dev Read function returning the total
     * borrow amount in ETH from postion {_nftId}
     */
    function getPositionBorrowETH(
        uint256 _nftId
    )
        public
        virtual
        view
        returns (uint256)
    {
        uint256 borrowTokenAmount;
        uint256 borrowShares = _getPositionBorrowShares(
            _nftId
        );

        if (borrowShares > 0) {
            borrowTokenAmount = _getPositionBorrowTokenAmount(
                _nftId
            );
        }

        uint256 borrowSharesAave = _getPositionBorrowSharesAave(
            _nftId
        );

        uint256 borrowTokenAmountAave;

        if (borrowSharesAave > 0) {
            borrowTokenAmountAave = _getPositionBorrowTokenAmountAave(
                _nftId
            );
        }

        uint256 tokenValueEth;

        if (borrowShares > 0) {
            tokenValueEth = _getTokensInETH(
                FARM_ASSET,
                borrowTokenAmount
            );
        }

        if (borrowTokenAmountAave == 0) {
            return tokenValueEth;
        }

        uint256 tokenValueAaveEth = _getTokensInETH(
            POOL_ASSET_AAVE,
            borrowTokenAmountAave
        );

        return tokenValueEth + tokenValueAaveEth;
    }

    /**
     * @dev Read function returning the total
     * lending amount in ETH from postion {_nftId}
     */
    function getTotalWeightedCollateralETH(
        uint256 _nftId
    )
        public
        virtual
        view
        returns (uint256)
    {
        return _getTokensInETH(
            PENDLE_CHILD,
            _getPostionCollateralTokenAmount(_nftId)
        )
            * collateralFactor
            / PRECISION_FACTOR_E18;
    }

    function _getTokensInETH(
        address _tokenAddress,
        uint256 _tokenAmount
    )
        internal
        virtual
        view
        returns (uint256)
    {
        return ORACLE_HUB.getTokensInETH(
            _tokenAddress,
            _tokenAmount
        );
    }

    function _getEthInTokens(
        address _tokenAddress,
        uint256 _ethAmount
    )
        internal
        virtual
        view
        returns (uint256)
    {
        return ORACLE_HUB.getTokensFromETH(
            _tokenAddress,
            _ethAmount
        );
    }

    function getLeverageAmount(
        uint256 _initialAmount,
        uint256 _leverage
    )
        public
        pure
        virtual
        returns (uint256)
    {
        return _initialAmount
            * _leverage
            / PRECISION_FACTOR_E18;
    }

    /**
     * @dev Internal function with math logic for approximating
     * the net APY for the postion aftrer creation.
     */
    function _getApproxNetAPY(
        uint256 _initialAmount,
        uint256 _leverage,
        uint256 _wstETHAPY,
        bool _isAave
    )
        internal
        virtual
        view
        returns (
            uint256,
            bool
        )
    {
        if (_leverage < PRECISION_FACTOR_E18) {
            return (
                0,
                false
            );
        }

        uint256 leveragedAmount = getLeverageAmount(
            _initialAmount,
            _leverage
        );

        uint256 flashloanAmount = leveragedAmount
            - _initialAmount;

        uint256 newBorrowRate = _getNewBorrowRate(
            flashloanAmount,
            _isAave
        );

        uint256 leveragedPositivAPY = _wstETHAPY
            * _leverage
            / PRECISION_FACTOR_E18;

        uint256 leveragedNegativeAPY = newBorrowRate
            * (_leverage - PRECISION_FACTOR_E18)
            / PRECISION_FACTOR_E18;

        bool isPositive = leveragedPositivAPY >= leveragedNegativeAPY;

        uint256 netAPY = isPositive == true
            ? leveragedPositivAPY - leveragedNegativeAPY
            : leveragedNegativeAPY - leveragedPositivAPY;

        return (
            netAPY,
            isPositive
        );
    }

    function _isOutOfRangeAmount(
        uint256 _lpWithdrawAmount
    )
        internal
        virtual
        view
        returns (bool)
    {
        MarketState memory marketState = PENDLE_MARKET.readState(
            address(PENDLE_MARKET)
        );

        (
            ,
            uint256 userSy,
            uint256 userPt
        )
            = _getUserAssetInfo(
                _lpWithdrawAmount,
                uint256(marketState.totalLp),
                uint256(marketState.totalSy),
                uint256(marketState.totalPt)
        );

        uint256 reducedSy = uint256(marketState.totalSy)
            - userSy
            - (
                PT_ORACLE_PENDLE.getPtToSyRate(
                    address(PENDLE_MARKET),
                    1 seconds
                )
                * userPt
                / PRECISION_FACTOR_E18
        );

        uint256 totalAssetsReduced = (
            PENDLE_SY.exchangeRate()
                * reducedSy
                / PRECISION_FACTOR_E18
            + uint256(marketState.totalPt)
        );

        return uint256(marketState.totalPt)
            * PRECISION_FACTOR_E18
            / totalAssetsReduced
            > MAX_PROPORTION;
    }

    function _checkSelector(
        bytes memory _callData
    )
        internal
        pure
        returns (bytes4 selector)
    {
        assembly {
            selector := mload(add(_callData, 32))
        }
    }

    function _getSlicedData(
        bytes memory _callData
    )
        internal
        pure
        virtual
        returns (bytes memory adjustedData)
    {
        adjustedData = new bytes(
            _callData.length - 4
        );

        for (uint i = 0; i < adjustedData.length; i++) {
            adjustedData[i] = _callData[i + 4];
        }
    }

    function _decodeRemoveLiquidity(
        bytes memory _callData
    )
        internal
        pure
        returns (
            address receiver,
            address market,
            uint256 netLpToRemove,
            TokenOutput memory output,
            LimitOrderData memory limit
        )
    {
        bytes memory adjustedData = _getSlicedData(
            _callData
        );

        (
            receiver,
            market,
            netLpToRemove,
            output,
            limit
        ) = abi.decode(
            adjustedData,
            (
                address,
                address,
                uint256,
                TokenOutput,
                LimitOrderData
            )
        );
    }

    function _decodeAddLiquidity(
        bytes memory _callData
    )
        internal
        pure
        returns (
            address receiver,
            address market,
            uint256 minLpOut,
            ApproxParams memory guessPtReceivedFromSy,
            TokenInput memory input,
            LimitOrderData memory limit
        )
    {
        bytes memory adjustedData = _getSlicedData(
            _callData
        );

        (
            receiver,
            market,
            minLpOut,
            guessPtReceivedFromSy,
            input,
            limit
        ) = abi.decode(
            adjustedData,
            (
                address,
                address,
                uint256,
                ApproxParams,
                TokenInput,
                LimitOrderData
            )
        );
    }

    function _verifyCallData(
        bytes memory _callData,
        bool _addLiquidity
    )
        internal
        virtual
    {
        bytes4 expectedSelector = _addLiquidity == true
            ? PENDLE_ROUTER.addLiquiditySingleToken.selector
            : PENDLE_ROUTER.removeLiquiditySingleToken.selector;

        bool verified = _checkSelector(_callData) == expectedSelector;

        if (verified == false) {
            revert GenericInvalidSelector(
                _checkSelector(_callData),
                expectedSelector
            );
        }

        if (_addLiquidity == true) {
            (
                address receiverAddLiq,
                address marketAddLiq,
                uint256 minLpOut,
                ApproxParams memory guessPtReceivedFromSy,
                TokenInput memory input,
                LimitOrderData memory limitAddLiq
            ) = _decodeAddLiquidity(
                _callData
            );

            _verifyDecodedAddLiquidity(
                receiverAddLiq,
                marketAddLiq,
                minLpOut,
                guessPtReceivedFromSy,
                input,
                limitAddLiq
            );

            return;
        }

        (
            address receiver,
            address market,
            uint256 netLpToRemove,
            TokenOutput memory output,
            LimitOrderData memory limit
        ) = _decodeRemoveLiquidity(
            _callData
        );

        _verifyDecodedRemoveLiquidity(
            receiver,
            market,
            netLpToRemove,
            output,
            limit
        );
    }

    function _verifyDecodedRemoveLiquidity(
        address _receiver,
        address _market,
        uint256,
        TokenOutput memory _output,
        LimitOrderData memory _limit
    )
        internal
        virtual
    {
        _verifyStandardData(
            _receiver,
            _market
        );

        _verifyContracts(
            _output.pendleSwap,
            _output.swapData.extRouter,
            _limit.limitRouter
        );

        if (_output.tokenOut != FARM_ASSET) {
            revert GenericWrongTokenOut(
                _output.tokenOut,
                FARM_ASSET
            );
        }
    }

    function _verifyDecodedAddLiquidity(
        address _receiver,
        address _market,
        uint256,
        ApproxParams memory,
        TokenInput memory _input,
        LimitOrderData memory _limit
    )
        internal
        virtual
    {
        _verifyStandardData(
            _receiver,
            _market
        );

        _verifyContracts(
            _input.pendleSwap,
            _input.swapData.extRouter,
            _limit.limitRouter
        );

        if (_input.tokenIn != FARM_ASSET) {
            revert GenericWrongTokenIn(
                _input.tokenIn,
                FARM_ASSET
            );
        }
    }

    function _verifyLimitRouter(
        address _limitRouter
    )
        internal
        virtual
    {
        if (whiteListedExternalContracts[_limitRouter] == false) {
            revert GenericWrongLimitRouter(
                _limitRouter
            );
        }
    }

    function _verifyContracts(
        address _pendleSwap,
        address _extRouter,
        address _limitRouter
    )
        internal
        virtual
    {
        if (whiteListedExternalContracts[_pendleSwap] == false) {
            revert GenericWrongPendleSwap(
                _pendleSwap
            );
        }

        if (_limitRouter > address(0)) {
            _verifyLimitRouter(
                _limitRouter
            );
        }

        if (whiteListedExternalContracts[_extRouter] == false) {
            revert GenericWrongExtRouter(
                _extRouter
            );
        }
    }

    function _verifyStandardData(
        address _receiver,
        address _market
    )
        internal
        virtual
    {
        if (_receiver != address(this)) {
            revert GenericWrongReceiver(
                _receiver,
                address(this)
            );
        }

        if (_market != address(PENDLE_MARKET)) {
            revert GenericWrongMarket(
                _market,
                address(PENDLE_MARKET)
            );
        }
    }

    /**
     * @dev Internal function with math logic for detecting
     * if market is out of range.
     */
    function _isOutOfRange(
        uint256 _nftId
    )
        internal
        virtual
        view
        returns (bool)
    {
        return _isOutOfRangeAmount(
            IPendleChild(PENDLE_CHILD).previewAmountWithdrawShares(
                _getCashoutAmount(
                    PENDLE_CHILD,
                    _getPositionLendingShares(
                        _nftId
                    )
                ),
                IPendleChild(PENDLE_CHILD).underlyingLpAssetsCurrent()
            )
        );
    }

    function _getCashoutAmount(
        address _poolToken,
        uint256 _shares
    )
        internal
        virtual
        view
        returns (uint256)
    {
        return WISE_LENDING.cashoutAmount(
            _poolToken,
            _shares
        );
    }

    function _getUserAssetInfo(
        uint256 _lpToWithdraw,
        uint256 _totalLp,
        uint256 _totalSy,
        uint256 _totalPt
    )
        internal
        virtual
        view
        returns (
            uint256,
            uint256,
            uint256
        )
    {
        uint256 userProportion = _lpToWithdraw
            * PRECISION_FACTOR_E18
            / _totalLp;

        return (
            userProportion,
            userProportion
                * _totalSy
                / PRECISION_FACTOR_E18,
            userProportion
                * _totalPt
                / PRECISION_FACTOR_E18
        );
    }

    /**
     * @dev Internal function with math logic for approximating
     * the new borrow APY.
     */
    function _getNewBorrowRate(
        uint256 _borrowAmount,
        bool _isAave
    )
        internal
        virtual
        view
        returns (uint256)
    {
        address relevantAssetAddress = _isAave == true
            ? POOL_ASSET_AAVE
            : FARM_ASSET;

        uint256 totalPool = WISE_LENDING.getTotalPool(
            relevantAssetAddress
        );

        uint256 pseudoPool = WISE_LENDING.getPseudoTotalPool(
            relevantAssetAddress
        );

        if (totalPool > pseudoPool) {
            return 0;
        }

        uint256 newUtilization = PRECISION_FACTOR_E18 - (PRECISION_FACTOR_E18
            * (totalPool - _borrowAmount)
            / pseudoPool
        );

        uint256 pole = _getBorrowRatesData(
            relevantAssetAddress
        ).pole;

        uint256 mulFactor = _getBorrowRatesData(
            relevantAssetAddress
        ).multiplicativeFactor;

        uint256 baseDivider = pole
            * (pole - newUtilization);

        return mulFactor
            * PRECISION_FACTOR_E18
            * newUtilization
            / baseDivider;
    }

    function _getBorrowRatesData(
        address _poolToken
    )
        internal
        virtual
        view
        returns (BorrowRatesEntry memory)
    {
        return WISE_LENDING.borrowRatesData(
            _poolToken
        );
    }

    /**
     * @dev Internal function checking if a position
     * with {_nftId} has a debt ratio under 100%.
     */
    function _checkDebtRatio(
        uint256 _nftId
    )
        internal
        virtual
        view
        returns (bool)
    {
        uint256 borrowShares = isAave[_nftId]
            ? _getPositionBorrowSharesAave(
                _nftId
            )
            : _getPositionBorrowShares(
                _nftId
            );

        if (borrowShares == 0) {
            return true;
        }

        return getTotalWeightedCollateralETH(_nftId)
            >= getPositionBorrowETH(_nftId);
    }

    /**
     * @dev Internal function checking if the leveraged
     * amount not below {minDepositEthAmount} in value.
     */
    function _notBelowMinDepositAmount(
        uint256 _amount
    )
        internal
        virtual
        view
        returns (bool)
    {
        uint256 equivETH = _getTokensInETH(
            ENTRY_ASSET,
            _amount
        );

        return equivETH >= minDepositEthAmount;
    }
}
