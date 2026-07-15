// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.10;

import "../interfaces/IBundlesToken.sol";
import "./interfaces/IERC20.sol";
import "./interfaces/ISwapFactory.sol";
import "./interfaces/IPair.sol";
import "./interfaces/IOraclePair.sol";
import "./interfaces/IOracle.sol";
import "./libraries/math.sol";
import "./libraries/UQ112x112.sol";
import "./libraries/TransferHelper.sol";
import "./utils/PairErrors.sol";
import "@solmate/utils/ReentrancyGuard.sol";

/// @title Core contract for Pair
/// @notice Low-level contract to mint/burn/swap and claim
contract Pair is IPair, ReentrancyGuard, Math {
    using UQ112x112 for uint224;

    /// @inheritdoc IPairState
    address public immutable factory;

    /// @inheritdoc IPairState
    address public token0;

    /// @inheritdoc IPairState
    address public token1;

    /// @inheritdoc IPairState
    uint16 public fee;

    /// @inheritdoc IPairState
    uint256 public totalSupply;

    /// @inheritdoc IPairState
    uint256 public protocolTokenReserve;

    /// @inheritdoc IPair
    address public protocolToken;

    /// @inheritdoc IPair
    address public pairOracle;

    uint112 private reserve0;
    uint112 private reserve1;

    // DIVIDEND VARIABLES
    uint256 private totalDividendPoints;
    uint256 private constant POINT_MULTIPLIER = 1 ether;

    uint256 private constant MINIMUM_LIQUIDITY = 1000;

    struct Position {
        uint128 lp;
        uint256 dividend;
        uint256 lastDividendPoints;
    }

    mapping(address => mapping(uint256 => Position)) public positions;

    modifier updateDividend(address operator, uint256 positionId) {
        if (positions[operator][positionId].lp > 0) {
            uint256 owing =
                newDividends(operator, positionId, totalDividendPoints);
            if (owing > 0) {
                positions[operator][positionId].dividend += owing;
                positions[operator][positionId].lastDividendPoints =
                    totalDividendPoints;
            }
        } else {
            positions[operator][positionId].lastDividendPoints =
                totalDividendPoints;
        }
        _;
    }

    constructor() {
        factory = msg.sender;
    }

    function initialize(
        address _token0,
        address _token1,
        uint16 _fee,
        address _protocolToken
    ) external {
        if (msg.sender != factory) revert SenderNotFactory();
        token0 = _token0;
        token1 = _token1;
        fee = _fee;
        protocolToken = _protocolToken;
    }

    /// @inheritdoc IPairActions
    function mint(address to, uint256 positionId)
        external
        override
        nonReentrant
        updateDividend(to, positionId)
        returns (uint256)
    {
        (uint112 _reserve0, uint112 _reserve1,) = getReserves();
        uint256 balance0 = IERC20(token0).balanceOf(address(this));
        uint256 balance1 = IERC20(token1).balanceOf(address(this));
        uint256 amount0 = balance0 - _reserve0;
        uint256 amount1 = balance1 - _reserve1;

        uint256 liquidity;

        uint256 _totalSupply = totalSupply;
        if (_totalSupply == 0) {
            liquidity = Math.sqrt(amount0 * amount1) - MINIMUM_LIQUIDITY;
            totalSupply = MINIMUM_LIQUIDITY;
        } else {
            liquidity = Math.min(
                (amount0 * totalSupply) / _reserve0,
                (amount1 * totalSupply) / _reserve1
            );
        }
        if (liquidity == 0) revert InsufficientLiquidityMinted();
        positions[to][positionId].lp += uint128(liquidity);
        totalSupply = totalSupply + liquidity;

        _update(balance0, balance1);
        if (_totalSupply == 0) {
            setOracleInstance();
        }

        emit Mint(to, amount0, amount1);
        return liquidity;
    }

    /// @inheritdoc IPairActions
    function burn(address to, uint256 positionId, uint256 liquidity)
        external
        override
        nonReentrant
        updateDividend(msg.sender, positionId)
        returns (uint256, uint256)
    {
        address _token0 = token0; // gas savings
        address _token1 = token1; // gas savings
        uint256 balance0 = IERC20(_token0).balanceOf(address(this));
        uint256 balance1 = IERC20(_token1).balanceOf(address(this));

        if (positions[msg.sender][positionId].lp < liquidity) {
            revert InsufficientLiquidity();
        }

        positions[msg.sender][positionId].lp -= uint128(liquidity);

        if (liquidity == 0) revert InsufficientLiquidity();

        uint256 _totalSupply = totalSupply; // gas savings
        uint256 amount0 = (liquidity * balance0) / _totalSupply;
        uint256 amount1 = (liquidity * balance1) / _totalSupply;
        totalSupply = totalSupply - liquidity;

        if (amount0 == 0 || amount1 == 0) revert InsufficientLiquidityBurned();
        TransferHelper.safeTransfer(_token0, to, amount0);
        TransferHelper.safeTransfer(_token1, to, amount1);

        balance0 = IERC20(_token0).balanceOf(address(this));
        balance1 = IERC20(_token1).balanceOf(address(this));

        _update(balance0, balance1);
        emit Burn(msg.sender, amount0, amount1, to);
        return (amount0, amount1);
    }

    /// @inheritdoc IPairActions
    function swap(uint256 amount0Out, uint256 amount1Out, address to)
        external
        nonReentrant
    {
        if (amount0Out == 0 && amount1Out == 0) {
            revert InsufficientOutputAmount();
        }

        (uint112 _reserve0, uint112 _reserve1,) = getReserves(); // gas savings
        if (amount0Out >= _reserve0 || amount1Out >= _reserve1) {
            revert InsufficientLiquidity();
        }

        uint256 balance0;
        uint256 balance1;
        {
            address _token0 = token0;
            address _token1 = token1;
            if (to == _token0 || to == _token1) revert InvalidReceiver();
            if (amount0Out > 0) {
                TransferHelper.safeTransfer(_token0, to, amount0Out);
            } // optimistically transfer tokens
            if (amount1Out > 0) {
                TransferHelper.safeTransfer(_token1, to, amount1Out);
            } // optimistically transfer tokens

            balance0 = IERC20(_token0).balanceOf(address(this));
            balance1 = IERC20(_token1).balanceOf(address(this));
        }

        uint256 amount0In = balance0 > _reserve0 - amount0Out
            ? balance0 - (_reserve0 - amount0Out)
            : 0;
        uint256 amount1In = balance1 > _reserve1 - amount1Out
            ? balance1 - (_reserve1 - amount1Out)
            : 0;
        if (amount0In == 0 && amount1In == 0) revert InsufficientInputAmount();

        emit Swap(msg.sender, amount0In, amount1In, amount0Out, amount1Out, to);

        uint256 feeToPay;

        feeToPay = getFees(amount0Out, amount0In, amount1Out, amount1In);
        if (feeToPay < MINIMUM_LIQUIDITY) revert SwapAmountTooLow();
        if (
            IERC20(protocolToken).balanceOf(address(this))
                - protocolTokenReserve < feeToPay
        ) {
            revert InsufficientFee();
        }

        if (balance0 * balance1 < uint256(_reserve0) * _reserve1) revert K();
        _update(balance0, balance1);

        uint256 feeToDisburse = (feeToPay * 8500) / 10000;
        uint256 feeToBurn = feeToPay - feeToDisburse;

        _disburse(feeToDisburse);
        IBundlesToken(protocolToken).burn(feeToBurn);
    }

    /// @inheritdoc IPairActions
    function claimDividend(address to, uint256 positionId)
        external
        override
        nonReentrant
        updateDividend(msg.sender, positionId)
        returns (uint256 claimAmount)
    {
        claimAmount = positions[msg.sender][positionId].dividend;
        if (claimAmount != 0) {
            positions[msg.sender][positionId].dividend = 0;
            protocolTokenReserve -= claimAmount;
            TransferHelper.safeTransfer(protocolToken, to, claimAmount);
        }
    }

    /// @inheritdoc IPairActions
    function skim(address to) external nonReentrant {
        address _token0 = token0; // gas savings
        address _token1 = token1; // gas savings
        TransferHelper.safeTransfer(
            _token0, to, IERC20(_token0).balanceOf(address(this)) - reserve0
        );
        TransferHelper.safeTransfer(
            _token1, to, IERC20(_token1).balanceOf(address(this)) - reserve1
        );
    }

    /// @inheritdoc IPairActions
    function sync() external nonReentrant {
        _update(
            IERC20(token0).balanceOf(address(this)),
            IERC20(token1).balanceOf(address(this))
        );
    }

    /// @inheritdoc IPairDerivedState
    function getPositionLP(address operator, uint256 positionId)
        external
        view
        override
        returns (uint128)
    {
        return positions[operator][positionId].lp;
    }

    /// @inheritdoc IPair
    function updateOracle() public {
        address actualOracle;
        uint112 maxReserve;
        if (pairOracle != address(0)) {
            actualOracle = IOracle(pairOracle).pair();
            (maxReserve,,) = IOraclePair(pairOracle).getReserves();
        }

        address bestOracle = scanOracles(maxReserve);
        if (bestOracle == address(0)) revert NoOracleFound();
        if (bestOracle == pairOracle) revert NoBetterOracle();
        pairOracle = bestOracle;
    }

    /// @inheritdoc IPairDerivedState
    function getReserves()
        public
        view
        override
        returns (
            uint112 _reserve0,
            uint112 _reserve1,
            uint32 _blockTimestampLast
        )
    {
        _reserve0 = reserve0;
        _reserve1 = reserve1;
        _blockTimestampLast = 0;
    }

    /// @inheritdoc IPair
    function getFees(
        uint256 amount0Out,
        uint256 amount0In,
        uint256 amount1Out,
        uint256 amount1In
    ) public view returns (uint256 feeToPay) {
        if (IOracle(pairOracle).token1() == token0) {
            feeToPay = IOracle(pairOracle).consult(
                token0,
                (
                    (amount0In * fee) / MINIMUM_LIQUIDITY
                        + ((amount0Out * fee) / (MINIMUM_LIQUIDITY + fee))
                )
            );
        } else {
            feeToPay = IOracle(pairOracle).consult(
                token1,
                (
                    (amount1In * fee) / MINIMUM_LIQUIDITY
                        + ((amount1Out * fee) / (MINIMUM_LIQUIDITY + fee))
                )
            );
        }
    }

    /// @inheritdoc IPairDerivedState
    function claimableDividends(address operator, uint256 positionId)
        external
        view
        override
        returns (uint256 amount)
    {
        uint256 tempTotalDividendPoints = totalDividendPoints;

        uint256 newDividend =
            newDividends(operator, positionId, tempTotalDividendPoints);
        amount = positions[operator][positionId].dividend + newDividend;
    }

    /// @inheritdoc IPair
    function scanOracles(uint112 maxReserve)
        public
        view
        override
        returns (address bestOracle)
    {
        address[2] memory tokens = [token0, token1];

        for (uint256 token; token < 2; ++token) {
            address pairAddress = ISwapFactory(factory).getPair(
                protocolToken, tokens[token], uint16(10)
            );

            if (pairAddress == address(0)) {
                continue;
            }

            IOraclePair pair = IOraclePair(pairAddress);

            if (Oracle(pair.pairOracle()).firstUpdateCall()) {
                continue;
            }

            (uint112 _reserve0,,) = pair.getReserves();

            if (_reserve0 >= maxReserve) {
                bestOracle = address(pair.pairOracle());
                maxReserve = _reserve0;
            }
        }
    }

    function newDividends(
        address operator,
        uint256 positionId,
        uint256 tempTotalDividendPoints
    ) internal view returns (uint256 amount) {
        uint256 newDividendPoints = tempTotalDividendPoints
            - positions[operator][positionId].lastDividendPoints;
        amount = (positions[operator][positionId].lp * newDividendPoints)
            / POINT_MULTIPLIER;
    }

    function setOracleInstance() internal {
        updateOracle();
        if (pairOracle == address(0)) {
            revert NoOracleFound();
        }
    }

    function _update(uint256 balance0, uint256 balance1) private {
        if (balance0 > type(uint112).max || balance1 > type(uint112).max) {
            revert BalanceOverflow();
        }

        reserve0 = uint112(balance0);
        reserve1 = uint112(balance1);
        emit Sync(reserve0, reserve1);
    }

    function _disburse(uint256 amount) private {
        totalDividendPoints = totalDividendPoints
            + ((amount * POINT_MULTIPLIER) / (totalSupply - MINIMUM_LIQUIDITY));
        protocolTokenReserve = protocolTokenReserve + amount;
    }
}
