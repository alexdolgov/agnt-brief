// SPDX-License-Identifier: MIT

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {IERC20, SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

// File @uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router01.sol@v1.1.0-beta.0

pragma solidity >=0.6.2;

interface IUniswapV2Router01 {
    function factory() external pure returns (address);

    function WETH() external pure returns (address);

    function addLiquidity(
        address tokenA,
        address tokenB,
        uint256 amountADesired,
        uint256 amountBDesired,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB, uint256 liquidity);

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
        returns (uint256 amountToken, uint256 amountETH, uint256 liquidity);

    function removeLiquidity(
        address tokenA,
        address tokenB,
        uint256 liquidity,
        uint256 amountAMin,
        uint256 amountBMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountA, uint256 amountB);

    function removeLiquidityETH(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountToken, uint256 amountETH);

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
    ) external returns (uint256 amountA, uint256 amountB);

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
    ) external returns (uint256 amountToken, uint256 amountETH);

    function swapExactTokensForTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapTokensForExactTokens(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactETHForTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function swapTokensForExactETH(
        uint256 amountOut,
        uint256 amountInMax,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapExactTokensForETH(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external returns (uint256[] memory amounts);

    function swapETHForExactTokens(
        uint256 amountOut,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable returns (uint256[] memory amounts);

    function quote(
        uint256 amountA,
        uint256 reserveA,
        uint256 reserveB
    ) external pure returns (uint256 amountB);

    function getAmountOut(
        uint256 amountIn,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountOut);

    function getAmountIn(
        uint256 amountOut,
        uint256 reserveIn,
        uint256 reserveOut
    ) external pure returns (uint256 amountIn);

    function getAmountsOut(
        uint256 amountIn,
        address[] calldata path
    ) external view returns (uint256[] memory amounts);

    function getAmountsIn(
        uint256 amountOut,
        address[] calldata path
    ) external view returns (uint256[] memory amounts);
}

// File @uniswap/v2-periphery/contracts/interfaces/IUniswapV2Router02.sol@v1.1.0-beta.0

pragma solidity >=0.6.2;

interface IUniswapV2Router02 is IUniswapV2Router01 {
    function removeLiquidityETHSupportingFeeOnTransferTokens(
        address token,
        uint256 liquidity,
        uint256 amountTokenMin,
        uint256 amountETHMin,
        address to,
        uint256 deadline
    ) external returns (uint256 amountETH);

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
    ) external returns (uint256 amountETH);

    function swapExactTokensForTokensSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;

    function swapExactETHForTokensSupportingFeeOnTransferTokens(
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external payable;

    function swapExactTokensForETHSupportingFeeOnTransferTokens(
        uint256 amountIn,
        uint256 amountOutMin,
        address[] calldata path,
        address to,
        uint256 deadline
    ) external;
}

// File contracts/interfaces/IXToken.sol

pragma solidity 0.8.4;

interface IXToken is IERC20 {
    function burnFrom(address account, uint256 amount) external;

    function burn(uint256 _amount) external;

    function mint(address _address, uint256 _amount) external;

    function setMinter(address _minter) external;
}

// File contracts/interfaces/IYToken.sol

pragma solidity 0.8.4;

interface IYToken is IERC20 {
    function burn(uint256 _amount) external;
}

// File contracts/interfaces/IYTokenReserve.sol

pragma solidity 0.8.4;

interface IYTokenReserve {
    function transfer(address _address, uint256 _amount) external;

    function setRewarder(address _rewarder) external returns (bool);

    function setPool(address _pool) external returns (bool);
}

// File contracts/interfaces/IMasterOracle.sol

pragma solidity 0.8.4;

interface IMasterOracle {
    function getXTokenPrice() external view returns (uint256);

    function getYTokenPrice() external view returns (uint256);

    function getYTokenTWAP() external view returns (uint256);

    function getXTokenTWAP() external view returns (uint256);
}

// File contracts/interfaces/IWETH.sol

pragma solidity 0.8.4;

interface IWETH is IERC20 {
    function deposit() external payable;

    function withdraw(uint256 wad) external;
}

// File contracts/interfaces/ISwapStrategy.sol

pragma solidity 0.8.4;

interface ISwapStrategy {
    function execute(uint256 _wethIn, uint256 _yTokenOut) external;
}

// File contracts/libs/WethUtils.sol

pragma solidity 0.8.4;

library WethUtils {
    using SafeERC20 for IWETH;
    using SafeERC20 for IERC20;

    IWETH public constant weth =
        IWETH(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c); //WETH
    IERC20 public constant WETH =
        IERC20(0xbb4CdB9CBd36B01bD1cBaEBF2De08d9173bc095c); //WETH  token

    function isWeth(address token) internal pure returns (bool) {
        return address(weth) == token;
    }

    function wrap(uint256 amount) internal {
        weth.deposit{value: amount}();
    }

    function unwrap(uint256 amount) internal {
        weth.withdraw(amount);
    }

    function transfer(address to, uint256 amount) internal {
        weth.safeTransfer(to, amount);
    }
}

contract Pool is OwnableUpgradeable, ReentrancyGuardUpgradeable {
    using SafeERC20 for IERC20;
    using SafeERC20 for IXToken;
    using SafeERC20 for IYToken;

    struct UserInfo {
        uint256 xTokenBalance;
        uint256 yTokenBalance;
        uint256 ethBalance;
        uint256 lastAction;
    }

    /* ========== ADDRESSES ================ */

    IMasterOracle public oracle;
    IXToken public xToken;
    IYToken public yToken;
    IYTokenReserve public yTokenReserve;
    ISwapStrategy public swapStrategy;
    address public treasury;

    /* ========== STATE VARIABLES ========== */

    mapping(address => UserInfo) public userInfo;

    uint256 public unclaimedEth;
    uint256 public unclaimedXToken;
    uint256 public unclaimedYToken;

    // Constants for various precisions
    uint256 public constant PRICE_PRECISION = 1e18;
    uint256 public constant COLLATERAL_RATIO_MAX = 1e6;
    uint256 public constant PRECISION = 1e6;

    // AccessControl state variables
    bool public mintPaused;
    bool public redeemPaused;

    // Collateral ratio
    uint256 public collateralRatio;
    uint256 public lastRefreshCrTimestamp;
    uint256 public refreshCooldown; // = 1 hour
    uint256 public ratioStepUp; // = 0.002 or 0.2% -> ratioStep when CR increase
    uint256 public ratioStepDown; // = 0.002 or 0.2% -> ratioStep when CR decrease
    uint256 public priceTarget; // = 1; 1 XToken pegged to the value of 1 WETH
    uint256 public priceBand; // = 0.004; CR will be adjusted if XToken > 1.004 WETH or XToken < 0.996 WETH
    uint256 public minCollateralRatio;
    uint256 public yTokenSlippage; // 20%
    bool public collateralRatioPaused;

    bool public isTokenTradingActive;

    // fees
    uint256 public redemptionFee; // 6 decimals of precision
    uint256 public constant REDEMPTION_FEE_MAX = 9000; // 0.9%
    uint256 public mintingFee; // 6 decimals of precision
    uint256 public constant MINTING_FEE_MAX = 5000; // 0.5%

    /* ========== CONSTRUCTOR ========== */

    function initialize(
        address _xToken,
        // address _yToken,
        address _yTokenReserve
    ) external initializer {
        __Ownable_init_unchained();
        __ReentrancyGuard_init_unchained();
        require(_xToken != address(0), "Pool::initialize: invalidAddress");
        // require(_yToken != address(0), "Pool::initialize: invalidAddress");
        require(
            _yTokenReserve != address(0),
            "Pool::initialize: invalidAddress"
        );
        xToken = IXToken(_xToken);
        // xToken.setMinter(address(this));
        // yToken = IYToken(_yToken);
        yTokenReserve = IYTokenReserve(_yTokenReserve);

        collateralRatio = 1e6;
        lastRefreshCrTimestamp;
        refreshCooldown = 1800; // = 1 hour
        ratioStepUp = 2000; // = 0.002 or 0.2% -> ratioStep when CR increase
        ratioStepDown = 2000; // = 0.002 or 0.2% -> ratioStep when CR decrease
        priceTarget = 1e18; // = 1; 1 XToken pegged to the value of 1 WETH
        priceBand = 4e15; // = 0.004; CR will be adjusted if XToken > 1.004 WETH or XToken < 0.996 WETH
        minCollateralRatio = 900000;
        yTokenSlippage = 200000; // 20%
        collateralRatioPaused = true;

        redemptionFee = 5000; // 6 decimals of precision
        
        mintingFee = 3000; // 6 decimals of precision
        
    }

    /* ========== VIEWS ========== */

    function info()
        external
        view
        returns (
            uint256 _collateralRatio,
            uint256 _lastRefreshCrTimestamp,
            uint256 _mintingFee,
            uint256 _redemptionFee,
            bool _mintingPaused,
            bool _redemptionPaused,
            uint256 _collateralBalance
        )
    {
        _collateralRatio = collateralRatio;
        _lastRefreshCrTimestamp = lastRefreshCrTimestamp;
        _mintingFee = mintingFee;
        _redemptionFee = redemptionFee;
        _mintingPaused = mintPaused;
        _redemptionPaused = redeemPaused;
        _collateralBalance = usableCollateralBalance();
    }

    function usableCollateralBalance() public view returns (uint256) {
        uint256 _balance = WethUtils.WETH.balanceOf(address(this));
        uint256 _nativeBalance = address(this).balance;
        uint256 _totalBalance = _balance + _nativeBalance;
        return
            _totalBalance > unclaimedEth ? (_totalBalance - unclaimedEth) : 0;
    }

    /// @notice Calculate the expected results for zap minting
    /// @param _ethIn Amount of Collateral token input.
    /// @return _xTokenOut : the amount of XToken output.
    /// @return _yTokenOutTwap : the amount of YToken output by swapping based on Twap price
    /// @return _ethFee : the fee amount in Collateral token.
    /// @return _ethSwapIn : the amount of Collateral token to swap
    function calcMint(
        uint256 _ethIn
    )
        public
        view
        returns (
            uint256 _xTokenOut,
            uint256 _yTokenOutTwap,
            uint256 _ethFee,
            uint256 _ethSwapIn
        )
    {
        uint256 _yTokenTwap = oracle.getYTokenTWAP();
        if (isTokenTradingActive) {
            require(_yTokenTwap > 0, "Pool::calcMint: Invalid YToken price");
        }
        _ethSwapIn =
            (_ethIn * (COLLATERAL_RATIO_MAX - collateralRatio)) /
            COLLATERAL_RATIO_MAX;
        _yTokenOutTwap = (_ethSwapIn * PRICE_PRECISION) / _yTokenTwap;
        _ethFee =
            (_ethIn * mintingFee * collateralRatio) /
            COLLATERAL_RATIO_MAX /
            PRECISION;
        _xTokenOut = _ethIn - ((_ethIn * mintingFee) / PRECISION);
    }

    /// @notice Calculate the expected results for redemption
    /// @param _xTokenIn Amount of XToken input.
    /// @return _ethOut : the amount of Eth output
    /// @return _yTokenOutSpot : the amount of YToken output based on Spot prrice
    /// @return _yTokenOutTwap : the amount of YToken output based on TWAP
    /// @return _ethFee : the fee amount in Eth
    /// @return _requiredEthBalance : required Eth balance in the pool
    function calcRedeem(
        uint256 _xTokenIn
    )
        public
        view
        returns (
            uint256 _ethOut,
            uint256 _yTokenOutSpot,
            uint256 _yTokenOutTwap,
            uint256 _ethFee,
            uint256 _requiredEthBalance
        )
    {
        uint256 _yTokenPrice = oracle.getYTokenPrice();
        uint256 _yTokenTWAP = oracle.getYTokenTWAP();

        if (isTokenTradingActive) {
            require(_yTokenPrice > 0, "Pool::calcRedeem: Invalid YToken price");
            require(_yTokenTWAP > 0, "Pool::calcRedeem: Invalid yTokenTWAP");
        }

        _requiredEthBalance = (_xTokenIn * collateralRatio) / PRECISION;
        if (collateralRatio < COLLATERAL_RATIO_MAX && isTokenTradingActive) {
            _yTokenOutSpot =
                (_xTokenIn *
                    (COLLATERAL_RATIO_MAX - collateralRatio) *
                    (PRECISION - redemptionFee) *
                    PRICE_PRECISION) /
                COLLATERAL_RATIO_MAX /
                PRECISION /
                _yTokenPrice;
            _yTokenOutTwap =
                (_xTokenIn *
                    (COLLATERAL_RATIO_MAX - collateralRatio) *
                    (PRECISION - redemptionFee) *
                    PRICE_PRECISION) /
                COLLATERAL_RATIO_MAX /
                PRECISION /
                _yTokenTWAP;
        }

        if (collateralRatio > 0) {
            _ethOut =
                (_xTokenIn * collateralRatio * (PRECISION - redemptionFee)) /
                COLLATERAL_RATIO_MAX /
                PRECISION;
            _ethFee =
                (_xTokenIn * collateralRatio * redemptionFee) /
                COLLATERAL_RATIO_MAX /
                PRECISION;
        }
    }

    /// @notice Calculate the excess collateral balance
    function calcExcessCollateralBalance()
        public
        view
        returns (uint256 _delta, bool _exceeded)
    {
        uint256 _requiredCollateralBal = (xToken.totalSupply() *
            collateralRatio) / COLLATERAL_RATIO_MAX;
        uint256 _usableCollateralBal = usableCollateralBalance();
        if (_usableCollateralBal >= _requiredCollateralBal) {
            _delta = _usableCollateralBal - _requiredCollateralBal;
            _exceeded = true;
        } else {
            _delta = _requiredCollateralBal - _usableCollateralBal;
            _exceeded = false;
        }
    }

    /* ========== PUBLIC FUNCTIONS ========== */

    /// @notice Update collateral ratio and adjust based on the TWAP price of XToken
    function refreshCollateralRatio() public {
        require(
            collateralRatioPaused == false,
            "Pool::refreshCollateralRatio: Collateral Ratio has been paused"
        );
        require(
            block.timestamp - lastRefreshCrTimestamp >= refreshCooldown,
            "Pool::refreshCollateralRatio: Must wait for the refresh cooldown since last refresh"
        );

        uint256 _xTokenPrice = oracle.getXTokenTWAP();
        if (_xTokenPrice > priceTarget + priceBand) {
            if (collateralRatio <= ratioStepDown) {
                collateralRatio = 0;
            } else {
                uint256 _newCR = collateralRatio - ratioStepDown;
                if (_newCR <= minCollateralRatio) {
                    collateralRatio = minCollateralRatio;
                } else {
                    collateralRatio = _newCR;
                }
            }
        } else if (_xTokenPrice < priceTarget - priceBand) {
            if (collateralRatio + ratioStepUp >= COLLATERAL_RATIO_MAX) {
                collateralRatio = COLLATERAL_RATIO_MAX;
            } else {
                collateralRatio = collateralRatio + ratioStepUp;
            }
        }

        lastRefreshCrTimestamp = block.timestamp;
        emit NewCollateralRatioSet(collateralRatio);
    }

    /* ========== MUTATIVE FUNCTIONS ========== */

    function mint(
        uint256 _minXTokenOut,
        uint256 _ethIn
    ) external payable nonReentrant {
        require(!mintPaused, "Pool::mint: Minting is paused");
        address _sender = msg.sender;

        (
            uint256 _xTokenOut,
            uint256 _yTokenOutTwap,
            uint256 _fee,
            uint256 _wethSwapIn
        ) = calcMint(_ethIn);
        require(_xTokenOut >= _minXTokenOut, "Pool::mint: > slippage");

        // require(msg.value >= _ethIn, "Pool::mint: Insufficent amount");
        WethUtils.wrap(_ethIn);
        // WethUtils.WETH.safeTransferFrom(_sender, address(this), _ethIn);

        if (_yTokenOutTwap > 0 && _wethSwapIn > 0) {
            WethUtils.WETH.safeIncreaseAllowance(
                address(swapStrategy),
                _wethSwapIn
            );
            swapStrategy.execute(_wethSwapIn, _yTokenOutTwap);
        }

        if (_xTokenOut > 0) {
            userInfo[_sender].xTokenBalance =
                userInfo[_sender].xTokenBalance +
                _xTokenOut;
            unclaimedXToken = unclaimedXToken + _xTokenOut;
        }

        userInfo[_sender].lastAction = block.number;
        transferToTreasury(_fee);

        emit Mint(_sender, _xTokenOut, _ethIn, _fee);
    }

    function redeem(
        uint256 _xTokenIn,
        uint256 _minYTokenOut,
        uint256 _minEthOut
    ) external nonReentrant {
        require(!redeemPaused, "Pool::redeem: Redeeming is paused");

        address _sender = msg.sender;
        (
            uint256 _ethOut,
            uint256 _yTokenOutSpot,
            uint256 _yTokenOutTwap,
            uint256 _fee,
            uint256 _requiredEthBalance
        ) = calcRedeem(_xTokenIn);

        // Check if collateral balance meets and meet output expectation
        require(
            _requiredEthBalance <= usableCollateralBalance(),
            "Pool::redeem: > ETH balance"
        );

        // Prevent price manipulation to get more yToken
        checkPriceFluctuation(_yTokenOutSpot, _yTokenOutTwap);

        if (isTokenTradingActive) {
            require(
                _minEthOut <= _ethOut && _minYTokenOut <= _yTokenOutSpot,
                "Pool::redeem: >slippage"
            );
        } else {
            require(_minEthOut <= _ethOut, "Pool::redeem: >slippage");
        }

        if (_ethOut > 0) {
            userInfo[_sender].ethBalance =
                userInfo[_sender].ethBalance +
                _ethOut;
            unclaimedEth = unclaimedEth + _ethOut;
        }

        if (_yTokenOutSpot > 0) {
            userInfo[_sender].yTokenBalance =
                userInfo[_sender].yTokenBalance +
                _yTokenOutSpot;
            unclaimedYToken = unclaimedYToken + _yTokenOutSpot;
        }

        userInfo[_sender].lastAction = block.number;

        // Move all external functions to the end
        xToken.burnFrom(_sender, _xTokenIn);
        transferToTreasury(_fee);

        emit Redeem(_sender, _xTokenIn, _ethOut, _yTokenOutSpot, _fee);
    }

    /**
     * @notice collect all minting and redemption
     */
    function collect() external nonReentrant {
        address _sender = msg.sender;
        require(
            userInfo[_sender].lastAction < block.number,
            "Pool::collect: <minimum_delay"
        );

        bool _sendXToken = false;
        bool _sendYToken = false;
        bool _sendEth = false;
        uint256 _xTokenAmount;
        uint256 _yTokenAmount;
        uint256 _ethAmount;

        // Use Checks-Effects-Interactions pattern
        if (userInfo[_sender].xTokenBalance > 0) {
            _xTokenAmount = userInfo[_sender].xTokenBalance;
            userInfo[_sender].xTokenBalance = 0;
            unclaimedXToken = unclaimedXToken - _xTokenAmount;
            _sendXToken = true;
        }

        if (userInfo[_sender].yTokenBalance > 0) {
            _yTokenAmount = userInfo[_sender].yTokenBalance;
            userInfo[_sender].yTokenBalance = 0;
            unclaimedYToken = unclaimedYToken - _yTokenAmount;
            _sendYToken = true;
        }

        if (userInfo[_sender].ethBalance > 0) {
            _ethAmount = userInfo[_sender].ethBalance;
            userInfo[_sender].ethBalance = 0;
            unclaimedEth = unclaimedEth - _ethAmount;
            _sendEth = true;
        }

        if (_sendXToken) {
            xToken.mint(_sender, _xTokenAmount);
        }

        if (_sendYToken) {
            yTokenReserve.transfer(_sender, _yTokenAmount);
        }

        if (_sendEth) {
            WethUtils.unwrap(_ethAmount);
            address payable recipient = payable(_sender);
            (bool success, ) = recipient.call{value: _ethAmount}("");
            require(success, "Transfer failed");
        }
    }

    /// @notice Function to recollateralize the pool by receiving ETH
    function recollateralize(uint256 _amount) external payable {
        require(_amount > 0, "Pool::recollateralize: Invalid amount");
        require(msg.value >= _amount, "Pool::recollateralize: Invalid amount");
        WethUtils.wrap(_amount);
        // WethUtils.WETH.safeTransferFrom(msg.sender, address(this), _amount);
        emit Recollateralized(msg.sender, _amount);
    }

    function checkPriceFluctuation(
        uint256 _yAmountSpotPrice,
        uint256 _yAmountTwap
    ) internal view {
        if (!isTokenTradingActive) {
            // ignore if trading not live
            return;
        }

        if (yTokenSlippage == PRECISION) {
            // ignore slipapge between Twap and Spot
            return;
        }

        uint256 _diff;
        if (_yAmountSpotPrice > _yAmountTwap) {
            _diff = _yAmountSpotPrice - _yAmountTwap;
        } else {
            _diff = _yAmountTwap - _yAmountSpotPrice;
        }
        require(
            _diff <= ((_yAmountTwap * yTokenSlippage) / PRECISION),
            "Pool::checkPriceFluctuation: > yTokenSlippage"
        );
    }

    /* ========== RESTRICTED FUNCTIONS ========== */

    /// @notice Turn on / off minting and redemption
    /// @param _mintPaused Paused or NotPaused Minting
    /// @param _redeemPaused Paused or NotPaused Redemption
    function toggle(bool _mintPaused, bool _redeemPaused) public onlyOwner {
        mintPaused = _mintPaused;
        redeemPaused = _redeemPaused;
        emit Toggled(_mintPaused, _redeemPaused);
    }

    /// @notice Configure variables related to Collateral Ratio
    /// @param _ratioStepUp Step which Collateral Ratio will be increased each updates
    /// @param _ratioStepDown Step which Collateral Ratio will be decreased each updates
    /// @param _priceBand The collateral ratio will only be adjusted if current price move out of this band
    /// @param _refreshCooldown The minimum delay between each Collateral Ratio updates
    function setCollateralRatioOptions(
        uint256 _ratioStepUp,
        uint256 _ratioStepDown,
        uint256 _priceBand,
        uint256 _refreshCooldown
    ) public onlyOwner {
        ratioStepUp = _ratioStepUp;
        ratioStepDown = _ratioStepDown;
        priceBand = _priceBand;
        refreshCooldown = _refreshCooldown;
        emit NewCollateralRatioOptions(
            _ratioStepUp,
            _ratioStepDown,
            _priceBand,
            _refreshCooldown
        );
    }

    /// @notice Pause or unpause collateral ratio updates
    /// @param _collateralRatioPaused `true` or `false`
    function toggleCollateralRatio(
        bool _collateralRatioPaused
    ) public onlyOwner {
        // if (collateralRatioPaused != _collateralRatioPaused) {
        collateralRatioPaused = _collateralRatioPaused;
        emit UpdateCollateralRatioPaused(_collateralRatioPaused);
        // }
    }

    /// @notice Set the protocol fees
    /// @param _mintingFee Minting fee in percentage
    /// @param _redemptionFee Redemption fee in percentage
    function setFees(
        uint256 _mintingFee,
        uint256 _redemptionFee
    ) public onlyOwner {
        require(
            _mintingFee <= MINTING_FEE_MAX,
            "Pool::setFees:>MINTING_FEE_MAX"
        );
        require(
            _redemptionFee <= REDEMPTION_FEE_MAX,
            "Pool::setFees:>REDEMPTION_FEE_MAX"
        );
        redemptionFee = _redemptionFee;
        mintingFee = _mintingFee;
        emit FeesUpdated(_mintingFee, _redemptionFee);
    }

    /// @notice Set the minimum Collateral Ratio
    /// @param _minCollateralRatio value of minimum Collateral Ratio in 1e6 precision
    function setMinCollateralRatio(
        uint256 _minCollateralRatio
    ) external onlyOwner {
        require(
            _minCollateralRatio <= COLLATERAL_RATIO_MAX,
            "Pool::setMinCollateralRatio: >COLLATERAL_RATIO_MAX"
        );
        minCollateralRatio = _minCollateralRatio;
        emit MinCollateralRatioUpdated(_minCollateralRatio);
    }

    /// @notice Transfer the excess balance of WETH to FeeReserve
    /// @param _amount amount of WETH to reduce
    function reduceExcessCollateral(uint256 _amount) external onlyOwner {
        (uint256 _excessWethBal, bool exceeded) = calcExcessCollateralBalance();
        if (exceeded && _excessWethBal > 0) {
            require(
                _amount <= _excessWethBal,
                "Pool::reduceExcessCollateral: The amount is too large"
            );
            transferToTreasury(_amount);
        }
    }

    /// @notice Set the address of Swapper utils
    /// @param _swapStrategy address of Swapper utils contract
    function setSwapStrategy(ISwapStrategy _swapStrategy) external onlyOwner {
        require(
            address(_swapStrategy) != address(0),
            "Pool::setSwapStrategy: invalid address"
        );
        swapStrategy = _swapStrategy;
        emit SwapStrategyChanged(address(_swapStrategy));
    }

    /// @notice Set new oracle address
    /// @param _oracle address of the oracle
    function setOracle(IMasterOracle _oracle) external onlyOwner {
        require(
            address(_oracle) != address(0),
            "Pool::setOracle: invalid address"
        );
        oracle = _oracle;
        emit OracleChanged(address(_oracle));
    }

    function updateYToken(IYToken _yToken) external onlyOwner {
        yToken = IYToken(_yToken);
    }

    function enabledTokenTradingStaus() external onlyOwner {
        require(!isTokenTradingActive, "Already enabled");
        isTokenTradingActive = true;
    }

    /// @notice Set yTokenSlipage
    function setYTokenSlippage(uint256 _slippage) external onlyOwner {
        require(
            _slippage <= 300000,
            "Pool::setYTokenSlippage: yTokenSlippage cannot be more than 30%"
        );
        yTokenSlippage = _slippage;
        emit YTokenSlippageSet(_slippage);
    }

    /// @notice Set the address of Treasury
    /// @param _treasury address of Treasury contract
    function setTreasury(address _treasury) external {
        require(treasury == address(0), "Pool::setTreasury: not allowed");
        treasury = _treasury;
        emit TreasurySet(_treasury);
    }

    /// @notice Move weth to treasury
    function transferToTreasury(uint256 _amount) internal {
        require(
            treasury != address(0),
            "Pool::transferToTreasury:Invalid address"
        );
        if (_amount > 0) {
            WethUtils.WETH.safeTransfer(treasury, _amount);
        }
    }

    receive() external payable {}

    // EVENTS
    event OracleChanged(address indexed _oracle);
    event Toggled(bool _mintPaused, bool _redeemPaused);
    event Mint(address minter, uint256 amount, uint256 ethIn, uint256 fee);
    event Redeem(
        address redeemer,
        uint256 amount,
        uint256 ethOut,
        uint256 yTokenOut,
        uint256 fee
    );
    event UpdateCollateralRatioPaused(bool _collateralRatioPaused);
    event NewCollateralRatioOptions(
        uint256 _ratioStepUp,
        uint256 _ratioStepDown,
        uint256 _priceBand,
        uint256 _refreshCooldown
    );
    event MinCollateralRatioUpdated(uint256 _minCollateralRatio);
    event NewCollateralRatioSet(uint256 _cr);
    event FeesUpdated(uint256 _mintingFee, uint256 _redemptionFee);
    event Recollateralized(address indexed _sender, uint256 _amount);
    event SwapStrategyChanged(address indexed _swapper);
    event TreasurySet(address indexed _treasury);
    event YTokenSlippageSet(uint256 _slippage);
}
