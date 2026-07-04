// SPDX-License-Identifier: -- WISE --

pragma solidity =0.8.25;

/**
 * @author René Hochmuth
 * @author Christoph Krpoun
 * @author Vitally Marinchenko
 */

import "../../GenericPowerManager.sol";

error LRTfiApiRoutingCallFailed();
error LRTfiApiRoutingDebtRatioTooHigh();
error LRTfiApiRoutingTooMuchValueLost();

contract LRTfiPowerFarmApiRouting is GenericPowerManager {

    address WETH_ADDRESS_ETH_MAIN = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2;
    address AAVE_WETH_ADDRESS_ETH_MAIN = 0x4d5F47FA6A74757f35C14fD3a6Ef8E3C9BC514E8;

    address public WISE_POOL;

    constructor(
        address _wiseLendingAddress,
        address _pendleChildTokenAddress,
        address _pendleRouter,
        address _entryAsset,
        address _pendleSy,
        address _underlyingMarket,
        address _routerStatic,
        address _dexAddress,
        uint256 _collateralFactor,
        address _powerFarmNFTs
    )
        GenericPowerManager(
            _wiseLendingAddress,
            _pendleChildTokenAddress,
            _pendleRouter,
            _entryAsset,
            _pendleSy,
            _underlyingMarket,
            _routerStatic,
            _dexAddress,
            _collateralFactor,
            _powerFarmNFTs
        )
    {
        collateralFactorRole = msg.sender;

        FARM_ASSET = WETH_ADDRESS;

        POOL_ASSET_AAVE = AAVE_WETH_ADDRESS;

        _doApprovals(
            _wiseLendingAddress
        );
    }

    event WhiteListedExternalContract(
        address indexed _contract,
        bool _isWhiteListed
    );

    function changeUniV3Pool(
        address _uniV3Pool
    )
        external
        override
        onlyMaster
    {
        UNISWAP_V3_POOL = IUniswapV3PoolPowerFarm(
            _uniV3Pool
        );
    }

    function changeUniV2Pool(
        address _univ2Pool
    )
        external
        onlyMaster
    {
        UNISWAP_V2_POOL = IUniswapV2Pool(
            _univ2Pool
        );

        WISE_POOL = _univ2Pool;
    }

    function setWhiteListForContracts(
        address[] memory _whiteList,
        bool[] memory _isWhiteListed
    )
        external
        onlyMaster
    {
        for (uint256 i = 0; i < _whiteList.length; i++) {
            _setMapping(
                whiteListedExternalContracts,
                _whiteList[i],
                _isWhiteListed[i]
            );

            emit WhiteListedExternalContract(
                _whiteList[i],
                _isWhiteListed[i]
            );
        }
    }

    function _setMapping(
        mapping(address => bool) storage _mapping,
        address _key,
        bool _state
    )
        private
    {
        _mapping[_key] = _state;
    }

    function _doApprovals(
        address _wiseLendingAddress
    )
        internal
        override
    {
        _safeApprove(
            POOL_ASSET_AAVE,
            _wiseLendingAddress,
            MAX_AMOUNT
        );

        _safeApprove(
            FARM_ASSET,
            PENDLE_LIMIT_ROUTER_ADDRESS,
            MAX_AMOUNT
        );

        _safeApprove(
            address(PENDLE_MARKET),
            PENDLE_LIMIT_ROUTER_ADDRESS,
            MAX_AMOUNT
        );

        _safeApprove(
            address(PENDLE_MARKET),
            address(PENDLE_ROUTER),
            MAX_AMOUNT
        );

        _safeApprove(
            FARM_ASSET,
            _wiseLendingAddress,
            MAX_AMOUNT
        );

        _safeApprove(
            PENDLE_CHILD,
            _wiseLendingAddress,
            MAX_AMOUNT
        );

        _safeApprove(
            address(PENDLE_MARKET),
            PENDLE_CHILD,
            MAX_AMOUNT
        );

        _safeApprove(
            FARM_ASSET,
            address(AAVE_HUB),
            MAX_AMOUNT
        );

        _safeApprove(
            FARM_ASSET,
            address(PENDLE_ROUTER),
            MAX_AMOUNT
        );
    }

    /**
     * @dev Internal function executing the
     * collateral deposit by converting ETH
     * into {ENTRY_ASSET}, adding it as collateral and
     * borrowing the flashloan token to pay
     * back {_totalDebtBalancer}.
     */
    function _logicOpenPosition(
        bytes memory _callData,
        bool _isAave,
        uint256 _nftId,
        uint256 _depositAmount,
        uint256 _totalDebtBalancer,
        uint256 _allowedSpread
    )
        internal
        override
    {
        uint256 ethValueBefore = _getTokensInETH(
            FARM_ASSET,
            _depositAmount
        );

        uint256 netLpOut = _routeWithCallData({
            _callData: _callData,
            _addLiquidity: true
        });

        (
            uint256 receivedShares,
        ) = IPendleChild(PENDLE_CHILD).depositExactAmount(
            netLpOut
        );

        uint256 ethValueAfter = _getTokensInETH(
            PENDLE_CHILD,
            receivedShares
        )
            * _allowedSpread
            / PRECISION_FACTOR_E18;

        if (ethValueAfter < ethValueBefore) {
            revert LRTfiApiRoutingTooMuchValueLost();
        }

        WISE_LENDING.depositExactAmount(
            _nftId,
            PENDLE_CHILD,
            receivedShares
        );

        _borrowExactAmount(
            _isAave,
            _nftId,
            _totalDebtBalancer
        );

        if (_checkDebtRatio(_nftId) == false) {
            revert LRTfiApiRoutingDebtRatioTooHigh();
        }

        _safeTransfer(
            FARM_ASSET,
            WISE_POOL == ZERO_ADDRESS
                ? BALANCER_ADDRESS
                : WISE_POOL,
            _totalDebtBalancer
        );
    }

    /**
     * @dev Closes position using balancer flashloans.
     */
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
        override
    {
        _paybackExactShares(
            _isAave,
            _nftId,
            _borrowShares
        );

        uint256 ethValueBefore = _getTokensInETH(
            PENDLE_CHILD,
            IPendleChild(PENDLE_CHILD).previewAmountWithdrawShares(
                _getCashoutAmount(
                    PENDLE_CHILD,
                    _getPositionLendingShares(_nftId)
                ),
                IPendleChild(PENDLE_CHILD).underlyingLpAssetsCurrent()
            )
        );

        _withdrawPendleLPs(
            _nftId,
            _lendingShares
        );

        uint256 netTokenOut = _routeWithCallData({
            _callData: _callData,
            _addLiquidity: false
        });

        uint256 ethValueAfter = _getTokensInETH(
            FARM_ASSET,
            netTokenOut
        )
            * _allowedSpread
            / PRECISION_FACTOR_E18;

        if (ethValueAfter < ethValueBefore) {
            revert LRTfiApiRoutingTooMuchValueLost();
        }

        _unwrapETH(
            netTokenOut
        );

        if (_ethBack == true) {
            _closingRouteETH(
                netTokenOut,
                _totalDebtBalancer,
                _caller
            );

            return;
        }

        _closingRouteToken(
            netTokenOut,
            _totalDebtBalancer,
            _caller
        );
    }

    function _routeWithCallData(
        bytes memory _callData,
        bool _addLiquidity
    )
        private
        returns (uint256)
    {
        _verifyCallData({
            _callData: _callData,
            _addLiquidity: _addLiquidity
        });

        (
            bool success,
            bytes memory returnData
        ) = _callPendleRouter(
            _callData
        );

        if (success == false) {
            revert LRTfiApiRoutingCallFailed();
        }

        (
            uint256 netTokenOut
            ,,
        ) = abi.decode(
            returnData,
            (
                uint256,
                uint256,
                uint256
            )
        );

        return netTokenOut;
    }
}
