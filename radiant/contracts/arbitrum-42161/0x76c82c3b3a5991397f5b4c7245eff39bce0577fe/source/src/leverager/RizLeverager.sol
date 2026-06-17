// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

import { IERC20 } from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import { IERC20Metadata } from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import { SafeERC20 } from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import { OwnableUpgradeable } from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";

import { TransferHelper } from "@radiant-v2-core/radiant/libraries/TransferHelper.sol";
import { IRizLendingPool, DataTypes } from "../interfaces/Riz/IRizLendingPool.sol";
import { IWETH } from "@radiant-v2-core/interfaces/IWETH.sol";

import { IOracleRouter } from "../OracleRouter.sol";
import { RizLockZap } from "../RizLockZap.sol";
import { Errors } from "../libraries/Errors.sol";
import { Address } from "@openzeppelin/contracts/utils/Address.sol";

/// @title Leverager Contract
/// @author Radiant
contract RizLeverager is OwnableUpgradeable {
    using Address for address;
    using SafeERC20 for IERC20;

    /// @notice Ratio Divisor
    uint256 public constant RATIO_DIVISOR = 10_000;

    // Max reasonable fee, 1%
    uint256 public constant MAX_REASONABLE_FEE = 100;

    /// @notice LTV Calculation precision
    uint256 public constant TWO_POW_16 = 2 ** 16;

    /// @notice Interest rate mode
    uint256 public constant INTEREST_RATE_MODE = 2;

    /// @notice LockZap contract address
    RizLockZap public lockZap;

    /// @notice Wrapped ETH contract address
    IWETH public weth;

    /// @notice Aave oracle address
    IOracleRouter public oracleRouter;

    /// @notice Fee ratio
    uint256 public feePercent;

    /// @notice Treasury address
    address public treasury;

    /// @notice Common asset used for zapping. Description: Common asset is used for zapping.
    /// @notice It is the asset that is used to borrow and zap into dLP in the very end after the looping.
    /// @notice See v2-core Leverager, where common asset was hardcoded into WETH
    address public commonAsset;

    /// @notice Emitted when fee ratio is updated
    event FeePercentUpdated(uint256 indexed _feePercent);

    /// @notice Emitted when treasury is updated
    event TreasuryUpdated(address indexed _treasury);

    /// @notice Emitted when common asset is updated
    event CommonAssetUpdated(address indexed _commonAsset);

    constructor() {
        _disableInitializers();
    }

    /**
     * @notice Initializer
     * @param _oracleRouter address.
     * @param _lockZap address.
     * @param _weth WETH address.
     * @param _feePercent leveraging fee ratio.
     * @param _treasury address.
     */
    function initialize(
        IOracleRouter _oracleRouter,
        RizLockZap _lockZap,
        IWETH _weth,
        uint256 _feePercent,
        address _treasury
    ) public initializer {
        if (address(_oracleRouter) == address(0)) revert Errors.AddressZero();
        if (address(_lockZap) == address(0)) revert Errors.AddressZero();
        if (address(_weth) == address(0)) revert Errors.AddressZero();
        if (_treasury == address(0)) revert Errors.AddressZero();
        if (_feePercent > MAX_REASONABLE_FEE) revert Errors.InvalidRatio();
        __Ownable_init();

        lockZap = _lockZap;
        oracleRouter = _oracleRouter;
        weth = _weth;
        feePercent = _feePercent;
        treasury = _treasury;
    }

    /**
     * @dev Only WETH contract is allowed to transfer ETH here. Prevent other addresses to send Ether to this contract.
     */
    receive() external payable {
        if (msg.sender != address(weth)) revert Errors.ReceiveNotAllowed();
    }

    /**
     * @dev Revert fallback calls
     */
    fallback() external payable {
        revert Errors.FallbackNotAllowed();
    }

    /**
     * @notice Sets fee ratio
     * @param _feePercent fee ratio.
     */
    function setFeePercent(uint256 _feePercent) external onlyOwner {
        if (_feePercent > MAX_REASONABLE_FEE) revert Errors.InvalidRatio();
        feePercent = _feePercent;
        emit FeePercentUpdated(_feePercent);
    }

    /**
     * @notice Sets fee ratio
     * @param _treasury address
     */
    function setTreasury(address _treasury) external onlyOwner {
        if (_treasury == address(0)) revert Errors.AddressZero();
        treasury = _treasury;
        emit TreasuryUpdated(_treasury);
    }

    /// @notice Sets common asset
    /// @param _commonAsset address
    function setCommonAsset(address _commonAsset) external onlyOwner {
        if (_commonAsset == address(0)) revert Errors.AddressZero();
        // Make sure common asset is a contract
        if (!_commonAsset.isContract()) revert Errors.NotAContract();
        commonAsset = _commonAsset;
        emit CommonAssetUpdated(_commonAsset);
    }

    /**
     * @dev Returns the configuration of the reserve
     * @param asset The address of the underlying asset of the reserve
     * @param lendingPool Riz ending pool.
     * @return The configuration of the reserve
     *
     */
    function getConfiguration(address asset, IRizLendingPool lendingPool)
        public
        view
        returns (DataTypes.ReserveConfigurationMap memory)
    {
        return lendingPool.getConfiguration(asset);
    }

    /**
     * @dev Returns variable debt token address of asset
     * @param asset The address of the underlying asset of the reserve
     * @param lendingPool Riz ending pool.
     * @return varaiableDebtToken address of the asset
     *
     */
    function getVDebtToken(address asset, IRizLendingPool lendingPool) external view returns (address) {
        DataTypes.ReserveData memory reserveData = lendingPool.getReserveData(asset);
        return reserveData.variableDebtTokenAddress;
    }

    /**
     * @dev Returns loan to value
     * @param asset The address of the underlying asset of the reserve
     * @param lendingPool Riz ending pool.
     * @return ltv of the asset
     *
     */
    function ltv(address asset, IRizLendingPool lendingPool) external view returns (uint256) {
        DataTypes.ReserveConfigurationMap memory conf = getConfiguration(asset, lendingPool);
        return conf.data % TWO_POW_16;
    }

    /**
     * @dev Loop the deposit and borrow of an asset
     * @param asset for loop
     * @param lendingPool Riz ending pool.
     * @param amount for the initial deposit
     * @param interestRateMode stable or variable borrow mode
     * @param borrowRatio Ratio of tokens to borrow
     * @param loopCount Repeat count for loop
     * @param amountToZap amount to zap denominated in common asset
     * @param isBorrow true when the loop without deposit tokens
     *
     */
    function loop(
        address asset,
        IRizLendingPool lendingPool,
        uint256 amount,
        uint256 interestRateMode,
        uint256 borrowRatio,
        uint256 loopCount,
        uint256 amountToZap,
        bool isBorrow
    ) external {
        if (!(borrowRatio > 0 && borrowRatio <= RATIO_DIVISOR)) revert Errors.InvalidRatio();
        if (loopCount == 0) revert Errors.InvalidLoopCount();
        uint16 referralCode = 0;
        uint256 fee;
        if (!isBorrow) {
            IERC20(asset).safeTransferFrom(msg.sender, address(this), amount);
            fee = (amount * feePercent) / RATIO_DIVISOR;
            if (fee > 0) {
                IERC20(asset).safeTransfer(treasury, fee);
                amount = amount - fee;
            }
        }
        _approve(lendingPool, asset);

        if (!isBorrow) {
            lendingPool.deposit(asset, amount, msg.sender, referralCode);
        } else {
            amount = (amount * RATIO_DIVISOR) / borrowRatio;
        }

        for (uint256 i = 0; i < loopCount;) {
            amount = (amount * borrowRatio) / RATIO_DIVISOR;
            lendingPool.borrow(asset, amount, interestRateMode, referralCode, msg.sender);

            fee = (amount * feePercent) / RATIO_DIVISOR;
            if (fee > 0) {
                IERC20(asset).safeTransfer(treasury, fee);
                amount = amount - fee;
            }

            lendingPool.deposit(asset, amount, msg.sender, referralCode);
            unchecked {
                i++;
            }
        }
        zapWithBorrow(lendingPool, amountToZap, msg.sender);
    }

    /**
     * @notice Zap commonAsset by borrowing.
     * @param lendingPool Riz ending pool.
     * @param amount to zap denominated in common asset
     * @param borrower to zap
     * @return liquidity amount by zapping
     *
     */
    function zapWithBorrow(IRizLendingPool lendingPool, uint256 amount, address borrower)
        public
        returns (uint256 liquidity)
    {
        if (msg.sender != borrower && msg.sender != address(lendingPool)) revert Errors.InsufficientPermission();

        if (amount > 0) {
            uint16 referralCode = 0;
            lendingPool.borrow(commonAsset, amount, INTEREST_RATE_MODE, referralCode, borrower);
            if (IERC20(commonAsset).allowance(address(this), address(lockZap)) == 0) {
                IERC20(commonAsset).forceApprove(address(lockZap), type(uint256).max);
            }
            // Using default slippage value
            liquidity = lockZap.rizZapOnBehalf(false, address(lendingPool), commonAsset, amount, 0, borrower, 0);
        }
    }

    /**
     * @notice Approves token allowance of `lendingPool` and `treasury`.
     * @param lendingPool Riz ending pool.
     * @param asset underlyig asset
     *
     */
    function _approve(IRizLendingPool lendingPool, address asset) internal {
        if (IERC20(asset).allowance(address(this), address(lendingPool)) == 0) {
            IERC20(asset).forceApprove(address(lendingPool), type(uint256).max);
        }
        if (IERC20(asset).allowance(address(this), address(treasury)) == 0) {
            IERC20(asset).forceApprove(treasury, type(uint256).max);
        }
    }
}
