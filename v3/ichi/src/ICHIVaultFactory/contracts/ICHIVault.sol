// SPDX-License-Identifier: BUSL-1.1

pragma solidity >=0.8.4;

import { SafeMath } from "@openzeppelin/contracts/utils/math/SafeMath.sol";
import { ERC20 } from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { UV3Math } from "./lib/UV3Math.sol";
import { ReentrancyGuard } from "@openzeppelin/contracts/security/ReentrancyGuard.sol";

import {
    IAlgebraMintCallback
} from "@cryptoalgebra/integral-core/contracts/interfaces/callback/IAlgebraMintCallback.sol";
import {
    IAlgebraSwapCallback
} from "@cryptoalgebra/integral-core/contracts/interfaces/callback/IAlgebraSwapCallback.sol";
import { IAlgebraPool } from "@cryptoalgebra/integral-core/contracts/interfaces/IAlgebraPool.sol";
import {
    IBasePluginV1Factory
} from "@cryptoalgebra/integral-base-plugin/contracts/interfaces/IBasePluginV1Factory.sol";

import { IICHIVault } from "../interfaces/IICHIVault.sol";
import { IICHIVaultFactory } from "../interfaces/IICHIVaultFactory.sol";

/**
 @notice A Uniswap V2-like interface with fungible liquidity to Uniswap V3
 which allows for either one-sided or two-sided liquidity provision.
 ICHIVaults should be deployed by the ICHIVaultFactory.
 ICHIVaults should not be used with tokens that charge transaction fees.
 */
