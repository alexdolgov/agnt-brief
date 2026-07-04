// SPDX-License-Identifier: MIT
pragma solidity 0.8.23;

import {ISizeFactory} from "@size/src/factory/interfaces/ISizeFactory.sol";
import {FlashLoanLooping} from "src/zaps/FlashLoanLooping.sol";
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
import {Math, PERCENT} from "@size/src/market/libraries/Math.sol";
import {Math as MathUtils} from "@openzeppelin/contracts/utils/math/Math.sol";
import {DataView, UserView} from "@size/src/market/SizeViewData.sol";
import {ISize} from "@size/src/market/interfaces/ISize.sol";
import {IPriceFeed} from "@size/src/oracle/IPriceFeed.sol";

contract FlashLoanLoopingFactory is
    AccessControlUpgradeable,
    RecoverTokens,
    PauseUnpause,
    UUPSUpgradeable,
    IFlashLoanLoopingFactory
{
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.FlashLoanLoopingFactory
    struct FlashLoanLoopingFactoryStorage {
        ISizeFactory _sizeFactory;
        FlashLoanLooping _flashLoanLoopingImplementation;
        IMorpho _morpho;
        IUniswapV2Router02 _uniswapV2Router;
        IUniswapV3Router _uniswapV3Router;
        IPAllActionV3 _pendleRouter;
        IPMarketFactoryV3 _pendleMarketFactory;
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
        FlashLoanLooping _flashLoanLoopingImplementation,
        IMorpho _morpho,
        IUniswapV2Router02 _uniswapV2Router,
        IUniswapV3Router _uniswapV3Router,
        IPAllActionV3 _pendleRouter,
        IPMarketFactoryV3 _pendleMarketFactory
    ) public initializer {
        if (
            address(_admin) == address(0) || address(_sizeFactory) == address(0)
                || address(_flashLoanLoopingImplementation) == address(0) || address(_morpho) == address(0)
                || address(_uniswapV2Router) == address(0) || address(_uniswapV3Router) == address(0)
                || address(_pendleRouter) == address(0) || address(_pendleMarketFactory) == address(0)
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

        (bool success, bytes memory data) = address(_admin).staticcall(abi.encodeWithSelector(ISafe.getOwners.selector));
        if (success) {
            address[] memory owners = abi.decode(data, (address[]));
            for (uint256 i = 0; i < owners.length; i++) {
                _grantRole(PAUSER_ROLE, owners[i]);
            }
        }
    }

    function reinitialize(FlashLoanLooping _flashLoanLoopingImplementation) public reinitializer(3) {
        FlashLoanLoopingFactoryStorage storage $ = _getFlashLoanLoopingFactoryStorage();
        $._flashLoanLoopingImplementation = _flashLoanLoopingImplementation;
    }

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function deploy(address onBehalfOf, bytes32 extraSalt)
        public
        whenNotPaused
        returns (FlashLoanLooping flashLoanLooping)
    {
        bytes32 salt = _salt(onBehalfOf, extraSalt);
        flashLoanLooping =
            FlashLoanLooping(Clones.cloneDeterministic(address(flashLoanLoopingImplementation()), salt, 0));
        flashLoanLooping.initialize(this, onBehalfOf);
    }

    function deploy(bytes32 extraSalt) external /*whenNotPaused*/ returns (FlashLoanLooping flashLoanLooping) {
        return deploy(msg.sender, extraSalt);
    }

    function _salt(address onBehalfOf, bytes32 extraSalt) private pure returns (bytes32) {
        return keccak256(abi.encode(onBehalfOf, extraSalt));
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
        return Math.mulDivDown(
            totalCollateral, PERCENT, totalCollateral - size.debtTokenAmountToCollateralTokenAmount(totalDebt)
        );
    }

    function maxLeveragePercent(ISize size) public view returns (uint256) {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }
        uint256 crOpening = size.riskConfig().crOpening;
        return Math.mulDivDown(crOpening, PERCENT, crOpening - PERCENT);
    }

    function estimateSellCreditMarketAmount(ISize size, address user, uint256 targetLeveragePercent)
        external
        view
        returns (uint256)
    {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }
        UserView memory userView = size.getUserView(user);

        uint256 currentEquity = MathUtils.saturatingSub(userView.collateralTokenBalance, userView.debtBalance);
        uint256 targetCollateral = Math.mulDivUp(currentEquity, targetLeveragePercent, PERCENT);
        uint256 additionalCollateralNeeded = MathUtils.saturatingSub(targetCollateral, userView.collateralTokenBalance);

        return collateralTokenAmountToDebtTokenAmount(size, additionalCollateralNeeded);
    }

    function calculateFlashLoanAmount(ISize size, address user, uint256 targetLeveragePercent)
        external
        view
        returns (uint256)
    {
        if (!sizeFactory().isMarket(address(size))) {
            revert Errors.INVALID_MARKET(address(size));
        }

        DataView memory dataView = size.data();

        uint256 currentCollateral = dataView.collateralToken.balanceOf(user);
        uint256 currentDebt = dataView.debtToken.balanceOf(user);

        uint256 currentDebtInCollateral = size.debtTokenAmountToCollateralTokenAmount(currentDebt);
        uint256 equity = MathUtils.saturatingSub(currentCollateral, currentDebtInCollateral);

        uint256 targetCollateral = Math.mulDivUp(equity, targetLeveragePercent, PERCENT);
        uint256 additionalCollateralNeeded = MathUtils.saturatingSub(targetCollateral, currentCollateral);

        return collateralTokenAmountToDebtTokenAmount(size, additionalCollateralNeeded);
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

    function flashLoanLoopingImplementation() public view override returns (FlashLoanLooping) {
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
}
