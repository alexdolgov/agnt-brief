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
import {SellCreditMarketParams} from "@size/src/market/libraries/actions/SellCreditMarket.sol";

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

    /// @notice Sets a new FlashLoanLooping implementation contract
    /// @dev Only callable by DEFAULT_ADMIN_ROLE
    /// @param _flashLoanLoopingImplementation The new implementation contract address
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

    /// @notice Deploys a new FlashLoanLooping clone contract for a specified user
    /// @dev Uses deterministic CREATE2 deployment with a salt derived from onBehalfOf and extraSalt
    /// @param onBehalfOf The address that will own the deployed FlashLoanLooping contract
    /// @param extraSalt Additional salt for deterministic address generation
    /// @return flashLoanLooping The deployed FlashLoanLooping contract instance
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

    /// @notice Deploys a new FlashLoanLooping clone contract for the caller
    /// @dev Convenience function that calls deploy(msg.sender, extraSalt)
    /// @param extraSalt Additional salt for deterministic address generation
    /// @return flashLoanLooping The deployed FlashLoanLooping contract instance
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
    /// @notice Computes the deterministic address for a FlashLoanLooping clone
    /// @dev Uses CREATE2 address prediction based on onBehalfOf and extraSalt
    /// @param onBehalfOf The address that would own the FlashLoanLooping contract
    /// @param extraSalt Additional salt for address generation
    /// @return The predicted address of the FlashLoanLooping clone
    function computeAddress(address onBehalfOf, bytes32 extraSalt) public view returns (address) {
        bytes32 salt = _salt(onBehalfOf, extraSalt);
        return Clones.predictDeterministicAddress(address(flashLoanLoopingImplementation()), salt, address(this));
    }

    /// @notice Checks if a FlashLoanLooping clone exists at the computed address
    /// @param onBehalfOf The address that would own the FlashLoanLooping contract
    /// @param extraSalt Additional salt for address generation
    /// @return True if a contract exists at the computed address, false otherwise
    function exists(address onBehalfOf, bytes32 extraSalt) external view returns (bool) {
        address expectedAddress = computeAddress(onBehalfOf, extraSalt);
        return expectedAddress.code.length > 0;
    }

    /// @notice Calculates the current leverage percentage for an account in a Size market
    /// @dev Leverage is calculated as L = C / (C - D) where C is total collateral and D is debt in collateral terms
    /// @param size The Size market contract
    /// @param account The account to calculate leverage for
    /// @return The current leverage percentage (1e18 = 100%)
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

        // L = C / (C - D)
        return Math.mulDivDown(totalCollateral, PERCENT, initialCollateral);
    }

    /// @notice Calculates the expected leverage percentage after a loop operation
    /// @dev Considers slippage, swap fees, and interest rates to estimate final leverage
    /// @param size The Size market contract
    /// @param collateralTokenBalance Current collateral balance
    /// @param debtTokenBalance Current debt balance
    /// @param additionalCollateral Additional collateral being added
    /// @param slippagePercent DEX slippage percentage (1e18 = 100%)
    /// @param sellCreditMarketAmount Amount to sell in the credit market
    /// @param apr Annual percentage rate for the loan
    /// @param tenor Duration of the loan in seconds
    /// @return The expected leverage percentage after the operation
    function expectedLeveragePercent(
        ISize size,
        uint256 collateralTokenBalance,
        uint256 debtTokenBalance,
        uint256 additionalCollateral,
        uint256 slippagePercent,
        uint256 sellCreditMarketAmount,
        uint256 apr,
        uint256 tenor
    ) public view returns (uint256) {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }
        uint256 C = collateralTokenBalance + additionalCollateral
            + size.debtTokenAmountToCollateralTokenAmount(
                Math.mulDivDown(
                    MathUtils.saturatingSub(sellCreditMarketAmount, FLASH_LOAN_AMOUNT_DUST),
                    PERCENT - slippagePercent,
                    PERCENT
                )
            );
        uint256 swapFeePercent = Math.mulDivUp(size.feeConfig().swapFeeAPR, tenor, YEAR);
        uint256 D = size.debtTokenAmountToCollateralTokenAmount(
            debtTokenBalance
                + Math.mulDivUp(
                    sellCreditMarketAmount, PERCENT + Math.aprToRatePerTenor(apr, tenor), PERCENT - swapFeePercent
                )
        );
        return Math.mulDivDown(C, PERCENT, MathUtils.saturatingSub(C, D));
    }

    /// @notice Calculates the expected collateral ratio after a loop operation
    /// @dev Converts leverage to collateral ratio: CR = L / (L - 1)
    /// @param size The Size market contract
    /// @param collateralTokenBalance Current collateral balance
    /// @param debtTokenBalance Current debt balance
    /// @param additionalCollateral Additional collateral being added
    /// @param slippagePercent DEX slippage percentage (1e18 = 100%)
    /// @param sellCreditMarketAmount Amount to sell in the credit market
    /// @param apr Annual percentage rate for the loan
    /// @param tenor Duration of the loan in seconds
    /// @return The expected collateral ratio after the operation
    function expectedCollateralRatio(
        ISize size,
        uint256 collateralTokenBalance,
        uint256 debtTokenBalance,
        uint256 additionalCollateral,
        uint256 slippagePercent,
        uint256 sellCreditMarketAmount,
        uint256 apr,
        uint256 tenor
    ) public view returns (uint256) {
        uint256 L = expectedLeveragePercent(
            size,
            collateralTokenBalance,
            debtTokenBalance,
            additionalCollateral,
            slippagePercent,
            sellCreditMarketAmount,
            apr,
            tenor
        );
        return Math.mulDivDown(L, PERCENT, MathUtils.saturatingSub(L, PERCENT));
    }

    /// @notice Calculate expected target leverage percent for a loop operation with existing position
    /// @dev This function calculates the leverage considering actual swap data instead of estimated rates
    /// @param size The Size market
    /// @param collateralTokenBalance Current collateral balance
    /// @param debtBalance Current debt balance
    /// @param estimatedInitialCollateral Additional collateral being added (e.g., from zapIn)
    /// @param flashLoanAmount The flash loan amount for the loop
    /// @param slippagePercent Slippage tolerance as a percentage
    /// @param sellCreditMarketParams Parameters for the sell credit market operation
    /// @return Expected target leverage percentage
    function expectedTargetLeveragePercentForLoop(
        ISize size,
        uint256 collateralTokenBalance,
        uint256 debtBalance,
        uint256 estimatedInitialCollateral,
        uint256 flashLoanAmount,
        uint256 slippagePercent,
        SellCreditMarketParams memory sellCreditMarketParams
    ) public view returns (uint256) {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        // Calculate total expected collateral (C)
        // C = current collateral + new collateral + flash loan converted to collateral (with slippage)
        uint256 C = collateralTokenBalance + estimatedInitialCollateral
            + size.debtTokenAmountToCollateralTokenAmount(
                Math.mulDivDown(flashLoanAmount, PERCENT - slippagePercent, PERCENT)
            );

        // Calculate total expected debt in collateral terms (D)
        // D = current debt + credit amount from selling on Size
        uint256 D = size.debtTokenAmountToCollateralTokenAmount(
            debtBalance + size.getSellCreditMarketSwapData(sellCreditMarketParams).creditAmountIn
        );

        // Calculate leverage: L = C / (C - D), adjusted for double slippage
        return Math.mulDivDown(
            Math.mulDivDown(C, PERCENT, MathUtils.saturatingSub(C, D)), PERCENT - 2 * slippagePercent, PERCENT
        );
    }

    /// @notice Calculates the theoretical maximum leverage based on opening collateral ratio
    /// @dev Maximum leverage is L_max = CR_opening / (CR_opening - 1), ignoring market conditions
    /// @param size The Size market contract
    /// @return The theoretical maximum leverage percentage
    function theoreticalMaxLeveragePercent(ISize size) public view returns (uint256) {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        uint256 crOpening = size.riskConfig().crOpening;
        return Math.mulDivDown(crOpening, PERCENT, crOpening - PERCENT);
    }

    /// @notice Calculates maximum achievable leverage given market conditions
    /// @dev Implements: L_m = 1 + [R_o(1-s)] / [(1+r)/(1-k*ΔT) - R_o(1-s)]
    /// @dev Includes a safety buffer (MAX_LEVERAGE_PERCENT_BUFFER) to account for practical constraints
    /// @param size The Size market contract
    /// @param dexSlippagePercent DEX slippage percentage (1e18 = 100%)
    /// @param apr Annual percentage rate for the loan
    /// @param tenor Duration of the loan in seconds
    /// @return The maximum achievable leverage percentage with market conditions
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

    /// @notice Calculates the borrow amount needed from Size to achieve target leverage for a user
    /// @dev This is the amount that will be borrowed from Size (SellCreditMarket amount parameter)
    /// @dev From specs: L = (C + K) / C where K = C * (L - 1), and B is K converted to debt token
    /// @param size The Size market contract
    /// @param user The user address to calculate for
    /// @param targetLeveragePercent The desired target leverage percentage (1e18 = 100%)
    /// @return The estimated sell credit market amount needed
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

    /// @notice Calculates the borrow amount needed from Size to achieve target leverage
    /// @dev Same as estimateSellCreditMarketAmount(ISize, address, uint256) but with explicit balances
    /// @param size The Size market contract
    /// @param currentCollateral Current collateral balance
    /// @param currentDebt Current debt balance
    /// @param targetLeveragePercent The desired target leverage percentage (1e18 = 100%)
    /// @return The estimated sell credit market amount needed
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

    /// @notice Calculates the flash loan amount needed to achieve target leverage for a user
    /// @dev In theory, this should be equal to the SellCreditMarket amount. However, due to slippage in fullWithdraw, we may receive less than the borrowed amount
    /// @dev F = B - DUST where B is the sell credit market amount and DUST is a small buffer
    /// @param size The Size market contract
    /// @param user The user address to calculate for
    /// @param targetLeveragePercent The desired target leverage percentage (1e18 = 100%)
    /// @return The estimated flash loan amount needed
    function estimateFlashLoanAmount(ISize size, address user, uint256 targetLeveragePercent)
        public
        view
        returns (uint256)
    {
        uint256 theoreticalFlashLoanAmount = estimateSellCreditMarketAmount(size, user, targetLeveragePercent);
        return MathUtils.saturatingSub(theoreticalFlashLoanAmount, FLASH_LOAN_AMOUNT_DUST);
    }

    /// @notice Calculates the flash loan amount needed to achieve target leverage
    /// @dev Same as estimateFlashLoanAmount(ISize, address, uint256) but with explicit balances
    /// @param size The Size market contract
    /// @param estimatedInitialCollateral Estimated initial collateral balance
    /// @param estimatedInitialDebt Estimated initial debt balance
    /// @param targetLeveragePercent The desired target leverage percentage (1e18 = 100%)
    /// @return The estimated flash loan amount needed
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

    /// @notice Estimates the collateral ratio after a loop operation for a user
    /// @dev Formula: CR = (C + D * (1-s) + D_0) / (D + D_0) where s is slippage
    /// @param size The Size market contract
    /// @param user The user address to calculate for
    /// @param targetLeveragePercent The desired target leverage percentage (1e18 = 100%)
    /// @param dexSlippagePercent DEX slippage percentage (1e18 = 100%)
    /// @param apr Annual percentage rate for the loan
    /// @param tenor Duration of the loan in seconds
    /// @return The estimated collateral ratio after the operation
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

    /// @notice Estimates the collateral ratio after a loop operation
    /// @dev Same as estimateCollateralRatio(ISize, address, ...) but with explicit balances
    /// @param size The Size market contract
    /// @param currentCollateral Current collateral balance
    /// @param currentDebt Current debt balance
    /// @param targetLeveragePercent The desired target leverage percentage (1e18 = 100%)
    /// @param dexSlippagePercent DEX slippage percentage (1e18 = 100%)
    /// @param apr Annual percentage rate for the loan
    /// @param tenor Duration of the loan in seconds
    /// @return The estimated collateral ratio after the operation
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

    /// @notice Converts collateral token amount to debt token amount using the price feed
    /// @dev Uses the Size market's oracle price feed for conversion
    /// @param size The Size market contract
    /// @param collateralTokenAmount The amount of collateral tokens to convert
    /// @return The equivalent amount in debt tokens
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
    /// @notice Returns the Size factory contract
    /// @return The ISizeFactory contract instance
    function sizeFactory() public view override returns (ISizeFactory) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._sizeFactory;
    }

    /// @notice Returns the FlashLoanLooping implementation contract used for clones
    /// @return The IFlashLoanLooping implementation contract instance
    function flashLoanLoopingImplementation() public view override returns (IFlashLoanLooping) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._flashLoanLoopingImplementation;
    }

    /// @notice Returns the Morpho protocol contract
    /// @return The IMorpho contract instance
    function morpho() public view override returns (IMorpho) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._morpho;
    }

    /// @notice Returns the Uniswap V2 router contract
    /// @return The IUniswapV2Router02 contract instance
    function uniswapV2Router() public view override returns (IUniswapV2Router02) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._uniswapV2Router;
    }

    /// @notice Returns the Uniswap V3 router contract
    /// @return The IUniswapV3Router contract instance
    function uniswapV3Router() public view override returns (IUniswapV3Router) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._uniswapV3Router;
    }

    /// @notice Returns the Pendle router contract
    /// @return The IPAllActionV3 contract instance
    function pendleRouter() public view override returns (IPAllActionV3) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._pendleRouter;
    }

    /// @notice Returns the Pendle market factory contract
    /// @return The IPMarketFactoryV3 contract instance
    function pendleMarketFactory() public view override returns (IPMarketFactoryV3) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._pendleMarketFactory;
    }

    /// @notice Returns the cash strategy vault address
    /// @return The address of the cash strategy vault
    function cashStrategyVault() public view override returns (address) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        return $._cashStrategyVault;
    }
}