contract ICHIVault is IICHIVault, IAlgebraMintCallback, IAlgebraSwapCallback, ERC20, ReentrancyGuard, Ownable {
    using SafeERC20 for IERC20;
    using SafeMath for uint256;

    address public immutable override ichiVaultFactory;
    address public immutable override pool;
    address public immutable override token0;
    address public immutable override token1;
    bool public immutable override allowToken0;
    bool public immutable override allowToken1;

    address public override ammFeeRecipient;
    address public override affiliate;
    int24 public override baseLower;
    int24 public override baseUpper;
    int24 public override limitLower;
    int24 public override limitUpper;

    uint256 public override deposit0Max;
    uint256 public override deposit1Max;
    uint256 public override hysteresis;

    uint256 public constant PRECISION = 10 ** 18;
    uint256 constant PERCENT = 100;
    address constant NULL_ADDRESS = address(0);
    uint256 constant MIN_SHARES = 1000;

    uint32 public override twapPeriod;
    uint32 public override auxTwapPeriod;

    /**
     @notice Creates an ICHIVault instance based on Uniswap V3 pool. Controls liquidity provision types.
     @param _pool Address of the Uniswap V3 pool for liquidity management.
     @param _allowToken0 Flag indicating if token0 deposits are allowed.
     @param _allowToken1 Flag indicating if token1 deposits are allowed.
     @param __owner Owner address of the ICHIVault.
     @param _twapPeriod TWAP period for hysteresis checks.
     @param _vaultIndex Index of the vault in the factory.
     */
    constructor(
        address _pool,
        bool _allowToken0,
        bool _allowToken1,
        address __owner,
        uint32 _twapPeriod,
        uint256 _vaultIndex
    ) ERC20("ICHI Vault Liquidity", UV3Math.computeIVsymbol(_vaultIndex, _pool, _allowToken0)) {
        require(_pool != NULL_ADDRESS, "IV.constructor: zero address");
        require(_allowToken0 || _allowToken1, "IV.constructor: no allowed tokens");

        ichiVaultFactory = msg.sender;
        pool = _pool;
        token0 = IAlgebraPool(_pool).token0();
        token1 = IAlgebraPool(_pool).token1();
        allowToken0 = _allowToken0;
        allowToken1 = _allowToken1;
        twapPeriod = _twapPeriod;
        auxTwapPeriod = _twapPeriod / 4; // default value is a quarter of the TWAP period

        transferOwnership(__owner);

        hysteresis = PRECISION.div(PERCENT).div(2); // 0.5% threshold
        deposit0Max = type(uint256).max; // max uint256
        deposit1Max = type(uint256).max; // max uint256
        ammFeeRecipient = NULL_ADDRESS; // by default there is no amm fee recipient address;
        affiliate = NULL_ADDRESS; // by default there is no affiliate address
        emit DeployICHIVault(msg.sender, _pool, _allowToken0, _allowToken1, __owner, _twapPeriod);
    }

    function _onlyOwner() private view {
        require(owner() == _msgSender(), "Ownable: caller is not the owner");
    }

    function setTwapPeriod(uint32 newTwapPeriod) external {
        _onlyOwner();
        require(newTwapPeriod > 0, "IV.setTwapPeriod: missing period");
        twapPeriod = newTwapPeriod;
        emit SetTwapPeriod(msg.sender, newTwapPeriod);
    }

    /**
     @notice sets auxiliary TWAP period for hysteresis checks
     @dev Only the admin can call this function.
     @dev aux TWAP could be set to 0 to avoid an additional check
     @param newAuxTwapPeriod new auxiliary TWAP period
    */
    function setAuxTwapPeriod(uint32 newAuxTwapPeriod) external override {
        _onlyOwner();
        auxTwapPeriod = newAuxTwapPeriod;
        emit SetAuxTwapPeriod(msg.sender, newAuxTwapPeriod);
    }

    // added this internal function to avoid stack too deep error
    function validateDepositAndSyncFees(
        uint256 deposit0,
        uint256 deposit1,
        address to
    ) private {
        require(allowToken0 || deposit0 == 0, "IV.deposit: token0 not allowed");
        require(allowToken1 || deposit1 == 0, "IV.deposit: token1 not allowed");
        require(deposit0 > 0 || deposit1 > 0, "IV.deposit: deposits must be > 0");
        require(deposit0 < deposit0Max && deposit1 < deposit1Max, "IV.deposit: deposits too large");
        require(to != NULL_ADDRESS && to != address(this), "IV.deposit: to");

        // update fees for inclusion in total pool amounts
        (uint128 baseLiquidity, , ) = _position(baseLower, baseUpper);
        if (baseLiquidity > 0) {
            (uint burn0, uint burn1) = IAlgebraPool(pool).burn(baseLower, baseUpper, 0, bytes(""));
            require(burn0 == 0 && burn1 == 0, "IV.deposit: unexpected burn (1)");
        }

        (uint128 limitLiquidity, , ) = _position(limitLower, limitUpper);
        if (limitLiquidity > 0) {
            (uint burn0, uint burn1) = IAlgebraPool(pool).burn(limitLower, limitUpper, 0, bytes(""));
            require(burn0 == 0 && burn1 == 0, "IV.deposit: unexpected burn (2)");
        }
    }

    /**
     @notice Distributes shares to depositor, equivalent to the token1 value of their
            deposit. This is calculated by multiplying the deposit value by the ratio
            of total liquidity shares issued to the pool's AUM in token1 value.
    @param deposit0 Amount of token0 transferred from sender to ICHIVault.
    @param deposit1 Amount of token1 transferred from sender to ICHIVault.
    @param to Address receiving the minted liquidity tokens.
    @param shares Quantity of liquidity tokens minted due to the deposit.
    */
    function deposit(
        uint256 deposit0,
        uint256 deposit1,
        address to
    ) external override nonReentrant returns (uint256 shares) {
        validateDepositAndSyncFees(deposit0, deposit1, to);

        // Get the Spot Price
        uint256 price = _fetchSpot(token0, token1, currentTick(), PRECISION);

        // Get the TWAP
        uint256 twap = _fetchTwap(pool, token0, token1, twapPeriod, PRECISION);

        // Get aux TWAP if aux period is set (otherwise set it equal to the TWAP price)
        uint256 auxTwap = auxTwapPeriod > 0
            ? _fetchTwap(pool, token0, token1, auxTwapPeriod, PRECISION)
            : twap;

        // Check price manipulation
        _checkPriceManipulation(price, twap, auxTwap);

        (uint256 pool0, uint256 pool1) = getTotalAmounts();

        // aggregated deposit
        uint256 priceForDeposit = _getConservativePrice(price, twap, auxTwap, false);
        uint256 deposit0PricedInToken1 = deposit0.mul(priceForDeposit).div(PRECISION);

        if (deposit0 > 0) {
            IERC20(token0).safeTransferFrom(msg.sender, address(this), deposit0);
        }
        if (deposit1 > 0) {
            IERC20(token1).safeTransferFrom(msg.sender, address(this), deposit1);
        }

        shares = deposit1.add(deposit0PricedInToken1);

        if (totalSupply() != 0) {
            uint256 priceForPool = _getConservativePrice(price, twap, auxTwap, true);
            uint256 pool0PricedInToken1 = pool0.mul(priceForPool).div(PRECISION);
            shares = shares.mul(totalSupply()).div(pool0PricedInToken1.add(pool1));
        } else {
            shares = shares.mul(MIN_SHARES);
        }

        _mint(to, shares);
        emit Deposit(msg.sender, to, shares, deposit0, deposit1);
    }

    /**
     @notice Redeems shares for a proportion of ICHIVault's AUM, matching the share percentage of total issued.
     @param shares Quantity of liquidity tokens to redeem as pool assets.
     @param to Address receiving the redeemed pool assets.
     @return amount0 Token0 amount received from liquidity token redemption.
     @return amount1 Token1 amount received from liquidity token redemption.
     */
    function withdraw(
        uint256 shares,
        address to
    ) external override nonReentrant returns (uint256 amount0, uint256 amount1) {
        require(shares > 0, "IV.withdraw: shares");
        require(to != NULL_ADDRESS, "IV.withdraw: to");

        uint256 _totalSupply = totalSupply();
        require(shares == _totalSupply ||
            _totalSupply >= shares.add(MIN_SHARES), "IV.withdraw: min shares");

        // Withdraw liquidity from Uniswap pool
        (uint256 base0, uint256 base1) = _burnLiquidity(
            baseLower,
            baseUpper,
            _liquidityForShares(baseLower, baseUpper, shares),
            to,
            false
        );
        (uint256 limit0, uint256 limit1) = _burnLiquidity(
            limitLower,
            limitUpper,
            _liquidityForShares(limitLower, limitUpper, shares),
            to,
            false
        );

        // Push tokens proportional to unused balances
        uint256 unusedAmount0 = IERC20(token0).balanceOf(address(this)).mul(shares).div(_totalSupply);
        uint256 unusedAmount1 = IERC20(token1).balanceOf(address(this)).mul(shares).div(_totalSupply);
        if (unusedAmount0 > 0) IERC20(token0).safeTransfer(to, unusedAmount0);
        if (unusedAmount1 > 0) IERC20(token1).safeTransfer(to, unusedAmount1);

        amount0 = base0.add(limit0).add(unusedAmount0);
        amount1 = base1.add(limit1).add(unusedAmount1);

        _burn(msg.sender, shares);

        emit Withdraw(msg.sender, to, shares, amount0, amount1);
    }

    /**
     @notice Updates LP positions in the ICHIVault.
     @dev First places a base position symmetrically around current price, using one token fully.
     Remaining token forms a single-sided order.
     @param _baseLower Lower tick of the base position.
     @param _baseUpper Upper tick of the base position.
     @param _limitLower Lower tick of the limit position.
     @param _limitUpper Upper tick of the limit position.
     @param swapQuantity Token swap quantity; positive for token0 to token1, negative for token1 to token0.
     */
    function rebalance(
        int24 _baseLower,
        int24 _baseUpper,
        int24 _limitLower,
        int24 _limitUpper,
        int256 swapQuantity
    ) external override nonReentrant {
        _onlyOwner();
        int24 tickSpacing_ = IAlgebraPool(pool).tickSpacing();
        require(
            _baseLower < _baseUpper && _baseLower % tickSpacing_ == 0 && _baseUpper % tickSpacing_ == 0,
            "IV.rebalance: base position invalid"
        );
        require(
            _limitLower < _limitUpper && _limitLower % tickSpacing_ == 0 && _limitUpper % tickSpacing_ == 0,
            "IV.rebalance: limit position invalid"
        );
        require(_baseLower != _limitLower || _baseUpper != _limitUpper, "IV.rebalance: identical positions");

        // update fees
        (uint128 baseLiquidity, , ) = _position(baseLower, baseUpper);
        if (baseLiquidity > 0) {
            IAlgebraPool(pool).burn(baseLower, baseUpper, 0, bytes(""));
        }
        (uint128 limitLiquidity, , ) = _position(limitLower, limitUpper);
        if (limitLiquidity > 0) {
            IAlgebraPool(pool).burn(limitLower, limitUpper, 0, bytes(""));
        }

        // Withdraw all liquidity and collect all fees from Uniswap pool
        (, uint256 feesBase0, uint256 feesBase1) = _position(baseLower, baseUpper);
        (, uint256 feesLimit0, uint256 feesLimit1) = _position(limitLower, limitUpper);

        uint256 fees0 = feesBase0.add(feesLimit0);
        uint256 fees1 = feesBase1.add(feesLimit1);

        _burnLiquidity(baseLower, baseUpper, baseLiquidity, address(this), true);
        _burnLiquidity(limitLower, limitUpper, limitLiquidity, address(this), true);

        _distributeFees(fees0, fees1);

        emit Rebalance(
            currentTick(),
            IERC20(token0).balanceOf(address(this)),
            IERC20(token1).balanceOf(address(this)),
            fees0,
            fees1,
            totalSupply()
        );

        // swap tokens if required
        if (swapQuantity != 0) {
            IAlgebraPool(pool).swap(
                address(this),
                swapQuantity > 0,
                swapQuantity > 0 ? swapQuantity : -swapQuantity,
                swapQuantity > 0 ? UV3Math.MIN_SQRT_RATIO + 1 : UV3Math.MAX_SQRT_RATIO - 1,
                abi.encode(address(this))
            );
        }

        baseLower = _baseLower;
        baseUpper = _baseUpper;
        baseLiquidity = _liquidityForAmounts(
            baseLower,
            baseUpper,
            IERC20(token0).balanceOf(address(this)),
            IERC20(token1).balanceOf(address(this))
        );
        _mintLiquidity(baseLower, baseUpper, baseLiquidity);

        limitLower = _limitLower;
        limitUpper = _limitUpper;
        limitLiquidity = _liquidityForAmounts(
            limitLower,
            limitUpper,
            IERC20(token0).balanceOf(address(this)),
            IERC20(token1).balanceOf(address(this))
        );
        _mintLiquidity(limitLower, limitUpper, limitLiquidity);
    }

    /**
     @notice Collects and distributes fees from ICHIVault's LP positions. Transaction can be paid by anyone.
     @return fees0 Collected fees in token0.
     @return fees1 Collected fees in token1.
     */
    function collectFees() external override nonReentrant returns (uint256 fees0, uint256 fees1) {
        (uint128 baseLiquidity, , ) = _position(baseLower, baseUpper);
        if (baseLiquidity > 0) {
            (uint256 fee0, uint256 fee1) = _burnAnyLiquidity(
                baseLower,
                baseUpper,
                0, // no liquidity is burned, only fees are colleted
                address(this),
                true
            );
            fees0 = fees0.add(fee0);
            fees1 = fees1.add(fee1);
        }
        (uint128 limitLiquidity, , ) = _position(limitLower, limitUpper);
        if (limitLiquidity > 0) {
            (uint256 fee0, uint256 fee1) = _burnAnyLiquidity(
                limitLower,
                limitUpper,
                0, // no liquidity is burned, only fees are colleted
                address(this),
                true
            );
            fees0 = fees0.add(fee0);
            fees1 = fees1.add(fee1);
        }

        emit CollectFees(msg.sender, fees0, fees1);

        if (fees0 > 0 || fees1 > 0) {
            _distributeFees(fees0, fees1);
        }
    }

    /**
     @notice Sends portion of swap fees to ammFeeRecepient, feeRecipient and affiliate.
     @param fees0 fees for token0
     @param fees1 fees for token1
     */
    function _distributeFees(uint256 fees0, uint256 fees1) internal {
        uint256 ammFee = IICHIVaultFactory(ichiVaultFactory).ammFee();
        uint256 baseFee = IICHIVaultFactory(ichiVaultFactory).baseFee();

        // baseFeeRecipient cannot be NULL. This is checked and controlled in the factory
        // ammFeeRecipient could be NULL, in this case ammFees are not taken
        // ammFee + baseFee is always <= 100%. Also controlled in the factory

        if (ammFee > 0 && ammFeeRecipient != NULL_ADDRESS) {
            if (fees0 > 0) {
                IERC20(token0).safeTransfer(ammFeeRecipient, fees0.mul(ammFee).div(PRECISION));
            }
            if (fees1 > 0) {
                IERC20(token1).safeTransfer(ammFeeRecipient, fees1.mul(ammFee).div(PRECISION));
            }
        }

        if (baseFee > 0) {
            // if there is no affiliate 100% of the baseFee should go to feeRecipient
            uint256 baseFeeSplit = (affiliate == NULL_ADDRESS)
                ? PRECISION
                : IICHIVaultFactory(ichiVaultFactory).baseFeeSplit();
            address feeRecipient = IICHIVaultFactory(ichiVaultFactory).feeRecipient();

            if (fees0 > 0) {
                uint256 totalFee = fees0.mul(baseFee).div(PRECISION);
                uint256 toRecipient = totalFee.mul(baseFeeSplit).div(PRECISION);
                uint256 toAffiliate = totalFee.sub(toRecipient);
                IERC20(token0).safeTransfer(feeRecipient, toRecipient);
                if (toAffiliate > 0) {
                    IERC20(token0).safeTransfer(affiliate, toAffiliate);
                }
            }
            if (fees1 > 0) {
                uint256 totalFee = fees1.mul(baseFee).div(PRECISION);
                uint256 toRecipient = totalFee.mul(baseFeeSplit).div(PRECISION);
                uint256 toAffiliate = totalFee.sub(toRecipient);
                IERC20(token1).safeTransfer(feeRecipient, toRecipient);
                if (toAffiliate > 0) {
                    IERC20(token1).safeTransfer(affiliate, toAffiliate);
                }
            }
        }
    }

    /**
     @notice Mint liquidity in Uniswap V3 pool.
     @param tickLower The lower tick of the liquidity position
     @param tickUpper The upper tick of the liquidity position
     @param liquidity Amount of liquidity to mint
     @return amount0 Used amount of token0
     @return amount1 Used amount of token1
     */
    function _mintLiquidity(
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity
    ) internal returns (uint256 amount0, uint256 amount1) {
        if (liquidity > 0) {
            (amount0, amount1, ) = IAlgebraPool(pool).mint(
                address(this),
                address(this),
                tickLower,
                tickUpper,
                liquidity,
                abi.encode(address(this))
            );
        }
    }

    /**
     @notice Burns liquidity in a Uniswap V3 pool.
     @param tickLower Lower tick of the liquidity position.
     @param tickUpper Upper tick of the liquidity position.
     @param liquidity Amount of liquidity to burn; only works if greater than zero.
     @param to Account receiving token0 and token1 from the burn.
     @param collectAll If true, collects all token0 and token1; if false, only those released in this burn.
     @return amount0 Amount of token0 released from the burn.
     @return amount1 Amount of token1 released from the burn.
     */
    function _burnLiquidity(
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        address to,
        bool collectAll
    ) internal returns (uint256 amount0, uint256 amount1) {
        if (liquidity > 0) {
            return _burnAnyLiquidity(tickLower, tickUpper, liquidity, to, collectAll);
        }
    }

    /**
     @notice Burns liquidity in a Uniswap V3 pool; if liquidity is zero, only collects fees.
     @param tickLower Lower tick of the liquidity position.
     @param tickUpper Upper tick of the liquidity position.
     @param liquidity Amount of liquidity to burn, can be zero.
     @param to Account receiving token0 and token1 amounts.
     @param collectAll True to collect all tokens, false for only those released in this burn.
     @return amount0 Token0 amount released from the burn.
     @return amount1 Token1 amount released from the burn.
     */
    function _burnAnyLiquidity(
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity,
        address to,
        bool collectAll
    ) internal returns (uint256 amount0, uint256 amount1) {
        // Burn liquidity
        (uint256 owed0, uint256 owed1) = IAlgebraPool(pool).burn(tickLower, tickUpper, liquidity, bytes(""));

        // Collect amount owed
        uint128 collect0 = collectAll ? type(uint128).max : _uint128Safe(owed0);
        uint128 collect1 = collectAll ? type(uint128).max : _uint128Safe(owed1);
        if (collect0 > 0 || collect1 > 0) {
            (amount0, amount1) = IAlgebraPool(pool).collect(to, tickLower, tickUpper, collect0, collect1);
        }
    }

    /** @notice Helper function to get the most conservative price
     @param spot Current spot price
     @param twap TWAP price
     @param auxTwap Auxiliary TWAP price
     @param isPool Flag indicating if the valuation is for the pool or deposit
     @return price Most conservative price
    */
    function _getConservativePrice(
        uint256 spot,
        uint256 twap,
        uint256 auxTwap,
        bool isPool
    ) internal view returns (uint256) {
        if (isPool) {
            // For pool valuation, use highest price to be conservative
            if (auxTwapPeriod > 0) {
                return max(max(spot, twap), auxTwap);
            }
            return max(spot, twap);
        } else {
            // For deposit valuation, use lowest price to be conservative
            if (auxTwapPeriod > 0) {
                return min(min(spot, twap), auxTwap);
            }
            return min(spot, twap);
        }
    }

    /**
     @notice Helper function to check price manipulation
     @param price Current spot price
     @param twap TWAP price
     @param auxTwap Auxiliary TWAP price
    */
    function _checkPriceManipulation(
        uint256 price,
        uint256 twap,
        uint256 auxTwap
    ) internal view {
        uint256 delta = (price > twap)
            ? price.sub(twap).mul(PRECISION).div(price)
            : twap.sub(price).mul(PRECISION).div(twap);

        if (auxTwapPeriod > 0) {
            uint256 auxDelta = (price > auxTwap)
                ? price.sub(auxTwap).mul(PRECISION).div(price)
                : auxTwap.sub(price).mul(PRECISION).div(auxTwap);

            if (delta > hysteresis || auxDelta > hysteresis)
                require(checkHysteresis(), "DTL");
        } else if (delta > hysteresis) {
            require(checkHysteresis(), "DTL");
        }
    }

    /**
     @notice Calculates liquidity amount for the given shares.
     @param tickLower The lower tick of the liquidity position
     @param tickUpper The upper tick of the liquidity position
     @param shares number of shares
     */
    function _liquidityForShares(int24 tickLower, int24 tickUpper, uint256 shares) internal view returns (uint128) {
        (uint128 position, , ) = _position(tickLower, tickUpper);
        return _uint128Safe(uint256(position).mul(shares).div(totalSupply()));
    }

    /**
     @notice Returns information about the liquidity position.
     @param tickLower The lower tick of the liquidity position
     @param tickUpper The upper tick of the liquidity position
     @return liquidity liquidity amount
     @return tokensOwed0 amount of token0 owed to the owner of the position
     @return tokensOwed1 amount of token1 owed to the owner of the position
     */
    function _position(
        int24 tickLower,
        int24 tickUpper
    ) internal view returns (uint128 liquidity, uint128 tokensOwed0, uint128 tokensOwed1) {
        bytes32 positionKey;
        uint256 _liquidity;
        address owner = address(this);
        assembly {
            positionKey := or(shl(24, or(shl(24, owner), and(tickLower, 0xFFFFFF))), and(tickUpper, 0xFFFFFF))
        }
        (_liquidity, , , tokensOwed0, tokensOwed1) = IAlgebraPool(pool).positions(positionKey);
        liquidity = _uint128Safe(_liquidity);
    }

    /**
     @notice Callback function for mint
     @dev this is where the payer transfers required token0 and token1 amounts
     @param amount0 required amount of token0
     @param amount1 required amount of token1
     @param data encoded payer's address
     */
    function algebraMintCallback(uint256 amount0, uint256 amount1, bytes calldata data) external override {
        require(msg.sender == address(pool), "cb1");
        address payer = abi.decode(data, (address));

        if (payer == address(this)) {
            if (amount0 > 0) IERC20(token0).safeTransfer(msg.sender, amount0);
            if (amount1 > 0) IERC20(token1).safeTransfer(msg.sender, amount1);
        } else {
            if (amount0 > 0) IERC20(token0).safeTransferFrom(payer, msg.sender, amount0);
            if (amount1 > 0) IERC20(token1).safeTransferFrom(payer, msg.sender, amount1);
        }
    }

    /**
     @notice Callback function for swap
     @dev this is where the payer transfers required token0 and token1 amounts
     @param amount0Delta required amount of token0
     @param amount1Delta required amount of token1
     @param data encoded payer's address
     */
    function algebraSwapCallback(int256 amount0Delta, int256 amount1Delta, bytes calldata data) external override {
        require(msg.sender == address(pool), "cb2");
        address payer = abi.decode(data, (address));

        if (amount0Delta > 0) {
            if (payer == address(this)) {
                IERC20(token0).safeTransfer(msg.sender, uint256(amount0Delta));
            } else {
                IERC20(token0).safeTransferFrom(payer, msg.sender, uint256(amount0Delta));
            }
        } else if (amount1Delta > 0) {
            if (payer == address(this)) {
                IERC20(token1).safeTransfer(msg.sender, uint256(amount1Delta));
            } else {
                IERC20(token1).safeTransferFrom(payer, msg.sender, uint256(amount1Delta));
            }
        }
    }

    /**
     @notice Checks if the last price change happened in the current block
     */
    function checkHysteresis() private view returns (bool) {
        address basePlugin = _getBasePluginFromPool();

        // get latest timestamp from the plugin
        (, uint32 blockTimestamp) = UV3Math.lastTimepointMetadata(basePlugin);
        return (block.timestamp != blockTimestamp);
    }

    /**
     @notice Returns the current fee in the pool
     @return fee_ current fee in the pool
     */
    function fee() external view override returns (uint24 fee_) {
        (, , fee_, , , ) = IAlgebraPool(pool).globalState();
    }

    /**
     @notice Sets the hysteresis threshold, in percentage points (10**16 = 1%). Triggers a flashloan attack
     check when the difference between spot price and TWAP exceeds this threshold.
     @dev Accessible only by the owner.
     @param _hysteresis Hysteresis threshold value.
     */
    function setHysteresis(uint256 _hysteresis) external override {
        _onlyOwner();
        hysteresis = _hysteresis;
        emit Hysteresis(msg.sender, _hysteresis);
    }

    /**
     @notice Sets the AMM fee recipient account address, where portion of the collected swap fees will be distributed
     @dev onlyOwner
     @param _ammFeeRecipient The AMM fee recipient account address
     */
    function setAmmFeeRecipient(address _ammFeeRecipient) external override {
        _onlyOwner();
        ammFeeRecipient = _ammFeeRecipient;
        emit AmmFeeRecipient(msg.sender, _ammFeeRecipient);
    }

    /**
     @notice Sets the affiliate account address where portion of the collected swap fees will be distributed
     @dev onlyOwner
     @param _affiliate The affiliate account address
     */
    function setAffiliate(address _affiliate) external override {
        _onlyOwner();
        affiliate = _affiliate;
        emit Affiliate(msg.sender, _affiliate);
    }

    /**
     @notice Sets the maximum token0 and token1 amounts the contract allows in a deposit
     @dev onlyOwner
     @param _deposit0Max The maximum amount of token0 allowed in a deposit
     @param _deposit1Max The maximum amount of token1 allowed in a deposit
     */
    function setDepositMax(uint256 _deposit0Max, uint256 _deposit1Max) external override {
        _onlyOwner();
        deposit0Max = _deposit0Max;
        deposit1Max = _deposit1Max;
        emit DepositMax(msg.sender, _deposit0Max, _deposit1Max);
    }

    /**
     @notice Calculates token0 and token1 amounts for liquidity in a position
     @param tickLower The lower tick of the liquidity position
     @param tickUpper The upper tick of the liquidity position
     @param liquidity Amount of liquidity in the position
     */
    function _amountsForLiquidity(
        int24 tickLower,
        int24 tickUpper,
        uint128 liquidity
    ) internal view returns (uint256, uint256) {
        (uint160 sqrtRatioX96, , , , , ) = IAlgebraPool(pool).globalState();
        return
            UV3Math.getAmountsForLiquidity(
                sqrtRatioX96,
                UV3Math.getSqrtRatioAtTick(tickLower),
                UV3Math.getSqrtRatioAtTick(tickUpper),
                liquidity
            );
    }

    /**
     @notice Calculates amount of liquidity in a position for given token0 and token1 amounts
     @param tickLower The lower tick of the liquidity position
     @param tickUpper The upper tick of the liquidity position
     @param amount0 token0 amount
     @param amount1 token1 amount
     */
    function _liquidityForAmounts(
        int24 tickLower,
        int24 tickUpper,
        uint256 amount0,
        uint256 amount1
    ) internal view returns (uint128) {
        (uint160 sqrtRatioX96, , , , , ) = IAlgebraPool(pool).globalState();
        return
            UV3Math.getLiquidityForAmounts(
                sqrtRatioX96,
                UV3Math.getSqrtRatioAtTick(tickLower),
                UV3Math.getSqrtRatioAtTick(tickUpper),
                amount0,
                amount1
            );
    }

    /**
     @notice uint128Safe function
     @param x input value
     */
    function _uint128Safe(uint256 x) internal pure returns (uint128) {
        require(x <= type(uint128).max, "IV.128_OF");
        return uint128(x);
    }

    /**
     @notice Returns the current tickSpacing in the pool
     @return tickSpacing current tickSpacing in the pool
     */
    function tickSpacing() external view override returns (int24) {
        return IAlgebraPool(pool).tickSpacing();
    }

    /**
     @notice Calculates total quantity of token0 and token1 in both positions (and unused in the ICHIVault)
     @return total0 Quantity of token0 in both positions (and unused in the ICHIVault)
     @return total1 Quantity of token1 in both positions (and unused in the ICHIVault)
     */
    function getTotalAmounts() public view override returns (uint256 total0, uint256 total1) {
        (, uint256 base0, uint256 base1) = getBasePosition();
        (, uint256 limit0, uint256 limit1) = getLimitPosition();
        total0 = IERC20(token0).balanceOf(address(this)).add(base0).add(limit0);
        total1 = IERC20(token1).balanceOf(address(this)).add(base1).add(limit1);
    }

    /**
     @notice Calculates amount of total liquidity in the base position
     @return liquidity Amount of total liquidity in the base position
     @return amount0 Estimated amount of token0 that could be collected by burning the base position
     @return amount1 Estimated amount of token1 that could be collected by burning the base position
     */
    function getBasePosition() public view override returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        (uint128 positionLiquidity, uint128 tokensOwed0, uint128 tokensOwed1) = _position(baseLower, baseUpper);
        (amount0, amount1) = _amountsForLiquidity(baseLower, baseUpper, positionLiquidity);
        liquidity = positionLiquidity;
        amount0 = amount0.add(uint256(tokensOwed0));
        amount1 = amount1.add(uint256(tokensOwed1));
    }

    /**
     @notice Calculates amount of total liquidity in the limit position
     @return liquidity Amount of total liquidity in the base position
     @return amount0 Estimated amount of token0 that could be collected by burning the limit position
     @return amount1 Estimated amount of token1 that could be collected by burning the limit position
     */
    function getLimitPosition() public view override returns (uint128 liquidity, uint256 amount0, uint256 amount1) {
        (uint128 positionLiquidity, uint128 tokensOwed0, uint128 tokensOwed1) = _position(limitLower, limitUpper);
        (amount0, amount1) = _amountsForLiquidity(limitLower, limitUpper, positionLiquidity);
        liquidity = positionLiquidity;
        amount0 = amount0.add(uint256(tokensOwed0));
        amount1 = amount1.add(uint256(tokensOwed1));
    }

    /**
     @notice Returns current price tick
     @return tick Uniswap pool's current price tick
     */
    function currentTick() public view override returns (int24 tick) {
        (, int24 tick_, , , , bool unlocked_) = IAlgebraPool(pool).globalState();
        require(unlocked_, "IV.currentTick: the pool is locked");
        tick = tick_;
    }

    /**
     @notice returns equivalent _tokenOut for _amountIn, _tokenIn using spot price
     @param _tokenIn token the input amount is in
     @param _tokenOut token for the output amount
     @param _tick tick for the spot price
     @param _amountIn amount in _tokenIn
     @return amountOut equivalent anount in _tokenOut
     */
    function _fetchSpot(
        address _tokenIn,
        address _tokenOut,
        int24 _tick,
        uint256 _amountIn
    ) internal pure returns (uint256 amountOut) {
        return UV3Math.getQuoteAtTick(_tick, UV3Math.toUint128(_amountIn), _tokenIn, _tokenOut);
    }

    /**
     @notice returns equivalent _tokenOut for _amountIn, _tokenIn using TWAP price
     @param _pool Uniswap V3 pool address to be used for price checking
     @param _tokenIn token the input amount is in
     @param _tokenOut token for the output amount
     @param _twapPeriod the averaging time period
     @param _amountIn amount in _tokenIn
     @return amountOut equivalent anount in _tokenOut
     */
    function _fetchTwap(
        address _pool,
        address _tokenIn,
        address _tokenOut,
        uint32 _twapPeriod,
        uint256 _amountIn
    ) internal view returns (uint256 amountOut) {
        // Leave twapTick as a int256 to avoid solidity casting
        address basePlugin = _getBasePluginFromPool();

        int256 twapTick = UV3Math.consult(basePlugin, _twapPeriod);
        return
            UV3Math.getQuoteAtTick(
                int24(twapTick), // can assume safe being result from consult()
                UV3Math.toUint128(_amountIn),
                _tokenIn,
                _tokenOut
            );
    }

    function _getBasePluginFromPool() private view returns (address basePlugin) {
        basePlugin = IAlgebraPool(pool).plugin();
        // make sure the base plugin is connected to the pool
        require(UV3Math.isOracleConnectedToPool(basePlugin, pool), "IV: diconnected plugin");
    }

    /// @notice max function
    function max(uint256 a, uint256 b) internal pure returns (uint256) {
        return a < b ? b : a;
    }

    /// @notice min function
    function min(uint256 a, uint256 b) internal pure returns (uint256) {
        return a > b ? b : a;
    }
}
