pragma solidity 0.8.23;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {ISteerVault} from "@yldr-lending/core/src/interfaces/ext/ISteerVault.sol";
import {IPoolAddressesProvider} from "@yldr-lending/core/src/interfaces/IPoolAddressesProvider.sol";
import {IYLDROracle} from "@yldr-lending/core/src/interfaces/IYLDROracle.sol";
import {IAssetConverter} from "./interfaces/IAssetConverter.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IPool} from "@yldr-lending/core/src/interfaces/IPool.sol";
import {Math} from "@openzeppelin/contracts/utils/math/Math.sol";

contract SteerStrategy is ERC20 {
    using SafeERC20 for IERC20Metadata;

    ISteerVault public immutable steerVault;
    IPool public immutable pool;

    IERC20Metadata public immutable token0;
    IERC20Metadata public immutable token1;

    IERC20Metadata public immutable debtToken;

    IAssetConverter public immutable assetConverter;

    IERC20Metadata public immutable yToken;
    IERC20Metadata public immutable variableDebtToken;

    IPoolAddressesProvider public immutable addressesProvider;

    uint256 public maxSwapSlippage;
    uint256 public targetLtv;
    uint256 public ltvRebalanceThreshold;

    enum FlashloanPurpose {
        Deposit,
        Withdraw,
        Repay
    }

    enum WithdrawalKind {
        In0,
        In1,
        Both
    }

    struct DepositParams {
        uint256 amount0;
        uint256 amount1;
    }

    struct WithdrawParams {
        uint256 shares;
    }

    constructor(
        string memory name_,
        string memory symbol_,
        IERC20Metadata _debtToken,
        ISteerVault _steerVault,
        IPoolAddressesProvider _addressesProvider,
        IAssetConverter _assetConverter,
        uint256 _maxSwapSlippage,
        uint256 _targetLtv,
        uint256 _ltvRebalanceThreshold
    ) ERC20(name_, symbol_) {
        steerVault = _steerVault;

        token0 = IERC20Metadata(steerVault.token0());
        token1 = IERC20Metadata(steerVault.token1());
        debtToken = _debtToken;

        maxSwapSlippage = _maxSwapSlippage;
        targetLtv = _targetLtv;
        ltvRebalanceThreshold = _ltvRebalanceThreshold;

        assetConverter = _assetConverter;

        pool = IPool(_addressesProvider.getPool());
        yToken = IERC20Metadata(pool.getReserveData(address(steerVault)).yTokenAddress);
        variableDebtToken = IERC20Metadata(pool.getReserveData(address(debtToken)).variableDebtTokenAddress);

        addressesProvider = _addressesProvider;

        token0.forceApprove(address(steerVault), type(uint256).max);
        token1.forceApprove(address(steerVault), type(uint256).max);

        debtToken.forceApprove(address(pool), type(uint256).max);
        IERC20Metadata(address(steerVault)).forceApprove(address(pool), type(uint256).max);

        require((token0 == debtToken) || (token1 == debtToken));
    }

    function _getValueUsd(uint256 amount0, uint256 amount1) internal view returns (uint256) {
        IYLDROracle oracle = IYLDROracle(addressesProvider.getPriceOracle());
        uint256 price0 = oracle.getAssetPrice(address(token0));
        uint256 price1 = oracle.getAssetPrice(address(token1));

        return amount0 * price0 / (10 ** token0.decimals()) + amount1 * price1 / (10 ** token1.decimals());
    }

    function _getUsdAmounts()
        internal
        view
        returns (uint256 usdCollateral, uint256 usdDebt, uint256 debtPrice, uint256 vaultTokenPrice)
    {
        IYLDROracle oracle = IYLDROracle(addressesProvider.getPriceOracle());

        vaultTokenPrice = oracle.getAssetPrice(address(steerVault));
        debtPrice = oracle.getAssetPrice(address(debtToken));

        usdCollateral = _getSteerSharesAmount() * vaultTokenPrice / (10 ** steerVault.decimals());
        usdDebt = _getDebtAmount() * debtPrice / (10 ** debtToken.decimals());
    }

    /// @notice Returns total vault value in usd
    function totalAssets() public view returns (uint256) {
        (uint256 usdCollateral, uint256 usdDebt,,) = _getUsdAmounts();
        return usdCollateral - usdDebt;
    }

    function deposit(uint256 amount0, uint256 amount1) external returns (uint256 shares) {
        uint256 totalAssetsBefore = totalAssets();

        uint256 usdValue = _getValueUsd(amount0, amount1);
        require(usdValue > 0, "zero value");
        if (amount0 > 0) {
            token0.safeTransferFrom(msg.sender, address(this), amount0);
        }
        if (amount1 > 0) {
            token1.safeTransferFrom(msg.sender, address(this), amount1);
        }

        uint256 assetsToBorrow = _getAmountToBorrow(usdValue);
        _takeFlashloan(
            assetsToBorrow, FlashloanPurpose.Deposit, abi.encode(DepositParams({amount0: amount0, amount1: amount1}))
        );

        // transfer lefovers to user
        uint256 left0 = token0.balanceOf(address(this));
        uint256 left1 = token1.balanceOf(address(this));

        if (left0 > 0) {
            token0.safeTransfer(msg.sender, left0);
        }
        if (left1 > 0) {
            token1.safeTransfer(msg.sender, left1);
        }

        uint256 totalAssetsAfter = totalAssets();

        shares = totalAssetsBefore == 0
            ? totalAssetsAfter
            : (totalAssetsAfter - totalAssetsBefore) * totalSupply() / totalAssetsBefore;

        require(shares > 0, "zero shares");

        _mint(msg.sender, shares);
    }

    function redeem(uint256 shares, WithdrawalKind kind) external returns (uint256 amount0, uint256 amount1) {
        uint256 debtToRepay = shares * _getDebtAmount() / totalSupply();
        uint256 sharesToRedeem = shares * _getSteerSharesAmount() / totalSupply();

        _takeFlashloan(debtToRepay, FlashloanPurpose.Withdraw, abi.encode(WithdrawParams({shares: sharesToRedeem})));

        amount0 = token0.balanceOf(address(this));
        amount1 = token1.balanceOf(address(this));

        if (kind == WithdrawalKind.In0) {
            amount0 += _swap(address(token1), address(token0), amount1);
            amount1 = 0;
        } else if (kind == WithdrawalKind.In1) {
            amount1 += _swap(address(token0), address(token1), amount0);
            amount0 = 0;
        }

        if (amount0 > 0) {
            token0.safeTransfer(msg.sender, amount0);
        }
        if (amount1 > 0) {
            token1.safeTransfer(msg.sender, amount1);
        }

        require(amount0 + amount1 > 0, "zero amounts");

        _burn(msg.sender, shares);
    }

    function _takeFlashloan(uint256 amount, FlashloanPurpose purpose, bytes memory params) internal {
        address[] memory assets = new address[](1);
        uint256[] memory amounts = new uint256[](1);
        bool[] memory createPosition = new bool[](1);

        assets[0] = address(debtToken);
        amounts[0] = amount;
        // only create position for deposit, on withdrawal/repay we are just repaying
        createPosition[0] = purpose == FlashloanPurpose.Deposit;

        pool.flashLoan(address(this), assets, amounts, createPosition, address(this), abi.encode(purpose, params), 0);
    }

    function _divideForMint(uint256 amount0, uint256 amount1) internal view returns (bool zeroForOne, uint256 amount) {
        (uint256 total0, uint256 total1) = steerVault.getTotalAmounts();
        uint256 usdValue;
        uint256 totalUsdValue;
        {
            IYLDROracle oracle = IYLDROracle(addressesProvider.getPriceOracle());

            uint256 price0 = oracle.getAssetPrice(address(token0));
            uint256 price1 = oracle.getAssetPrice(address(token1));

            uint8 decimals0 = token0.decimals();
            uint8 decimals1 = token1.decimals();

            usdValue = amount0 * price0 / (10 ** decimals0) + amount1 * price1 / (10 ** decimals1);
            totalUsdValue = total0 * price0 / (10 ** decimals0) + total1 * price1 / (10 ** decimals1);
        }

        uint256 neededAmount0 = total0 * usdValue / totalUsdValue;
        uint256 neededAmount1 = total1 * usdValue / totalUsdValue;

        if ((amount0 > neededAmount0) && (amount1 < neededAmount1)) {
            return (true, amount0 - neededAmount0);
        } else if ((amount0 < neededAmount0) && (amount1 > neededAmount1)) {
            return (false, amount1 - neededAmount1);
        } else {
            return (false, 0);
        }
    }

    function _getSteerSharesAmount() internal view returns (uint256) {
        return yToken.balanceOf(address(this));
    }

    function _getDebtAmount() internal view returns (uint256) {
        return variableDebtToken.balanceOf(address(this));
    }

    function _getAmountToBorrow(uint256 usdValue) internal view returns (uint256 assetsToBorrow) {
        IYLDROracle oracle = IYLDROracle(addressesProvider.getPriceOracle());
        uint256 debtPrice = oracle.getAssetPrice(address(debtToken));
        uint256 usdToBorrow = usdValue * targetLtv / (1e4 - targetLtv);

        assetsToBorrow = usdToBorrow * (10 ** debtToken.decimals()) / debtPrice;
    }

    function _swap(address source, address destination, uint256 amount) internal returns (uint256 amountOut) {
        if (source == destination) {
            return amount;
        }
        if (amount == 0) {
            return 0;
        }
        if (IERC20Metadata(source).allowance(address(this), address(assetConverter)) < amount) {
            IERC20Metadata(source).forceApprove(address(assetConverter), type(uint256).max);
        }
        return assetConverter.swap(source, destination, amount, maxSwapSlippage);
    }

    function executeOperation(
        address[] calldata,
        uint256[] calldata amounts,
        uint256[] calldata,
        address initiator,
        bytes calldata params
    ) external returns (bool) {
        require(msg.sender == address(pool));
        require(initiator == address(this));
        uint256 amount = amounts[0];

        (FlashloanPurpose purpose, bytes memory _params) = abi.decode(params, (FlashloanPurpose, bytes));

        if (purpose == FlashloanPurpose.Deposit) {
            DepositParams memory args = abi.decode(_params, (DepositParams));

            uint256 amount0 = args.amount0 + (debtToken == token0 ? amount : 0);
            uint256 amount1 = args.amount1 + (debtToken == token1 ? amount : 0);

            (bool zeroForOne, uint256 amountToSwap) = _divideForMint(amount0, amount1);

            if (zeroForOne) {
                amount0 -= amountToSwap;
                amount1 += _swap(address(token0), address(token1), amountToSwap);
            } else {
                amount1 -= amountToSwap;
                amount0 += _swap(address(token1), address(token0), amountToSwap);
            }

            (uint256 shares,,) = steerVault.deposit(amount0, amount1, 0, 0, address(this));

            pool.supply(address(steerVault), shares, address(this), 0);
        } else if ((purpose == FlashloanPurpose.Withdraw) || (purpose == FlashloanPurpose.Repay)) {
            uint256 sharesForRepay;
            {
                (,, uint256 debtPrice, uint256 vaultTokenPrice) = _getUsdAmounts();
                uint256 usdDebt = amount * debtPrice / (10 ** debtToken.decimals());
                uint256 usdForRepay = usdDebt * (1e4 + maxSwapSlippage) / 1e4;
                sharesForRepay = usdForRepay * (10 ** steerVault.decimals()) / vaultTokenPrice;
            }

            uint256 sharesToWithdraw;
            if (purpose == FlashloanPurpose.Withdraw) {
                WithdrawParams memory args = abi.decode(_params, (WithdrawParams));
                sharesToWithdraw = args.shares;
            } else {
                sharesToWithdraw = sharesForRepay;
            }

            pool.repay(address(debtToken), amount, address(this));
            pool.withdraw(address(steerVault), sharesToWithdraw, address(this));

            (uint256 amount0, uint256 amount1) = steerVault.withdraw(sharesToWithdraw, 0, 0, address(this));

            _swap(address(token0), address(debtToken), amount0 * sharesForRepay / sharesToWithdraw);
            _swap(address(token1), address(debtToken), amount1 * sharesForRepay / sharesToWithdraw);
        } else {
            revert("unknown purpose");
        }

        return true;
    }

    function rebalance() public {
        (uint256 usdCollateral, uint256 usdDebt, uint256 debtPrice,) = _getUsdAmounts();
        uint256 ltv = usdDebt * 1e4 / usdCollateral;
        uint256 targetDebt = (usdCollateral - usdDebt) * targetLtv / (1e4 - targetLtv);
        if (ltv > targetLtv + ltvRebalanceThreshold) {
            uint256 usdToRepay = usdDebt - targetDebt;
            uint256 assetsToBorrow = usdToRepay * (10 ** debtToken.decimals()) / debtPrice;
            _takeFlashloan(assetsToBorrow, FlashloanPurpose.Repay, bytes(""));
        } else if (ltv < targetLtv - ltvRebalanceThreshold) {
            uint256 usdToBorrow = targetDebt - usdDebt;
            uint256 assetsToBorrow = usdToBorrow * (10 ** debtToken.decimals()) / debtPrice;
            _takeFlashloan(
                assetsToBorrow, FlashloanPurpose.Deposit, abi.encode(DepositParams({amount0: 0, amount1: 0}))
            );
        } else {
            revert("rebalance not needed");
        }

        // both scenarios might result in leftovers
        uint256 left0 = token0.balanceOf(address(this));
        uint256 left1 = token1.balanceOf(address(this));

        uint256 leftDebt =
            _swap(address(token0), address(debtToken), left0) + _swap(address(token1), address(debtToken), left1);

        if (leftDebt > 0) {
            pool.repay(address(debtToken), leftDebt, address(this));
        }

        (uint256 usdCollateralAfter, uint256 usdDebtAfter,,) = _getUsdAmounts();
        uint256 ltvAfter = usdDebtAfter * 1e4 / usdCollateralAfter;

        require(
            (ltvAfter >= targetLtv - ltvRebalanceThreshold) && (ltvAfter <= targetLtv + ltvRebalanceThreshold),
            "rebalance failed"
        );
    }
}
