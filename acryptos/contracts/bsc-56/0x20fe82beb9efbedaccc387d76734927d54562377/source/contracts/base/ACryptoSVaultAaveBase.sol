// SPDX-License-Identifier: UNLICENSED

pragma solidity 0.8.13;

import "./ACryptoSVaultFarmBase.sol";

abstract contract ACryptoSVaultAaveBase is ACryptoSVaultFarmBase {
    ILendingPoolAddressesProvider public lendingPoolAddressesProvider;
    ILendingPool internal lendingPool;
    ERC20Upgradeable internal aToken;
    ERC20Upgradeable internal variableDebtToken;
    uint256 internal aDecimals;
    uint256 public targetBorrowLimit;
    uint256 public targetBorrowLimitHysteresis;
    uint256[46] private __gap;

    using SafeERC20Upgradeable for ERC20Upgradeable;

    function __ACryptoSVaultAaveBase_init(
        string memory _name,
        string memory _symbol,
        address _controller,
        address _token,
        address _rewardToken,
        uint256 _harvesterReward,
        address _lendingPoolAddressesProvider,
        uint256 _targetBorrowLimit,
        uint256 _targetBorrowLimitHysteresis
    ) internal initializer {
        __ACryptoSVaultFarmBase_init(
            _name,
            _symbol,
            _controller,
            _token,
            _rewardToken,
            _harvesterReward
        );
        __ACryptoSVaultAaveBase_init_unchained(
            _lendingPoolAddressesProvider,
            _targetBorrowLimit,
            _targetBorrowLimitHysteresis
        );
    }

    function __ACryptoSVaultAaveBase_init_unchained(
        address _lendingPoolAddressesProvider,
        uint256 _targetBorrowLimit,
        uint256 _targetBorrowLimitHysteresis
    ) internal initializer {
        lendingPoolAddressesProvider = ILendingPoolAddressesProvider(
            _lendingPoolAddressesProvider
        );
        targetBorrowLimit = _targetBorrowLimit;
        targetBorrowLimitHysteresis = _targetBorrowLimitHysteresis;
        _validateTargetBorrowLimit();
        updateAddresses();
    }

    function balanceStaked() public view virtual override returns (uint256) {
        return
            (aToken.balanceOf(address(this))) -
            variableDebtToken.balanceOf(address(this));
    }

    function borrowLimit() public view returns (uint256) {
        uint256 borrowBalanceCurrent = variableDebtToken.balanceOf(
            address(this)
        );

        if (borrowBalanceCurrent == 0) return 0;

        uint256 config = lendingPool.getConfiguration(address(token));
        uint256 liq = ((config & ~uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF)) >> 16) * 1e18 / 10000; // prettier-ignore

        // prettier-ignore
        return
            (borrowBalanceCurrent * 1e18) /
            ((aToken.balanceOf(address(this)) * liq) / 1e18);
    }

    function getPriceUsd() public view virtual override returns (uint256) {
        return (getPriceUsdUnderlying() * getPricePerFullShare()) / 1e18;
    }

    function getPriceUsdUnderlying() public view virtual returns (uint256) {
        return
            lendingPoolAddressesProvider.getPriceOracle().getAssetPrice(
                address(token)
            ) * (10**(18 - aDecimals));
    }

    function deposit(uint256 amount) public payable virtual override {
        super.deposit(amount);
        _rebalance(0);
    }

    function rebalance() external virtual {
        _rebalance(0);
    }

    function updateAddresses() public virtual {
        lendingPool = lendingPoolAddressesProvider.getLendingPool();
        ILendingPool.ReserveData memory reserve = lendingPool.getReserveData(
            address(token)
        );
        variableDebtToken = ERC20Upgradeable(reserve.variableDebtTokenAddress);
        aToken = ERC20Upgradeable(reserve.aTokenAddress);

        uint256 config = lendingPool.getConfiguration(address(token));
        aDecimals = (config & ~uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFF)) >> 48; // prettier-ignore
    }

    function setTargetBorrowLimit(
        uint256 _targetBorrowLimit,
        uint256 _targetBorrowLimitHysteresis
    ) external onlyStrategist {
        targetBorrowLimit = _targetBorrowLimit;
        targetBorrowLimitHysteresis = _targetBorrowLimitHysteresis;
        _validateTargetBorrowLimit();
    }

    function _mulUp(uint256 a, uint256 b) internal pure returns (uint256) {
        uint256 product = a * b;
        if (product == 0) {
            return 0;
        } else {
            return ((product - 1) / 1e18) + 1;
        }
    }

    function _divUp(uint256 a, uint256 b) internal pure returns (uint256) {
        if (a == 0) {
            return 0;
        } else {
            return (((a * 1e18) - 1) / b) + 1;
        }
    }

    function _validateTargetBorrowLimit() internal virtual {
        require(
            (targetBorrowLimit + targetBorrowLimitHysteresis) < 1e18,
            "!targetBorrowLimit"
        );
    }

    function calculateTargetBorrowLimit() public virtual returns (uint256) {
        return targetBorrowLimit;
    }

    function _rebalance(uint256 withdrawAmount) internal {
        uint256 _ox = aToken.balanceOf(address(this));
        if (_ox == 0) return;

        uint256 config = lendingPool.getConfiguration(address(token));
        uint256 liq = ((config & ~uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF)) >> 16) * 1e18 / 10000; // prettier-ignore

        uint256 _x = withdrawAmount <= _ox ? _ox - withdrawAmount : 0;
        uint256 _y = variableDebtToken.balanceOf(address(this));
        uint256 _L = (liq * calculateTargetBorrowLimit()) / 1e18;
        uint256 _currentL = _divUp(_y, _x == 0 ? 1 : _x);
        uint256 _liquidityAvailable = token.balanceOf(address(aToken));
        if (
            !paused &&
            _currentL + (targetBorrowLimitHysteresis * liq) / 1e18 < _L
        ) {
            uint256 _dy = ((((_L * _x) / 1e18) - _y) * 1e18) / (1e18 - _L);
            // prettier-ignore
            uint256 _max_dy = ((_ox * 
                (config & ~uint256(0xFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000)) * 1e18 / 10000
            ) / 1e18) - _y - 1;

            if (_dy > _max_dy) _dy = _max_dy;
            if (_dy > _liquidityAvailable) _dy = _liquidityAvailable;

            if (_dy > 0) {
                lendingPool.borrow(address(token), _dy, 2, 0, address(this));
                token.safeIncreaseAllowance(address(lendingPool), _dy);
                lendingPool.deposit(address(token), _dy, address(this), 0);
            }
        } else {
            while (
                _currentL > _L + ((targetBorrowLimitHysteresis * liq) / 1e18)
            ) {
                uint256 _dy = _divUp(
                    _y - _mulUp(_L, _x),
                    1e18 - _divUp(_L, 1e18 - 0)
                );
                if (_dy + 10 > _y) _dy = _y;
                uint256 _dx = (_dy * 1e18) / (1e18 - 0);
                uint256 _max_dx = _ox - _divUp(_y, liq);
                if (_dx > _max_dx) _dx = _max_dx;
                if (_dx > _liquidityAvailable) _dx = _liquidityAvailable;
                require(
                    lendingPool.withdraw(address(token), _dx, address(this)) ==
                        _dx,
                    "!withdraw"
                );

                _dy = token.balanceOf(address(this));
                if (_dy > _y) _dy = _y;

                _ox = _ox - _dx;
                _x = withdrawAmount <= _ox ? _ox - withdrawAmount : 0;

                token.safeIncreaseAllowance(address(lendingPool), _dy);
                require(
                    lendingPool.repay(address(token), _dy, 2, address(this)) ==
                        _dy,
                    "!repay"
                );
                _y = variableDebtToken.balanceOf(address(this));

                _currentL = _divUp(_y, _x == 0 ? 1 : _x);
                _liquidityAvailable = token.balanceOf(address(aToken));
            }
        }
    }

    function _unstake(uint256 amount) internal virtual override {
        uint256 amountToRedeem = (amount * 1e18) / (1e18 - 0);
        _rebalance(amountToRedeem);

        uint256 balance = aToken.balanceOf(address(this));
        if (balance < amountToRedeem && balance >= amountToRedeem - 1)
            amountToRedeem = balance;

        require(
            lendingPool.withdraw(
                address(token),
                amountToRedeem,
                address(this)
            ) == amountToRedeem,
            "!withdraw"
        );
    }

    function _unstakeAll() internal virtual override {
        targetBorrowLimit = 0;
        targetBorrowLimitHysteresis = 0;
        _rebalance(0);

        uint256 amount = aToken.balanceOf(address(this));

        require(
            lendingPool.withdraw(address(token), amount, address(this)) ==
                amount,
            "!withdraw"
        );
    }

    function _stake() internal virtual override {
        if (paused) return;
        uint256 amount = token.balanceOf(address(this));

        token.safeIncreaseAllowance(address(lendingPool), amount);
        lendingPool.deposit(address(token), amount, address(this), 0);
    }
}

