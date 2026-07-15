pragma solidity >=0.8.5;

import '@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol';
import '@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol';
import '@openzeppelin/contracts-upgradeable/utils/PausableUpgradeable.sol';
import './libraries/DSMath.sol';
import './libraries/SignedSafeMath.sol';
import './libraries/SafeCast.sol';

import './interfaces/IPool.sol';
import './interfaces/IFeeCounter.sol';

contract OctopoolOracle is
Initializable,
OwnableUpgradeable,
PausableUpgradeable
{
    using DSMath for uint256;
    using SignedSafeMath for int256;
    int256 internal constant WAD_I = 10**18;
    uint256 internal constant WAD = 10**18;

    /// @notice pool address
    address public pool;

    /// @notice Dev address
    address public devaddr;


    /* Modifiers */

    modifier onlyDev() {
        require(devaddr == msg.sender, 'Forbidden');
        _;
    }

    /* Constructor and setters */

    /**
     * @notice Initializes pool. Dev is set to be the account calling this function.
     */
    function initialize(address _pool) external initializer {
        __Ownable_init(msg.sender);
        __Pausable_init_unchained();

        devaddr = msg.sender;
        pool = _pool;
    }

    /**
     * @dev pause pool, restricting certain operations
     */
    function pause() external onlyDev {
        _pause();
    }

    /**
     * @dev unpause pool, enabling certain operations
     */
    function unpause() external onlyDev {
        _unpause();
    }

    // Getters for pool params //
    function poolDev() external view returns (address) {
        return IPool(pool).dev();
    }

    function a() external view returns (uint256) {
        return IPool(pool).a();
    }

    function lpFee() external view returns (uint256) {
        return IPool(pool).lpFee();
    }

    function lpDividendRatio() external view returns (uint256) {
        return IPool(pool).lpDividendRatio();
    }

    function lastIndex() external view returns (uint256) {
        return IPool(pool).lastIndex();
    }

    /**
    * @notice Solve quadratic equation
     * @dev This function always returns >= 0
     * @param b quadratic equation b coefficient
     * @param c quadratic equation c coefficient
     * @return x
     */
    function _solveQuad(int256 b, int256 c) internal pure returns (int256) {
        return (((b * b) + (c * 4 * WAD_I)).sqrt(b) - b) / 2;
    }

    /**
     * @notice Quotes the actual amount user would receive in a swap, taking in account slippage and lpFeeAmount
     * @param _fromAsset The initial asset
     * @param _toAsset The asset wanted by user
     * @param _fromAmount The amount to quote
     */
    function quoteFrom(
        uint256 _fromAsset,
        uint256 _toAsset,
        int256 _fromAmount
    ) external view returns (
        uint256 actualToAmount,
        uint256 totalFee
    ) {

        uint256 fromLiability = IPool(pool).indexToAsset(_fromAsset).liability;
        uint256 fromCash = IPool(pool).indexToAsset(_fromAsset).cash;
        uint256 toLiability = IPool(pool).indexToAsset(_toAsset).liability;
        uint256 toCash = IPool(pool).indexToAsset(_toAsset).cash;

        int256 fromAmountWad = _fromAmount.toWad(IPool(pool).indexToAsset(_fromAsset).decimals);
        address feeCounter = IPool(pool).feeCounter();

        {
            IFeeCounter.Fees memory inputFees;
            if (feeCounter != address(0)){
                inputFees = IFeeCounter(feeCounter).calculateInputFee(
                    _fromAsset,
                    fromLiability,
                    fromCash,
                    fromCash + uint256(fromAmountWad)
                );
            }
            int256 totalFeeInt = fromAmountWad.wmul(int256(inputFees.volumeFee + inputFees.poolFee));
            totalFee = uint256(totalFeeInt);
            fromAmountWad = fromAmountWad - totalFeeInt;
        }

        uint256 idealToAmount = _computeIdealToAmount(
            fromLiability,
            fromCash,
            toLiability,
            toCash,
            fromAmountWad,
            IPool(pool).a()
        );

        require(toCash >= idealToAmount, "Not enough cash");

        {
            IFeeCounter.Fees memory outputFees;
            if (feeCounter != address(0)){
                outputFees = IFeeCounter(feeCounter).calculateOutputFee(
                    _toAsset,
                    toLiability,
                    toCash,
                    toCash - idealToAmount
                );
            }

            totalFee += idealToAmount.wmul(outputFees.volumeFee + outputFees.poolFee);
            if (fromAmountWad > 0) {
                actualToAmount = idealToAmount - idealToAmount.wmul(outputFees.volumeFee + outputFees.poolFee);
            } else {
                actualToAmount = idealToAmount;
            }
        }

        actualToAmount = actualToAmount.fromWad(IPool(pool).indexToAsset(_toAsset).decimals);
    }


    function _computeIdealToAmount(
        uint256 fromLiability,
        uint256 fromCash,
        uint256 toLiability,
        uint256 toCash,
        int256 fromAmountWad,
        uint256 ampFactor
    ) internal pure returns (uint256) {
        int256 fromLiabilityI = SafeCast.toInt256(fromLiability);
        int256 fromCashI = SafeCast.toInt256(fromCash);
        int256 toLiabilityI = SafeCast.toInt256(toLiability);
        int256 toCashI = SafeCast.toInt256(toCash);
        int256 ampFactorI = SafeCast.toInt256(ampFactor);

        require(toLiabilityI != 0 && fromLiabilityI != 0, "Invalid value");

        int256 D = fromCashI +
        toCashI -
        ampFactorI.wmul(
            (fromLiabilityI * fromLiabilityI) / fromCashI +
            (toLiabilityI * toLiabilityI) / toCashI
        );

        int256 rx_ = (fromCashI + fromAmountWad).wdiv(fromLiabilityI);

        int256 b = (fromLiabilityI * (rx_ - ampFactorI.wdiv(rx_))) / toLiabilityI - D.wdiv(toLiabilityI);

        int256 ry_ = _solveQuad(b, ampFactorI);

        int256 Dy = toLiabilityI.wmul(ry_) - toCashI;

        return Dy < 0 ? uint256(-Dy) : uint256(Dy);
    }

    /**
     * @notice Quotes the actual amount of LP tokens user would receive after deposit
     * @param _id Asset to deposit
     * @param _amount The amount to quote
     * @return lpTokenToMint The actual amount of LP token user would receive
     * @return liabilityToMint The liability to mint
     * @return reward Reward
     */
    function quoteDeposit(
        uint256 _id,
        uint256 _amount
    ) external returns (
        uint256 lpTokenToMint,
        uint256 liabilityToMint,
        uint256 reward
    ) {
        IPool(pool).mintFee(_id);
        _amount = _amount.toWad(IPool(pool).indexToAsset(_id).decimals);
        int256 amountI = SafeCast.toInt256(_amount);
        int256 cashI = SafeCast.toInt256(IPool(pool).indexToAsset(_id).cash);
        int256 liabilityI = SafeCast.toInt256(IPool(pool).indexToAsset(_id).liability);
        int256 aI = int256(IPool(pool).a()); // safe conversion

        reward = 0;

        if (liabilityI == 0) {
            // if this is a deposit, there is no reward/fee
            // if this is a withdrawal, it should have been reverted
            liabilityToMint = _amount;
        } else {
            require(cashI + amountI >= 0, 'Invalid value'); // impossible

            int256 r_i = cashI.wdiv(liabilityI);
            int256 k = amountI + cashI;
            int256 b = k.wmul(WAD_I - aI) + 2 * aI.wmul(liabilityI);
            int256 c = k.wmul(cashI - (aI * liabilityI) / r_i) -
            k.wmul(k) +
            aI.wmul(liabilityI).wmul(liabilityI);
            int256 l = b * b - 4 * aI * c;
            liabilityToMint = ((-b + l.sqrt(b)).wdiv(aI) / 2).toUint256();
        }

        if (liabilityToMint >= _amount) {
            reward = liabilityToMint - _amount;
        } else {
            // rounding error
            liabilityToMint = _amount;
        }

        // Calculate amount of LP to mint : ( deposit + reward ) * TotalAssetSupply / Liability
        uint256 liability = IPool(pool).indexToAsset(_id).liability;
        lpTokenToMint = (
        liability == 0
        ? liabilityToMint
        : (liabilityToMint * IPool(pool).indexToAsset(_id).totalSupply) / liability
        );
    }

    /**
     * @notice Calculates fee and liability to burn in case of withdrawal
     * @param _id The asset willing to be withdrawn
     * @param _liquidity The liquidity willing to be withdrawn
     * @return amount Total amount to be withdrawn from Pool
     * @return liabilityToBurn Total liability to be burned by Pool
     * @return fee
     */
    function quoteWithdraw(uint256 _id, uint256 _liquidity)
    external
    returns (
        uint256 amount,
        uint256 liabilityToBurn,
        uint256 fee
    )
    {
        IPool(pool).mintFee(_id);
        liabilityToBurn =
        (IPool(pool).indexToAsset(_id).liability * _liquidity) /
        IPool(pool).indexToAsset(_id).totalSupply;
        require(liabilityToBurn != 0, 'Zero liquidity');
        int256 liabilityToBurnI = -SafeCast.toInt256(liabilityToBurn);
        int256 cashI = SafeCast.toInt256(IPool(pool).indexToAsset(_id).cash);
        int256 liabilityI = SafeCast.toInt256(IPool(pool).indexToAsset(_id).liability);
        int256 ampFactorI = int256(IPool(pool).a()); // safe conversion

        {
            int256 L_i_ = liabilityI + liabilityToBurnI;
            int256 r_i = cashI.wdiv(liabilityI);
            int256 rho = liabilityI.wmul(r_i - ampFactorI.wdiv(r_i));
            int256 beta = (rho + liabilityToBurnI.wmul(WAD_I - ampFactorI)) / 2;
            int256 A_i_ = beta +
            (beta * beta + ampFactorI.wmul(L_i_ * L_i_)).sqrt(beta);
            amount = (cashI - A_i_).toUint256();
        }

        if (liabilityToBurn >= amount) {
            fee = liabilityToBurn - amount;
        } else {
            // rounding error
            amount = liabilityToBurn;
        }

        amount = amount.fromWad(IPool(pool).indexToAsset(_id).decimals);
        fee = fee.fromWad(IPool(pool).indexToAsset(_id).decimals);
    }
}