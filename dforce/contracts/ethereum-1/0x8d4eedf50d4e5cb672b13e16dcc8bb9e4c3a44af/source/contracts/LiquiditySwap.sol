// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/utils/Address.sol";

import "./library/Initializable.sol";
import "./library/Ownable.sol";
import "./price/CurvePrice.sol";
import "./order/PulsarLongTermOrders.sol";
import "./deposit/sDFStrategy.sol";

/**
 * @title dForce's Liquidity Swap
 * @author dForce
 */
contract LiquiditySwap is
    Initializable,
    Ownable,
    CurvePrice,
    PulsarLongTermOrders,
    sDFStrategy
{
    using Address for address;

    /// @dev Submit order maximum price.
    uint256 internal priceUpperLimit_;

    /// @dev Submit order minimum price.
    uint256 internal priceLowerLimit_;

    /**
     * @dev Submit Order Check Price.
     */
    modifier checkPrice() {
        require(
            _price() >= priceLowerLimit_ && _price() <= priceUpperLimit_,
            "checkPrice:price not available"
        );
        _;
    }

    /// @dev Emitted when `priceUpperLimit_` is changed.
    event SetPriceUpperLimit(
        uint256 oldPriceUpperLimit,
        uint256 newPriceUpperLimit
    );

    /// @dev Emitted when `priceLowerLimit_` is changed.
    event SetPriceLowerLimit(
        uint256 oldPriceLowerLimit,
        uint256 newPriceLowerLimit
    );

    /**
     * @notice Only for the implementation contract, as for the proxy pattern,
     *            should call `initialize()` separately.
     * @param _curvePool curve meta pool address.
     * @param _chainlinkAggregator chainlink aggregator(USDC) address.
     * @param _tokenOut tokenOut (USX) address.
     * @param _pulsarRouter pulsarRouter address.
     * @param _StakedDF StakedDF address.
     * @param _priceUpperLimit Submit order maximum price.
     * @param _priceLowerLimit Submit order minimum price.
     */
    constructor(
        ICurveMeta _curvePool,
        IChainlinkAggregator _chainlinkAggregator,
        address _tokenOut,
        ITWAMM _pulsarRouter,
        IStakedDF _StakedDF,
        uint256 _priceUpperLimit,
        uint256 _priceLowerLimit
    )
        public
        CurvePrice(_curvePool, _chainlinkAggregator)
        PulsarLongTermOrders(_tokenOut, _StakedDF.DF(), _pulsarRouter)
        sDFStrategy(_StakedDF)
        initializer
    {
        __Ownable_init();
        _setPriceUpperLimit(_priceUpperLimit);
        _setPriceLowerLimit(_priceLowerLimit);
    }

    /**
     * @notice Initialize Liquidity Swap data.
     */
    function initialize(
        uint256 _priceUpperLimit,
        uint256 _priceLowerLimit
    ) public initializer {
        __Ownable_init();
        _initialize();
        _setPriceUpperLimit(_priceUpperLimit);
        _setPriceLowerLimit(_priceLowerLimit);
    }

    /**
     * @notice Initialize approval StakedDF and pulsarRouter.
     */
    function _initialize()
        internal
        override(sDFStrategy, PulsarLongTermOrders)
    {
        PulsarLongTermOrders._initialize();
        sDFStrategy._initialize();
    }

    /**
     * @dev Set the maximum price for submit.
     * @param _priceUpperLimit maximum price.
     */
    function _setPriceUpperLimit(uint256 _priceUpperLimit) internal {
        uint256 _oldPriceUpperLimit = priceUpperLimit_;
        require(
            _priceUpperLimit != _oldPriceUpperLimit,
            "setPriceUpperLimit: Old and new priceUpperLimit cannot be the same."
        );
        priceUpperLimit_ = _priceUpperLimit;
        emit SetPriceUpperLimit(_oldPriceUpperLimit, _priceUpperLimit);
    }

    function setPriceUpperLimit(uint256 _priceUpperLimit) public onlyOwner {
        _setPriceUpperLimit(_priceUpperLimit);
    }

    /**
     * @dev Set the minimum price for submit.
     * @param _priceLowerLimit minimum price.
     */
    function _setPriceLowerLimit(uint256 _priceLowerLimit) internal {
        uint256 _oldPriceLowerLimit = priceLowerLimit_;
        require(
            _priceLowerLimit != _oldPriceLowerLimit,
            "setPriceUpperLimit: Old and new priceLowerLimit cannot be the same."
        );
        priceLowerLimit_ = _priceLowerLimit;
        emit SetPriceLowerLimit(_oldPriceLowerLimit, _priceLowerLimit);
    }

    function setPriceLowerLimit(uint256 _priceLowerLimit) public onlyOwner {
        _setPriceLowerLimit(_priceLowerLimit);
    }

    /**
     * @dev Submit an order.
     * @param _amount sell token(USX) amount.
     * @param _numberOfBlockIntervals determines when order expires.
     */
    function submit(
        uint256 _amount,
        uint256 _numberOfBlockIntervals
    ) public onlyOwner checkPrice {
        _submit(_amount, _numberOfBlockIntervals);
    }

    /**
     * @dev Cancel an order.
     * @param _orderId order id.
     */
    function cancel(uint256 _orderId) public onlyOwner {
        _cancel(_orderId);
    }

    /**
     * @dev withdraw proceeds from a long term swap.
     * @param _orderId order id.
     */
    function withdraw(uint256 _orderId) public onlyOwner {
        _withdraw(_orderId);
    }

    /**
     * @dev Deposit tokens to StakedDF.
     * @param _amount Deposit token amount.
     */
    function deposit(uint256 _amount) public onlyOwner {
        _deposit(_amount);
    }

    /**
     * @dev Redeem tokens from StakedDF.
     * @param _amount Redeem token(DF) amount.
     */
    function redeem(uint256 _amount) public onlyOwner {
        _redeemUnderlying(_amount);
    }

    /**
     * @dev Redeem all from StakedDF.
     */
    function redeemAll() public onlyOwner {
        _redeem(StakedDF_.balanceOf(address(this)));
    }

    /**
     * @notice Generic call contract function.
     * @dev Call the asset's priceModel function.
     * @param _target Target contract address.
     * @param _signature Function signature.
     * @param _data Param data.
     * @return The return value of calling the target contract function.
     */
    function _execute(
        address _target,
        string memory _signature,
        bytes memory _data
    ) internal returns (bytes memory) {
        require(
            bytes(_signature).length > 0,
            "_execute: Parameter signature can not be empty!"
        );
        bytes memory _callData = abi.encodePacked(
            bytes4(keccak256(bytes(_signature))),
            _data
        );
        return _target.functionCall(_callData);
    }

    function executeTransaction(
        address _target,
        string memory _signature,
        bytes memory _data
    ) external onlyOwner {
        _execute(_target, _signature, _data);
    }

    /**
     * @dev Submit order maximum price.
     */
    function priceUpperLimit() external view returns (uint256) {
        return priceUpperLimit_;
    }

    /**
     * @dev Submit order minimum price.
     */
    function priceLowerLimit() external view returns (uint256) {
        return priceLowerLimit_;
    }
}
