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

    function _authorizeUpgrade(address newImplementation) internal override onlyRole(DEFAULT_ADMIN_ROLE) {}

    function computeAddress(address onBehalfOf, uint256 expiresAt, bytes32 extraSalt) external view returns (address) {
        bytes32 salt = keccak256(abi.encode(onBehalfOf, expiresAt, extraSalt));
        return Clones.predictDeterministicAddress(address(this), salt, address(this));
    }

    function deploy(uint256 expiresAt, bytes32 extraSalt) external returns (FlashLoanLooping flashLoanLooping) {
        address onBehalfOf = msg.sender;
        bytes32 salt = keccak256(abi.encode(onBehalfOf, expiresAt, extraSalt));
        flashLoanLooping =
            FlashLoanLooping(Clones.cloneDeterministic(address(flashLoanLoopingImplementation()), salt, 0));
        flashLoanLooping.initialize(this, onBehalfOf, expiresAt);
    }

    // VIEW
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
