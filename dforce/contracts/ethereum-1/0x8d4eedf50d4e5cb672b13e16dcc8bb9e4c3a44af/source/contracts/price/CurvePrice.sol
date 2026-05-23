// SPDX-License-Identifier: MIT
pragma solidity 0.6.12;

import "@openzeppelin/contracts/math/SafeMath.sol";

import "../interface/IChainlinkAggregator.sol";
import "../interface/ICurve.sol";

/**
 * @title dForce's Liquidity Swap Price Model
 * @author dForce
 */
contract CurvePrice {
    using SafeMath for uint256;

    /// @dev Index value for the token(USX) to send in curve.
    int128 internal constant out_ = 0;

    /// @dev Index value for the token(USDC) to receive in curve.
    int128 internal constant in_ = 2;

    /// @dev Amount of the token(USX) being exchanged.
    uint256 internal constant ONE_ = 1 ether;

    /// @dev Decimals for send token(USX).
    uint256 internal constant outDecimal_ = 18;

    /// @dev Decimals for receive token(USDC).
    uint256 internal constant inDecimal_ = 6;

    /// @dev Decimal places for price padding.
    uint256 internal immutable paddingDecimalScaler_;

    /// @dev Address of curve pool (USX meta pool).
    ICurveMeta internal immutable curvePool_;

    /// @dev Aggregator address for receive token(USDC)
    IChainlinkAggregator internal immutable chainlinkAggregator_;

    /**
     * @notice Constructor for curve price model contract.
     * @param _curvePool curve meta pool address.
     * @param _chainlinkAggregator chainlink aggregator(USDC) address.
     */
    constructor(
        ICurveMeta _curvePool,
        IChainlinkAggregator _chainlinkAggregator
    ) public {
        curvePool_ = _curvePool;
        chainlinkAggregator_ = _chainlinkAggregator;
        paddingDecimalScaler_ =
            10 **
                (
                    outDecimal_.sub(
                        inDecimal_.add(uint256(_chainlinkAggregator.decimals()))
                    )
                );
    }

    /**
     * @dev Get the USD price of the token.
     * @return The USD price of the token, decimal = 18.
     */
    function _price() internal view returns (uint256) {
        (, int256 _answer, , , ) = chainlinkAggregator_.latestRoundData();
        if (_answer < 0) return 0;
        uint256 _receiveAmount = curvePool_.get_dy_underlying(out_, in_, ONE_);
        return uint256(_answer).mul(_receiveAmount).mul(paddingDecimalScaler_);
    }

    /**
     * @dev Get the USD price of the token.
     * @return The USD price of the token, decimal = 18.
     */
    function currentPrice() external view returns (uint256) {
        return _price();
    }

    /**
     * @dev Decimal places for price padding.
     */
    function paddingDecimalScaler() external view returns (uint256) {
        return paddingDecimalScaler_;
    }

    /**
     * @dev Address of curve pool (USX meta pool).
     */
    function curvePool() external view returns (ICurveMeta) {
        return curvePool_;
    }

    /**
     * @dev Aggregator address for receive token(USDC)
     */
    function chainlinkAggregator()
        external
        view
        returns (IChainlinkAggregator)
    {
        return chainlinkAggregator_;
    }
}
