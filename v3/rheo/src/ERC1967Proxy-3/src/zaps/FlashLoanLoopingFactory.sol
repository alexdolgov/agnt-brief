// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ISizeFactory} from "@size/src/factory/interfaces/ISizeFactory.sol";
import {Errors} from "@size/src/market/libraries/Errors.sol";
import {SafeERC20} from "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import {IERC20} from "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import {IERC20Metadata} from "@openzeppelin/contracts/token/ERC20/extensions/IERC20Metadata.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {PauseUnpause} from "src/utils/PauseUnpause.sol";
import {RecoverTokens} from "src/utils/RecoverTokens.sol";
import {PAUSER_ROLE} from "@size/src/factory/interfaces/ISizeFactory.sol";
import {Clones} from "@openzeppelin/contracts/proxy/Clones.sol";
import {IMorpho} from "@morpho/src/interfaces/IMorpho.sol";
import {IUniswapV2Router02} from "src/interfaces/dex/IUniswapV2Router02.sol";
import {IUniswapV3Router} from "src/interfaces/dex/IUniswapV3Router.sol";
import {IPAllActionV3} from "@pendle/contracts/interfaces/IPAllActionV3.sol";
import {IPMarketFactoryV3} from "@pendle/contracts/interfaces/IPMarketFactoryV3.sol";
import {IFlashLoanLoopingFactory} from "src/zaps/IFlashLoanLoopingFactory.sol";
import {ISafe} from "@size/script/interfaces/ISafe.sol";
import {Math, PERCENT, YEAR} from "@size/src/market/libraries/Math.sol";
import {Math as MathUtils} from "@openzeppelin/contracts/utils/math/Math.sol";
import {DataView} from "@size/src/market/SizeViewData.sol";
import {ISize} from "@size/src/market/interfaces/ISize.sol";
import {IPriceFeed} from "@size/src/oracle/IPriceFeed.sol";
import {IFlashLoanLooping} from "src/zaps/IFlashLoanLooping.sol";

