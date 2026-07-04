// SPDX-License-Identifier: Unlicense
pragma solidity 0.8.24;

import {ERC20PermitUpgradeable} from
    "@openzeppelin/contracts-upgradeable/token/ERC20/extensions/ERC20PermitUpgradeable.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/utils/ReentrancyGuardUpgradeable.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IPair} from "src/interfaces/IPair.sol";
import {IPairFees} from "src/interfaces/IPairFees.sol";
import {IPairFeesFactory} from "src/interfaces/IPairFeesFactory.sol";
import {IPairFactory} from "src/interfaces/IPairFactory.sol";
import {IPairCallee} from "src/interfaces/IPairCallee.sol";

//solhint-disable max-states-count
contract Pair is IPair, ERC20PermitUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;

    uint256 internal constant _MINIMUM_LIQUIDITY = 10 ** 3;
    uint256 internal constant _PERIOD_SIZE = 1800; // Capture oracle reading every 30 minutes
    uint256 internal constant _MAX_BPS = 10_000; //100%

    address public token0;
    address public token1;
    address public fees;
    address public factory;

    Observation[] public observations;

    uint256 internal _decimals0;
    uint256 internal _decimals1;

    uint256 public reserve0;
    uint256 public reserve1;
    uint256 public blockTimestampLast;

    uint256 public reserve0CumulativeLast;
    uint256 public reserve1CumulativeLast;

    uint256 public index0 = 0;
    uint256 public index1 = 0;

    // position assigned to each LP to track their current index0 & index1 vs the global position
    mapping(address => uint256) public supplyIndex0;
    mapping(address => uint256) public supplyIndex1;

    // tracks the amount of unclaimed, but claimable tokens off of fees for token0 and token1
    mapping(address => uint256) public claimable0;
    mapping(address => uint256) public claimable1;

    constructor() {
        _disableInitializers();
    }

    function initialize(address token0_, address token1_, address pairFeesFactory_) public initializer {
        __ReentrancyGuard_init();
        string memory symbol_ = string(abi.encodePacked(ERC20(token0_).symbol(), "-", ERC20(token1_).symbol()));
        string memory name_ = string(abi.encodePacked(symbol_, " LP token"));
        __ERC20_init(name_, symbol_);
        __ERC20Permit_init(name_);

        fees = IPairFeesFactory(pairFeesFactory_).createPairFees(token0_, token1_);

        _decimals0 = 10 ** ERC20(token0_).decimals();
        _decimals1 = 10 ** ERC20(token1_).decimals();

        token0 = token0_;
        token1 = token1_;
        factory = msg.sender;

        observations.push(Observation(block.timestamp, 0, 0));
    }

    function getReserves() public view returns (uint256 _reserve0, uint256 _reserve1, uint256 _blockTimestampLast) {
        return (reserve0, reserve1, blockTimestampLast);
    }

    function claimableFees(address recipient_) public view returns (uint256 claimable0_, uint256 claimable1_) {
        return _claimableFor(recipient_);
    }

    function lastObservation() public view returns (Observation memory) {
        return observations[observations.length - 1];
    }

    function prices(address tokenIn_, uint256 amountIn_, uint256 points_) external view returns (uint256[] memory) {
        return sample(tokenIn_, amountIn_, points_, 1);
    }

    function sample(address tokenIn_, uint256 amountIn_, uint256 points_, uint256 window_)
        public
        view
        returns (uint256[] memory)
    {
        uint256[] memory _prices = new uint256[](points_);
        uint256 length = observations.length - 1;
        uint256 i = length - (points_ * window_);
        uint256 nextIndex = 0;
        uint256 index = 0;
        for (; i < length; i += window_) {
            nextIndex = i + window_;
            uint256 timeElapsed_ = observations[nextIndex].timestamp - observations[i].timestamp;
            uint256 reserve0_ =
                (observations[nextIndex].reserve0Cumulative - observations[i].reserve0Cumulative) / timeElapsed_;
            uint256 reserve1_ =
                (observations[nextIndex].reserve1Cumulative - observations[i].reserve1Cumulative) / timeElapsed_;
            _prices[index] = _getAmountOut(amountIn_, tokenIn_, reserve0_, reserve1_);
            index = index + 1;
        }
        return _prices;
    }

    function getAmountOut(uint256 amountIn_, address tokenIn_) external view returns (uint256) {
        (uint256 reserve0_, uint256 reserve1_) = (reserve0, reserve1);
        uint256 fee_ = IPairFactory(factory).getFee(token0, token1, tokenIn_, address(0));
        amountIn_ -= amountIn_ * fee_ / _MAX_BPS; // remove fee from amount received
        return _getAmountOut(amountIn_, tokenIn_, reserve0_, reserve1_);
    }

    function getAmountIn(uint256 amountOut_, address tokenOut_) external view returns (uint256) {
        (uint256 reserve0_, uint256 reserve1_) = (reserve0, reserve1);
        uint256 fee_ = IPairFactory(factory).getFee(token0, token1, address(0), tokenOut_);
        return _getAmountIn(amountOut_, tokenOut_, reserve0_, reserve1_) * _MAX_BPS / (_MAX_BPS - fee_) + 1;
    }

    function tokens() external view returns (address, address) {
        return (token0, token1);
    }

    // this low-level function should be called from a contract which performs important safety checks
    // standard uniswap v2 implementation
    function mint(address to_) external nonReentrant returns (uint256 liquidity) {
        (uint256 reserve0_, uint256 reserve1_) = (reserve0, reserve1);
        uint256 balance0_ = IERC20(token0).balanceOf(address(this));
        uint256 balance1_ = IERC20(token1).balanceOf(address(this));
        uint256 amount0_ = balance0_ - reserve0_;
        uint256 amount1_ = balance1_ - reserve1_;
        uint256 totalSupply_ = totalSupply(); // gas savings, must be defined here since totalSupply can update in _mintFee
        if (totalSupply_ == 0) {
            liquidity = Math.sqrt(amount0_ * amount1_) - _MINIMUM_LIQUIDITY;
            _mint(address(1), _MINIMUM_LIQUIDITY); // permanently lock the first MINIMUM_LIQUIDITY tokens, cannot be address(0) -> ERC20InvalidReceiver
        } else {
            liquidity = Math.min(amount0_ * totalSupply_ / reserve0_, amount1_ * totalSupply_ / reserve1_);
        }
        if (liquidity == 0) revert InsufficientLiquidityMinted();
        _mint(to_, liquidity);
        _update(balance0_, balance1_, reserve0_, reserve1_);
        emit Mint(msg.sender, amount0_, amount1_);
    }

    // this low-level function should be called from a contract which performs important safety checks
    // standard uniswap v2 implementation
    function burn(address to_) external nonReentrant returns (uint256 amount0, uint256 amount1) {
        (uint256 reserve0_, uint256 reserve1_) = (reserve0, reserve1);
        (address token0_, address token1_) = (token0, token1);
        uint256 balance0_ = IERC20(token0_).balanceOf(address(this));
        uint256 balance1_ = IERC20(token1_).balanceOf(address(this));
        uint256 liquidity_ = balanceOf(address(this));
        uint256 totalSupply_ = totalSupply(); // gas savings, must be defined here since totalSupply can update in _mintFee
        amount0 = liquidity_ * balance0_ / totalSupply_; // using balances ensures pro-rata distribution
        amount1 = liquidity_ * balance1_ / totalSupply_; // using balances ensures pro-rata distribution
        if (amount0 == 0 || amount1 == 0) revert InsufficientLiquidityBurned();
        _burn(address(this), liquidity_);
        IERC20(token0_).safeTransfer(to_, amount0);
        IERC20(token1_).safeTransfer(to_, amount1);
        balance0_ = IERC20(token0_).balanceOf(address(this));
        balance1_ = IERC20(token1_).balanceOf(address(this));
        _update(balance0_, balance1_, reserve0_, reserve1_);
        emit Burn(msg.sender, amount0, amount1, to_);
    }

    // this low-level function should be called from a contract which performs important safety checks
    function swap(uint256 amount0Out_, uint256 amount1Out_, address to_, bytes calldata data_) external nonReentrant {
        if (amount0Out_ == 0 && amount1Out_ == 0) revert InsufficientOutputAmount();
        (uint256 reserve0_, uint256 reserve1_) = (reserve0, reserve1);
        if (amount0Out_ >= reserve0_ || amount1Out_ >= reserve1_) revert InsufficientLiquidity();
        uint256 balance0_;
        uint256 balance1_;
        {
            (address token0_, address token1_) = (token0, token1);
            if (to_ == token0_ || to_ == token1_) revert InvalidReceiver();
            if (amount0Out_ > 0) IERC20(token0_).safeTransfer(to_, amount0Out_);
            if (amount1Out_ > 0) IERC20(token1_).safeTransfer(to_, amount1Out_);
            if (data_.length > 0) IPairCallee(to_).hook(_msgSender(), amount0Out_, amount1Out_, data_); // callback, used for flash loans
            balance0_ = IERC20(token0_).balanceOf(address(this));
            balance1_ = IERC20(token1_).balanceOf(address(this));
        }
        uint256 amount0In_ = balance0_ > reserve0_ - amount0Out_ ? balance0_ - (reserve0_ - amount0Out_) : 0;
        uint256 amount1In_ = balance1_ > reserve1_ - amount1Out_ ? balance1_ - (reserve1_ - amount1Out_) : 0;
        if (amount0In_ == 0 && amount1In_ == 0) revert InsufficientInputAmount();
        {
            (address token0_, address token1_) = (token0, token1);
            if (amount0In_ > 0) {
                _update0(amount0In_ * IPairFactory(factory).getFee(token0, token1, token0, address(0)) / _MAX_BPS);
            } // accrue fees for token0 and move them out of pool
            if (amount1In_ > 0) {
                _update1(amount1In_ * IPairFactory(factory).getFee(token0, token1, token1, address(0)) / _MAX_BPS);
            } // accrue fees for token1 and move them out of pool

            balance0_ = IERC20(token0_).balanceOf(address(this)); // since we removed tokens, we need to reconfirm balances, can also simply use previous balance - amountIn/ 10000, but doing balanceOf again as safety check
            balance1_ = IERC20(token1_).balanceOf(address(this));

            if (_k(balance0_, balance1_) < _k(reserve0_, reserve1_)) revert Invariant();
        }
        _update(balance0_, balance1_, reserve0_, reserve1_);
        emit Swap(msg.sender, amount0In_, amount1In_, amount0Out_, amount1Out_, to_);
    }

    function claimFees() external returns (uint256 claimed0, uint256 claimed1) {
        _updateFor(msg.sender);
        claimed0 = claimable0[msg.sender];
        claimed1 = claimable1[msg.sender];
        if (claimed0 > 0 || claimed1 > 0) {
            claimable0[msg.sender] = 0;
            claimable1[msg.sender] = 0;
            IPairFees(fees).claimFeesFor(msg.sender, claimed0, claimed1);
            emit Claim(msg.sender, msg.sender, claimed0, claimed1);
        }
    }

    function skim(address to_) external nonReentrant {
        (address token0_, address token1_) = (token0, token1);
        IERC20(token0_).safeTransfer(to_, IERC20(token0_).balanceOf(address(this)) - (reserve0));
        IERC20(token1_).safeTransfer(to_, IERC20(token1_).balanceOf(address(this)) - (reserve1));
    }

    function sync() external nonReentrant {
        _update(IERC20(token0).balanceOf(address(this)), IERC20(token1).balanceOf(address(this)), reserve0, reserve1);
    }

    function _getAmountOut(uint256 amountIn_, address tokenIn_, uint256 reserve0_, uint256 reserve1_)
        internal
        view
        returns (uint256)
    {
        (uint256 reserveIn_, uint256 reserveOut_) = tokenIn_ == token0 ? (reserve0_, reserve1_) : (reserve1_, reserve0_);
        return amountIn_ * reserveOut_ / (reserveIn_ + amountIn_);
    }

    function _getAmountIn(uint256 amountOut_, address tokenOut_, uint256 reserve0_, uint256 reserve1_)
        internal
        view
        returns (uint256)
    {
        (uint256 reserveOut_, uint256 reserveIn_) =
            tokenOut_ == token0 ? (reserve0_, reserve1_) : (reserve1_, reserve0_);
        return reserveIn_ * amountOut_ / (reserveOut_ - amountOut_);
    }

    function _update(address from_, address to_, uint256 value_) internal override {
        _updateFor(from_);
        _updateFor(to_);
        super._update(from_, to_, value_);
    }

    function _claimableFor(address recipient_) internal view returns (uint256 claimable0_, uint256 claimable1_) {
        claimable0_ = claimable0[recipient_];
        claimable1_ = claimable1[recipient_];
        uint256 supplied_ = balanceOf(recipient_); // get LP balance of `recipient`
        if (supplied_ > 0) {
            uint256 supplyIndex0_ = supplyIndex0[recipient_]; // get last adjusted index0 for recipient
            uint256 supplyIndex1_ = supplyIndex1[recipient_];
            uint256 index0_ = index0; // get global index0 for accumulated fees
            uint256 index1_ = index1;
            uint256 delta0_ = index0_ - supplyIndex0_; // see if there is any difference that need to be accrued
            uint256 delta1_ = index1_ - supplyIndex1_;
            if (delta0_ > 0) {
                uint256 _share = supplied_ * delta0_ / 1e18; // add accrued difference for each supplied token
                claimable0_ += _share;
            }
            if (delta1_ > 0) {
                uint256 _share = supplied_ * delta1_ / 1e18;
                claimable1_ += _share;
            }
        }
        return (claimable0_, claimable1_);
    }

    // MUST be called on any balance changes
    function _updateFor(address recipient_) internal {
        uint256 supplied_ = balanceOf(recipient_); // get LP balance of `recipient`
        if (supplied_ > 0) {
            (uint256 claimable0_, uint256 claimable1_) = _claimableFor(recipient_);
            if (index0 > supplyIndex0[recipient_]) {
                claimable0[recipient_] = claimable0_;
            }
            if (index1 > supplyIndex1[recipient_]) {
                claimable1[recipient_] = claimable1_;
            }
        }
        supplyIndex0[recipient_] = index0; // new users are set to the default global state
        supplyIndex1[recipient_] = index1;
    }

    /// @notice Accrue fees on token0, transfer the fees out to Fees contract
    function _update0(uint256 amount_) internal {
        uint256 treasuryPercentage_ = IPairFactory(factory).feeTreasuryPercentage();
        uint256 treasuryAmount_ = amount_ * treasuryPercentage_ / _MAX_BPS;
        amount_ -= treasuryAmount_;
        IERC20(token0).safeTransfer(IPairFactory(factory).treasury(), treasuryAmount_);
        IERC20(token0).safeTransfer(fees, amount_);
        uint256 ratio_ = amount_ * 1e18 / totalSupply(); // 1e18 adjustment is removed during claim
        if (ratio_ > 0) {
            index0 += ratio_;
        }
        emit Fees(msg.sender, amount_, 0);
    }

    /// @notice Accrue fees on token1, transfer the fees out to Fees contract
    function _update1(uint256 amount_) internal {
        uint256 treasuryPercentage_ = IPairFactory(factory).feeTreasuryPercentage();
        uint256 treasuryAmount_ = amount_ * treasuryPercentage_ / _MAX_BPS;
        amount_ -= treasuryAmount_;
        IERC20(token1).safeTransfer(IPairFactory(factory).treasury(), treasuryAmount_);
        IERC20(token1).safeTransfer(fees, amount_);
        uint256 ratio_ = amount_ * 1e18 / totalSupply(); // 1e18 adjustment is removed during claim
        if (ratio_ > 0) {
            index1 += ratio_;
        }
        emit Fees(msg.sender, 0, amount_);
    }

    function _k(uint256 x_, uint256 y_) internal pure returns (uint256) {
        return x_ * y_; // xy >= k
    }

    function _update(uint256 balance0_, uint256 balance1_, uint256 reserve0_, uint256 reserve1_) internal {
        uint256 blockTimestamp_ = block.timestamp;
        uint256 timeElapsed_ = blockTimestamp_ - blockTimestampLast; // overflow is desired
        if (timeElapsed_ > 0 && reserve0_ != 0 && reserve1_ != 0) {
            reserve0CumulativeLast += reserve0_ * timeElapsed_;
            reserve1CumulativeLast += reserve1_ * timeElapsed_;
        }
        Observation memory point_ = lastObservation();
        timeElapsed_ = blockTimestamp_ - point_.timestamp;
        if (timeElapsed_ > _PERIOD_SIZE) {
            observations.push(Observation(blockTimestamp_, reserve0CumulativeLast, reserve1CumulativeLast));
        }
        reserve0 = balance0_;
        reserve1 = balance1_;
        blockTimestampLast = blockTimestamp_;
        emit Sync(reserve0, reserve1);
    }
}
