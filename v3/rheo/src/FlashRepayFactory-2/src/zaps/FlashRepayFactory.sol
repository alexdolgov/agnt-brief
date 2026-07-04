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
import {IFlashRepayFactory} from "src/zaps/IFlashRepayFactory.sol";
import {ISafe} from "@size/script/interfaces/ISafe.sol";
import {IFlashRepay} from "src/zaps/IFlashRepay.sol";
import {Math, PERCENT} from "@size/src/market/libraries/Math.sol";
import {ISize} from "@size/src/market/interfaces/ISize.sol";
import {Math as MathUtils} from "@openzeppelin/contracts/utils/math/Math.sol";
import {IPriceFeed} from "@size/src/oracle/IPriceFeed.sol";

contract FlashRepayFactory is
    AccessControlUpgradeable,
    RecoverTokens,
    PauseUnpause,
    UUPSUpgradeable,
    IFlashRepayFactory
{
    using SafeERC20 for IERC20;
    using SafeERC20 for IERC20Metadata;

    // STORAGE
    /// @custom:storage-location erc7201:size.storage.FlashRepayFactory
    struct FlashRepayFactoryStorage {
        ISizeFactory _sizeFactory;
        IFlashRepay _flashRepayImplementation;
        IMorpho _morpho;
        IUniswapV2Router02 _uniswapV2Router;
        IUniswapV3Router _uniswapV3Router;
        IPAllActionV3 _pendleRouter;
        IPMarketFactoryV3 _pendleMarketFactory;
    }

    // keccak256(abi.encode(uint256(keccak256("size.storage.FlashRepayFactory")) - 1)) & ~bytes32(uint256(0xff));
    // forge-lint: disable-next-line(screaming-snake-case-const)
    bytes32 private constant FlashRepayFactoryStorageLocation =
        0x58fcee786d9b20c906ff8f5c06afbb2f32c32f1da4fa06e2c712b3e6959a6300;

    function _getFlashRepayFactoryStorage() private pure returns (FlashRepayFactoryStorage storage $) {
        assembly {
            $.slot := FlashRepayFactoryStorageLocation
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
        IFlashRepay _flashRepayImplementation,
        IMorpho _morpho,
        IUniswapV2Router02 _uniswapV2Router,
        IUniswapV3Router _uniswapV3Router,
        IPAllActionV3 _pendleRouter,
        IPMarketFactoryV3 _pendleMarketFactory
    ) public initializer {
        if (
            address(_admin) == address(0) || address(_sizeFactory) == address(0)
                || address(_flashRepayImplementation) == address(0) || address(_morpho) == address(0)
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

        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        $._sizeFactory = _sizeFactory;
        $._flashRepayImplementation = _flashRepayImplementation;
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

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function setFlashRepayImplementation(IFlashRepay _flashRepayImplementation) external onlyRole(DEFAULT_ADMIN_ROLE) {
        if (address(_flashRepayImplementation) == address(0)) {
            revert Errors.NULL_ADDRESS();
        }
        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        $._flashRepayImplementation = _flashRepayImplementation;
    }

    function deploy(address onBehalfOf, bytes32 extraSalt) public whenNotPaused returns (IFlashRepay flashRepay) {
        bytes32 salt = _salt(onBehalfOf, extraSalt);
        flashRepay = IFlashRepay(Clones.cloneDeterministic(address(flashRepayImplementation()), salt, 0));
        flashRepay.initialize(this, onBehalfOf);
    }

    function deploy(bytes32 extraSalt) external /*whenNotPaused*/ returns (IFlashRepay flashRepay) {
        return deploy(msg.sender, extraSalt);
    }

    function _salt(address onBehalfOf, bytes32 extraSalt) private pure returns (bytes32) {
        return keccak256(abi.encode(onBehalfOf, extraSalt));
    }

    // VIEW
    function computeAddress(address onBehalfOf, bytes32 extraSalt) public view returns (address) {
        bytes32 salt = _salt(onBehalfOf, extraSalt);
        return Clones.predictDeterministicAddress(address(flashRepayImplementation()), salt, address(this));
    }

    function exists(address onBehalfOf, bytes32 extraSalt) external view returns (bool) {
        address expectedAddress = computeAddress(onBehalfOf, extraSalt);
        return expectedAddress.code.length > 0;
    }

    function withdrawableCollateralAmount(ISize market, address user) public view returns (uint256) {
        if (!sizeFactory().isMarket(address(market))) {
            revert Errors.INVALID_MARKET(address(market));
        }

        uint256 cr = market.collateralRatio(user);
        uint256 crOpening = market.riskConfig().crOpening;
        uint256 debtBalance = market.getUserView(user).debtBalance;

        IPriceFeed priceFeed = IPriceFeed(market.oracle().priceFeed);
        uint256 withdrawableDebtAmountInCollateralAmount = Math.mulDivDown(
            debtBalance * 10 ** priceFeed.decimals(),
            10 ** market.data().underlyingCollateralToken.decimals(),
            priceFeed.getPrice() * 10 ** market.data().underlyingBorrowToken.decimals()
        );
        if (debtBalance == 0) {
            return type(uint256).max;
        } else {
            return Math.mulDivDown(
                MathUtils.saturatingSub(cr, crOpening), withdrawableDebtAmountInCollateralAmount, PERCENT
            );
        }
    }

    // STORAGE VIEW
    function sizeFactory() public view override returns (ISizeFactory) {
        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        return $._sizeFactory;
    }

    function flashRepayImplementation() public view override returns (IFlashRepay) {
        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        return $._flashRepayImplementation;
    }

    function morpho() public view override returns (IMorpho) {
        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        return $._morpho;
    }

    function uniswapV2Router() public view override returns (IUniswapV2Router02) {
        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        return $._uniswapV2Router;
    }

    function uniswapV3Router() public view override returns (IUniswapV3Router) {
        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        return $._uniswapV3Router;
    }

    function pendleRouter() public view override returns (IPAllActionV3) {
        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        return $._pendleRouter;
    }

    function pendleMarketFactory() public view override returns (IPMarketFactoryV3) {
        FlashRepayFactoryStorage storage $ = _getFlashRepayFactoryStorage();
        return $._pendleMarketFactory;
    }
}