contract FlashLoanLoopingFactory is
    AccessControlUpgradeable,
    RecoverTokens,
    PauseUnpause,
    UUPSUpgradeable,
    IFlashLoanLoopingFactory
{
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;

    uint256 public constant MAX_LEVERAGE_PERCENT_BUFFER = 0.02e18;
    uint256 public constant FLASH_LOAN_AMOUNT_DUST = 10;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.FlashLoanLoopingFactory
    struct FlashLoanLoopingFactoryStorage {
        ISizeFactory _sizeFactory;
        IFlashLoanLooping _flashLoanLoopingImplementation;
        IMorpho _morpho;
        IUniswapV2Router02 _uniswapV2Router;
        IUniswapV3Router _uniswapV3Router;
        IPAllActionV3 _pendleRouter;
        IPMarketFactoryV3 _pendleMarketFactory;
        address _cashStrategyVault;
    }

    // keccak256(abi.encode(uint256(keccak256("size.storage.FlashLoanLoopingFactory")) - 1)) & ~bytes32(uint256(0xff));
    // forge-lint: disable-next-line(screaming-snake-case-const)
    bytes32 private constant FlashLoanLoopingFactoryStorageLocation =
        0x5801605739543a14df67a3af524d619d76ce8995e89cf0f4e54ba3c5d66ca000;

    function _getFlashLoanLoopingFactoryStorage() private pure returns (FlashLoanLoopingFactoryStorage storage $) {
        assembly {
            $.slot := FlashLoanLoopingFactoryStorageLocation
        }
    }

    // CONSTRUCTOR/INITIALIZER

    constructor() {
        /// @custom:oz-upgrades-unsafe-allow constructor
        _disableInitializers();
    }

    function initialize(
        address _admin,
        ISizeFactory _sizeFactory,
        IFlashLoanLooping _flashLoanLoopingImplementation,
        IMorpho _morpho,
        IUniswapV2Router02 _uniswapV2Router,
        IUniswapV3Router _uniswapV3Router,
        IPAllActionV3 _pendleRouter,
        IPMarketFactoryV3 _pendleMarketFactory,
        address _cashStrategyVault
    ) public initializer {
        if (
            address(_admin) == address(0) || address(_sizeFactory) == address(0)
                || address(_flashLoanLoopingImplementation) == address(0) || address(_morpho) == address(0)
                || address(_uniswapV2Router) == address(0) || address(_uniswapV3Router) == address(0)
                || address(_pendleRouter) == address(0) || address(_pendleMarketFactory) == address(0)
                || address(_cashStrategyVault) == address(0)
        ) {
            revert Errors.NULL_ADDRESS();
        }

        __AccessControl_init();
        __Pausable_init();
        __UUPSUpgradeable_init();

        _grantRole(DEFAULT_ADMIN_ROLE, _admin);
        _grantRole(PAUSER_ROLE, _admin);

        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        $._sizeFactory = _sizeFactory;
        $._flashLoanLoopingImplementation = _flashLoanLoopingImplementation;
        $._morpho = _morpho;
        $._uniswapV2Router = _uniswapV2Router;
        $._uniswapV3Router = _uniswapV3Router;
        $._pendleRouter = _pendleRouter;
        $._pendleMarketFactory = _pendleMarketFactory;
        $._cashStrategyVault = _cashStrategyVault;

        _setPauserRole(_admin);
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function setFlashLoanLoopingImplementation(IFlashLoanLooping _flashLoanLoopingImplementation)
        external
        onlyRole(DEFAULT_ADMIN_ROLE)
    {
        if (address(_flashLoanLoopingImplementation) == address(0)) {
            revert Errors.NULL_ADDRESS();
        }
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        $._flashLoanLoopingImplementation = _flashLoanLoopingImplementation;
    }

    function deploy(address onBehalfOf, bytes32 extraSalt)
        public
        whenNotPaused
        returns (IFlashLoanLooping flashLoanLooping)
    {
        bytes32 salt = _salt(onBehalfOf, extraSalt);
        flashLoanLooping =
            IFlashLoanLooping(Clones.cloneDeterministic(address(flashLoanLoopingImplementation()), salt, 0));
        IFlashLoanLooping(flashLoanLooping).initialize(this, onBehalfOf);
    }

    function deploy(bytes32 extraSalt) external /*whenNotPaused*/ returns (IFlashLoanLooping flashLoanLooping) {
        return deploy(msg.sender, extraSalt);
    }

    function _salt(address onBehalfOf, bytes32 extraSalt) private pure returns (bytes32) {
        return keccak256(abi.encode(onBehalfOf, extraSalt));
    }

    function _setPauserRole(address _admin) private {
        (bool success, bytes memory data) = address(_admin).staticcall(abi.encodeWithSelector(ISafe.getOwners.selector));
        if (success) {
            address[] memory owners = abi.decode(data, (address[]));
            for (uint256 i = 0; i < owners.length; i++) {
                _grantRole(PAUSER_ROLE, owners[i]);
            }
        }
    }

    // VIEW
    function computeAddress(address onBehalfOf, bytes32 extraSalt) public view returns (address) {
        bytes32 salt = _salt(onBehalfOf, extraSalt);
        return Clones.predictDeterministicAddress(address(flashLoanLoopingImplementation()), salt, address(this));
    }

    function exists(address onBehalfOf, bytes32 extraSalt) external view returns (bool) {
        address expectedAddress = computeAddress(onBehalfOf, extraSalt);
        return expectedAddress.code.length > 0;
    }

    function currentLeveragePercent(ISize size, address account) public view returns (uint256) {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        DataView memory dataView = size.data();
        uint256 totalCollateral = dataView.collateralToken.balanceOf(account);
        uint256 totalDebt = dataView.debtToken.balanceOf(account);

        // Convert debt to collateral terms to get K (additional collateral from borrowed amount)
        uint256 debtInCollateral = size.debtTokenAmountToCollateralTokenAmount(totalDebt);
        uint256 initialCollateral = MathUtils.saturatingSub(totalCollateral, debtInCollateral);

        // L = (C + K) / C where C is initial collateral, K is additional collateral from leverage
        if (initialCollateral == 0) {
            return PERCENT; // L = 1 (100%) when no initial collateral
        }

        return Math.mulDivDown(totalCollateral, PERCENT, initialCollateral);
    }

    function theoreticalMaxLeveragePercent(ISize size) public view returns (uint256) {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        uint256 crOpening = size.riskConfig().crOpening;
        return Math.mulDivDown(crOpening, PERCENT, crOpening - PERCENT);
    }

    /// @notice Calculate maximum achievable leverage given market conditions
    /// @dev Implements: L_m = 1 + [R_o(1-s)] / [(1+r)/(1-k*ΔT) - R_o(1-s)]
    function maxLeveragePercent(ISize size, uint256 dexSlippagePercent, uint256 apr, uint256 tenor)
        public
        view
        returns (uint256)
    {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        uint256 R_0 = Math.mulDivDown(PERCENT, PERCENT, size.riskConfig().crOpening);
        uint256 numerator = Math.mulDivDown(R_0, PERCENT - dexSlippagePercent, PERCENT);
        uint256 swapFeePercent = Math.mulDivDown(size.feeConfig().swapFeeAPR, tenor, YEAR);
        uint256 ratePerTenor = Math.aprToRatePerTenor(apr, tenor);
        uint256 sizeSlippage = Math.mulDivDown(PERCENT + ratePerTenor, PERCENT, PERCENT - swapFeePercent);
        uint256 denominator = sizeSlippage - numerator;

        uint256 L_m = PERCENT + Math.mulDivDown(numerator, PERCENT, denominator);
        return Math.mulDivDown(L_m, PERCENT - MAX_LEVERAGE_PERCENT_BUFFER, PERCENT);
    }

    /// @notice Calculate the borrow amount B needed from Size to achieve target leverage
    /// @dev This is the amount that will be borrowed from Size (SellCreditMarket amount parameter)
    /// @dev From specs: L = (C + K) / C where K = C * (L - 1), and B is K converted to debt token
    function estimateSellCreditMarketAmount(ISize size, address user, uint256 targetLeveragePercent)
        public
        view
        returns (uint256)
    {
        DataView memory dataView = size.data();
        return estimateSellCreditMarketAmount(
            size, dataView.collateralToken.balanceOf(user), dataView.debtToken.balanceOf(user), targetLeveragePercent
        );
    }

    /// @dev Same as estimateSellCreditMarketAmount, but
    function estimateSellCreditMarketAmount(
        ISize size,
        uint256 currentCollateral,
        uint256 currentDebt,
        uint256 targetLeveragePercent
    ) public view returns (uint256) {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        // Calculate initial collateral C (current collateral minus debt converted to collateral)
        uint256 currentDebtInCollateral = size.debtTokenAmountToCollateralTokenAmount(currentDebt);
        uint256 initialCollateral = MathUtils.saturatingSub(currentCollateral, currentDebtInCollateral);

        // From L = (C + K) / C, we get K = C * (L - 1)
        // where K is additional collateral needed
        uint256 additionalCollateralNeeded = Math.mulDivUp(initialCollateral, targetLeveragePercent - PERCENT, PERCENT);

        // B = K converted to debt token amount
        return collateralTokenAmountToDebtTokenAmount(size, additionalCollateralNeeded);
    }

    /// @notice Calculate the flash loan amount needed to achieve target leverage
    /// @dev In theory, this should be equal to the SellCreditMarket amount. However, due to slippage in fullWithdraw, we may receive less than the borrowed amount
    function estimateFlashLoanAmount(ISize size, address user, uint256 targetLeveragePercent)
        public
        view
        returns (uint256)
    {
        uint256 theoreticalFlashLoanAmount = estimateSellCreditMarketAmount(size, user, targetLeveragePercent);
        return MathUtils.saturatingSub(theoreticalFlashLoanAmount, FLASH_LOAN_AMOUNT_DUST);
    }

    /// @dev Same as estimateFlashLoanAmount, but with estimated initial collateral
    function estimateFlashLoanAmount(
        ISize size,
        uint256 estimatedInitialCollateral,
        uint256 estimatedInitialDebt,
        uint256 targetLeveragePercent
    ) public view returns (uint256) {
        uint256 theoreticalFlashLoanAmount = estimateSellCreditMarketAmount(
            size, estimatedInitialCollateral, estimatedInitialDebt, targetLeveragePercent
        );
        return MathUtils.saturatingSub(theoreticalFlashLoanAmount, FLASH_LOAN_AMOUNT_DUST);
    }

    // CR = (C + D * (1-s) + D_0) / (D + D_0)
    function estimateCollateralRatio(
        ISize size,
        address user,
        uint256 targetLeveragePercent,
        uint256 dexSlippagePercent,
        uint256 apr,
        uint256 tenor
    ) public view returns (uint256) {
        DataView memory dataView = size.data();
        return estimateCollateralRatio(
            size,
            dataView.collateralToken.balanceOf(user),
            dataView.debtToken.balanceOf(user),
            targetLeveragePercent,
            dexSlippagePercent,
            apr,
            tenor
        );
    }

    function estimateCollateralRatio(
        ISize size,
        uint256 currentCollateral,
        uint256 currentDebt,
        uint256 targetLeveragePercent,
        uint256 dexSlippagePercent,
        uint256 apr,
        uint256 tenor
    ) public view returns (uint256) {
        uint256 sellCreditMarketAmount =
            estimateSellCreditMarketAmount(size, currentCollateral, currentDebt, targetLeveragePercent);

        uint256 swapFeePercent = Math.mulDivDown(size.feeConfig().swapFeeAPR, tenor, YEAR);
        uint256 ratePerTenor = Math.aprToRatePerTenor(apr, tenor);
        uint256 sizeSlippage = Math.mulDivDown(PERCENT + ratePerTenor, PERCENT, PERCENT - swapFeePercent);

        uint256 additionalDebt = Math.mulDivDown(sellCreditMarketAmount, sizeSlippage, PERCENT);

        uint256 initialCollateralInCash = collateralTokenAmountToDebtTokenAmount(size, currentCollateral);
        uint256 initialDebt = currentDebt;

        uint256 additionalCollateralInCash = Math.mulDivDown(additionalDebt, PERCENT - dexSlippagePercent, PERCENT);
        return Math.mulDivDown(
            initialCollateralInCash + additionalCollateralInCash + initialDebt, PERCENT, additionalDebt + initialDebt
        );
    }

    function collateralTokenAmountToDebtTokenAmount(ISize size, uint256 collateralTokenAmount)
        public
        view
        returns (uint256)
    {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        DataView memory dataView = size.data();
        IPriceFeed priceFeed = IPriceFeed(size.oracle().priceFeed);

        return Math.mulDivUp(
            collateralTokenAmount * priceFeed.getPrice(),
            10 ** dataView.underlyingBorrowToken.decimals(),
            10 ** priceFeed.decimals() * 10 ** dataView.underlyingCollateralToken.decimals()
        );
    }

    // STORAGE VIEW
    function sizeFactory() public view override returns (ISizeFactory) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._sizeFactory;
    }

    function flashLoanLoopingImplementation() public view override returns (IFlashLoanLooping) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._flashLoanLoopingImplementation;
    }

    function morpho() public view override returns (IMorpho) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._morpho;
    }

    function uniswapV2Router() public view override returns (IUniswapV2Router02) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._uniswapV2Router;
    }

    function uniswapV3Router() public view override returns (IUniswapV3Router) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._uniswapV3Router;
    }

    function pendleRouter() public view override returns (IPAllActionV3) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._pendleRouter;
    }

    function pendleMarketFactory() public view override returns (IPMarketFactoryV3) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._pendleMarketFactory;
    }

    function cashStrategyVault() public view override returns (address) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._cashStrategyVault;
    }
}