interface ILendingPoolAddressesProvider {
    function getLendingPool() external view returns (ILendingPool);

    function getPriceOracle() external view returns (IPriceOracle);
}

interface ILendingPool {
    function deposit(
        address asset,
        uint256 amount,
        address onBehalfOf,
        uint16 referralCode
    ) external;

    function borrow(
        address asset,
        uint256 amount,
        uint256 interestRateMode,
        uint16 referralCode,
        address onBehalfOf
    ) external;

    function repay(
        address asset,
        uint256 amount,
        uint256 rateMode,
        address onBehalfOf
    ) external returns (uint256);

    function withdraw(
        address asset,
        uint256 amount,
        address to
    ) external returns (uint256);

    struct ReserveData {
        //stores the reserve configuration
        uint256 configuration;
        //the liquidity index. Expressed in ray
        uint128 liquidityIndex;
        //variable borrow index. Expressed in ray
        uint128 variableBorrowIndex;
        //the current supply rate. Expressed in ray
        uint128 currentLiquidityRate;
        //the current variable borrow rate. Expressed in ray
        uint128 currentVariableBorrowRate;
        //the current stable borrow rate. Expressed in ray
        uint128 currentStableBorrowRate;
        uint40 lastUpdateTimestamp;
        //tokens addresses
        address aTokenAddress;
        address stableDebtTokenAddress;
        address variableDebtTokenAddress;
        //address of the interest rate strategy
        address interestRateStrategyAddress;
        //the id of the reserve. Represents the position in the list of the active reserves
        uint8 id;
    }

    function getReserveData(address asset)
        external
        view
        returns (ReserveData memory);

    //bit 0-15: LTV
    //bit 16-31: Liq. threshold
    //bit 32-47: Liq. bonus
    //bit 48-55: Decimals
    //bit 56: Reserve is active
    //bit 57: reserve is frozen
    //bit 58: borrowing is enabled
    //bit 59: stable rate borrowing enabled
    //bit 60-63: reserved
    //bit 64-79: reserve factor
    function getConfiguration(address asset) external view returns (uint256);
}

interface IPriceOracle {
    function getAssetPrice(address _asset) external view returns (uint256);
}
