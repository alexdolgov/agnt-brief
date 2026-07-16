// SPDX-License-Identifier: BUSL-1.1

pragma solidity 0.8.18;

import "../interfaces/CustomErrors.sol";
import "../interfaces/IGamma.sol";
import "../interfaces/IOrderUtil.sol";
import "../interfaces/IWrappedToken.sol";
import "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/utils/structs/EnumerableSet.sol";
import {IHedgedPool} from "../interfaces/IHedgedPool.sol";

// this contract should be authorizedBorrower in Controller
// this contract should be authorizedMarketMaker in HedgedPool
contract MMTradeHelper is OwnableUpgradeable {
    /// Use safe ERC20 functions for any token transfers since people don't follow the ERC20 standard */
    using SafeERC20 for IERC20;
    using EnumerableSet for EnumerableSet.AddressSet;

    address internal constant WHYPE_ADDRESS =
        0x5555555555555555555555555555555555555555;

    IHedgedPool private hedgedPool;
    IController private controller;
    address private marginPoolAddress;
    IERC20 private premiumToken;

    /// @dev List of permitted keeper addresses
    mapping(address => bool) public keepers;

    /// @dev List of whitelisted market makers
    mapping(address => bool) public whitelistedMarketMakers;

    mapping(uint256 => EnumerableSet.AddressSet) private oTokensForExpiration;

    error InvalidToken();
    error UnauthorizedMarketMaker();
    error InvalidOrderAccount();
    error UnauthorizedKeeper();

    event KeeperSet(address indexed keeper, bool isPermitted);

    event MarketMakerWhitelisted(address indexed mm, bool isAuthorized);

    event BorrowedFromPool(address indexed token, uint256 amount);
    event DepositedToPool(address indexed token, uint256 amount);
    event Traded(
        address indexed oToken,
        uint256 amount,
        uint256 premium,
        uint256 fee
    );
    event Exercised(address indexed oToken, uint256 amount);

    modifier onlyKeeper() {
        if (!keepers[msg.sender]) {
            revert UnauthorizedKeeper();
        }
        _;
    }

    constructor() {
        _disableInitializers();
    }

    /// Initialize the contract
    function __MMTradeHelper_init(
        address hedgedPoolAddress,
        address controllerAddress,
        address _marginPoolAddress
    ) public initializer {
        __Ownable_init();

        hedgedPool = IHedgedPool(hedgedPoolAddress);
        controller = IController(controllerAddress);
        marginPoolAddress = _marginPoolAddress;
        premiumToken = hedgedPool.collateralToken();
    }

    function prepareTrade(
        address collateralToken,
        uint256 collateralAmount,
        bool needToUnwrap,
        address mmAddress,
        uint256 estimatedPremiumAmount
    ) external onlyKeeper {
        if (!whitelistedMarketMakers[mmAddress]) {
            revert UnauthorizedMarketMaker();
        }
        // sending collateral to market maker
        controller.borrowFromPool(collateralToken, collateralAmount);
        emit BorrowedFromPool(collateralToken, collateralAmount);

        if (needToUnwrap && collateralToken == WHYPE_ADDRESS) {
            _unwrapHype(collateralAmount);
            (bool success, ) = payable(mmAddress).call{value: collateralAmount}(
                ""
            );
            if (!success) {
                revert CustomErrors.TransferFailed();
            }
        } else {
            IERC20(collateralToken).safeTransfer(mmAddress, collateralAmount);
        }

        // keeping estimated premium amount in the contract
        controller.borrowFromPool(
            address(premiumToken),
            estimatedPremiumAmount
        );
        emit BorrowedFromPool(address(premiumToken), estimatedPremiumAmount);
    }

    function exercise(
        address oTokenAddress,
        uint256 amountToExercise,
        IController.ExerciseVaultsArgs[] calldata vaultsToExerciseFrom
    ) external onlyKeeper {
        controller.exercise(
            oTokenAddress,
            amountToExercise,
            vaultsToExerciseFrom,
            address(0),
            ""
        );
        emit Exercised(oTokenAddress, amountToExercise);
    }

    /// @notice execute a signed MM buy order
    /// @param order Order struct containing order parameters
    function trade(
        IOrderUtil.Order calldata order,
        uint256 premiumReturnAmount
    ) public onlyKeeper {
        if (order.account != address(this)) {
            revert InvalidOrderAccount();
        }

        if (order.legs.length != 1) revert CustomErrors.InvalidLegsCount();
        IOrderUtil.OptionLeg memory leg = order.legs[0];
        if (leg.premium <= 0) {
            revert CustomErrors.InvalidOrder();
        }
        premiumToken.safeApprove(
            address(hedgedPool),
            uint256(leg.premium) + leg.fee
        );

        address oToken = hedgedPool.trade(order, 0, false);
        oTokensForExpiration[leg.expiration].add(oToken);

        if (premiumReturnAmount > 0) {
            premiumToken.safeApprove(marginPoolAddress, premiumReturnAmount);
            controller.depositToPool(
                address(premiumToken),
                premiumReturnAmount
            );
            emit DepositedToPool(address(premiumToken), premiumReturnAmount);
        }
        emit Traded(oToken, uint256(leg.amount), uint256(leg.premium), leg.fee);
    }

    function borrowFromPool(address token, uint256 amount) external onlyKeeper {
        controller.borrowFromPool(token, amount);
        emit BorrowedFromPool(token, amount);
    }

    function _wrapHype(uint256 amount) internal {
        IWrappedToken(WHYPE_ADDRESS).deposit{value: amount}();
    }

    function _unwrapHype(uint256 amount) internal {
        IWrappedToken(WHYPE_ADDRESS).withdraw(amount);
    }

    // TODO: do we need external wrap/unwrap?

    function depositToPool(
        address token,
        uint256 amount,
        bool needWrap
    ) external onlyKeeper {
        if (needWrap) {
            if (token != WHYPE_ADDRESS) {
                revert InvalidToken();
            }
            _wrapHype(amount);
        }

        IERC20(token).safeApprove(marginPoolAddress, amount);
        controller.depositToPool(token, amount);
        emit DepositedToPool(token, amount);
    }

    function whitelistMarketMaker(
        address _mm,
        bool _isWhitelisted
    ) external onlyOwner {
        whitelistedMarketMakers[_mm] = _isWhitelisted;
        emit MarketMakerWhitelisted(_mm, _isWhitelisted);
    }

    /// @notice Allow/disallow an address to perform keeper tasks
    function setKeeper(
        address keeperAddress,
        bool isPermitted
    ) external onlyOwner {
        keepers[keeperAddress] = isPermitted;
        emit KeeperSet(keeperAddress, isPermitted);
    }

    // market maker may send native HYPE to this contract
    receive() external payable {}

    function getOTokensForExpiration(
        uint256 expiration
    ) external view returns (address[] memory) {
        return oTokensForExpiration[expiration].values();
    }
}
