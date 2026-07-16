// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/access/Ownable2Step.sol";
import "@openzeppelin/contracts/token/ERC20/IERC20.sol";
import "@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721.sol";
import "@openzeppelin/contracts/utils/ReentrancyGuard.sol";

import "../interfaces/sigma/ISlisBNBProvider.sol";
import "../interfaces/IPoolManager.sol";
import "../interfaces/IPool.sol";
import "../interfaces/ISigmaClisBNBSYPool.sol";
import "../scy/ISuperComposableYield.sol";
import "../core/pool/PoolErrors.sol";
import "../price-oracle/interfaces/IPriceOracle.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract SigmaController is Ownable2Step, ReentrancyGuard, PoolErrors {
  using SafeERC20 for IERC20;

  /// @dev The value of minimum collateral.
  int256 internal constant MIN_COLLATERAL = 1e9;

  /// @dev The value of minimum debts.
  int256 internal constant MIN_DEBT = 1e9;

  /// @dev The precision used for various calculation.
  uint256 internal constant PRECISION = 1e18;

  /// @dev The precision used for fee ratio calculation.
  uint256 internal constant FEE_PRECISION = 1e9;

  /// @dev Address of the SLIS BNB token
  IERC20 public immutable slisBNB;
  /// @dev Address of the SigmaClisBNBSY token
  ISuperComposableYield public immutable sy;
  /// @dev Address of the slisBNBProvider
  ISlisBNBProvider public immutable slisBNBProvider;
  /// @dev Address of the FX Pool Manager
  IPoolManager public immutable fxPoolManager;
  /// @dev Address of the Lista LP delegate
  address public immutable listaLpDelegateTo;

  /// @notice Emitted when a deposit is made
  /// @param pool FX Pool address used
  /// @param user Address of depositor
  /// @param amount slisBNB deposited
  /// @param positionId Previous position ID (0 for new)
  /// @param newColl Collateral change in pool position
  /// @param newDebt Debt change in pool position
  /// @param posId Resulting position ID
  /// @param bnbUSDOut Amount of bnbUSD minted to user
  event Deposit(
    address indexed pool,
    address indexed user,
    uint256 amount,
    uint256 positionId,
    int256 newColl,
    int256 newDebt,
    uint256 posId,
    uint256 bnbUSDOut
  );

  /// @notice Emitted when a redemption is made
  /// @param pool FX Pool address used
  /// @param user Address of redeemer
  /// @param amount slisBNB redeemed
  /// @param positionId Position ID being modified
  /// @param newColl Collateral change in pool position
  /// @param newDebt Debt change in pool position
  /// @param collOut Actual slisBNB amount returned to user
  event Redeem(
    address indexed pool,
    address indexed user,
    uint256 amount,
    uint256 positionId,
    int256 newColl,
    int256 newDebt,
    uint256 collOut
  );

  /// @notice Initializes contract dependencies
  /// @param _slisBNB slisBNB token contract address
  /// @param _sy SigmaClisBNBSY contract address
  /// @param _slisBNBProvider slisBNB provider contract address
  /// @param _fxPoolManager FX Pool manager contract address
  /// @param _listaLpDelegateTo Delegation target address for LP governance
  constructor(
    IERC20 _slisBNB,
    ISuperComposableYield _sy,
    ISlisBNBProvider _slisBNBProvider,
    IPoolManager _fxPoolManager,
    address _listaLpDelegateTo
  ) Ownable(msg.sender) {
    // Set the addresses for the contracts
    // These should be set to the actual deployed addresses of the respective contracts
    slisBNB = _slisBNB;
    sy = _sy;
    slisBNBProvider = _slisBNBProvider;
    fxPoolManager = _fxPoolManager;
    listaLpDelegateTo = _listaLpDelegateTo;
  }

  /// @notice Deposit slisBNB to mint SY tokens and open/modify FX Pool position
  /// @dev Transfers slisBNB from user, mints SY, deposits to FX Pool, returns bnbUSD and position NFT
  /// @param _pool FX Pool address to interact with
  /// @param amount Amount of slisBNB to deposit (must equal newColl)
  /// @param positionId Existing position ID (0 to create new)
  /// @param newColl Collateral amount to add in FX Pool (must be positive and equal to 'amount')
  /// @param newDebt Debt amount to take in FX Pool (must be non-negative)
  function deposit(
    address _pool,
    uint256 amount,
    uint256 positionId,
    int256 newColl,
    int256 newDebt
  ) external nonReentrant {
    require(amount >= 0, "Amount must be greater than or equal to 0");
    require(amount == uint256(newColl), "New collateral must be equal to amount");
    require(newDebt >= 0, "New debt must be greater than or equal to 0");
    require(_pool != address(0), "Pool address cannot be zero");

    // transfer slisBNB to this contract
    IERC20(slisBNB).safeTransferFrom(msg.sender, address(this), amount);
    if (positionId != 0) {
      // transfer xBNB to this contract
      IERC721(_pool).transferFrom(msg.sender, address(this), positionId);
    }

    // mint SigmaClisBNBSY
    slisBNB.approve(address(sy), amount);
    sy.deposit(address(this), address(slisBNB), amount, 0);

    // deposit sy to fx pool
    IERC20 bnbUSD = IERC20(IPool(_pool).fxUSD());
    uint256 bnbUSDBalance = bnbUSD.balanceOf(address(this));
    sy.approve(address(fxPoolManager), uint256(newColl));
    uint256 posId = fxPoolManager.operate(_pool, positionId, newColl, newDebt);
    uint256 bnbUSDDelta = bnbUSD.balanceOf(address(this)) - bnbUSDBalance;

    if (positionId != 0) {
      require(posId == positionId, "PositionId mismatch");
    }

    // transfer bnbUSD to the user
    if (bnbUSDDelta > 0) {
      bnbUSD.safeTransfer(msg.sender, bnbUSDDelta);
    }

    // transfer xBNB to the user
    IERC721(_pool).transferFrom(address(this), msg.sender, posId);

    emit Deposit(_pool, msg.sender, amount, positionId, newColl, newDebt, posId, bnbUSDDelta);
  }

  /// @notice Redeem slisBNB by settling FX Pool position and burning SY tokens
  /// @dev Transfers position NFT from user, withdraws SY, burns for slisBNB, returns collateral
  /// @param _pool FX Pool address to interact with
  /// @param amount Amount of slisBNB expected to redeem (must equal newColl reduction)
  /// @param positionId Position ID to modify/close
  /// @param newColl Collateral amount to remove (negative value, absolute must equal 'amount')
  /// @param newDebt Debt amount to repay (non-positive value)
  function redeem(
    address _pool,
    uint256 amount,
    uint256 positionId,
    int256 newColl,
    int256 newDebt
  ) external nonReentrant {
    // check if the user has enough deposits
    require(amount >= 0, "Amount must be greater than or equal to 0");
    require(amount == uint256(-newColl), "New collateral absolute value must be equal to amount");
    require(newDebt <= 0, "New debt must be less than or equal to 0");
    require(_pool != address(0), "Pool address cannot be zero");

    if (newDebt < 0) {
      // transfer bnbUSD to this contract
      IERC20 bnbUSD = IERC20(IPool(_pool).fxUSD());
      bnbUSD.safeTransferFrom(msg.sender, address(this), uint256(-newDebt));
      bnbUSD.approve(address(fxPoolManager), uint256(-newDebt));
    }

    // transfer xBNB to this contract
    IERC721(_pool).transferFrom(msg.sender, address(this), positionId);

    // withdraw sy from fx pool
    uint256 syBalance = sy.balanceOf(address(this));
    fxPoolManager.operate(_pool, positionId, newColl, newDebt);
    uint256 syDelta = sy.balanceOf(address(this)) - syBalance;

    // transfer xBNB to the user
    IERC721(_pool).transferFrom(address(this), msg.sender, positionId);

    if (syDelta > 0) {
      // burn sy, redeem slisBNB
      sy.redeem(address(this), syDelta, address(slisBNB), 0, false);

      // transfer slisBNB to user and update deposits
      slisBNB.safeTransfer(msg.sender, syDelta);
    }

    emit Redeem(_pool, msg.sender, amount, positionId, newColl, newDebt, syDelta);
  }

  /// @notice Preview the debt ratio and protocol fees for a given position
  /// @dev Calculates the expected debt ratio and protocol fees based on new collateral and debt amounts
  /// @param _pool FX Pool address to interact with
  /// @param positionId Position ID to modify
  /// @param newColl New collateral amount (positive for deposit, negative for withdrawal)
  /// @param newDebt New debt amount (positive for borrow, negative for repay)
  /// @return debtRatio The expected debt ratio after the operation. Multiplied by 1e18.
  function previewDebtRatio(
    address _pool,
    uint256 positionId,
    int256 newColl,
    int256 newDebt
  ) external view returns (uint256 debtRatio, uint256 protocolFees) {
    require(_pool != address(0), "Pool address cannot be zero");
    if (newColl == 0 && newDebt == 0) revert ErrorNoSupplyAndNoBorrow();
    if (newColl != 0 && (newColl > -MIN_COLLATERAL && newColl < MIN_COLLATERAL)) {
      revert ErrorCollateralTooSmall();
    }
    if (newDebt != 0 && (newDebt > -MIN_DEBT && newDebt < MIN_DEBT)) {
      revert ErrorDebtTooSmall();
    }

    uint256 positionRawColls = 0;
    uint256 positionRawDebts = 0;
    address priceOracle = IPool(_pool).priceOracle();
    uint256 price = IPriceOracle(priceOracle).getExchangePrice();

    if (positionId != 0) {
      (positionRawColls, positionRawDebts) = IPool(_pool).getPosition(positionId);
    }

    // supply or withdraw
    if (newColl > 0) {
      protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl -= int256(protocolFees);
      positionRawColls += uint256(newColl);
    } else if (newColl < 0) {
      if (newColl == type(int256).min) {
        // this is max withdraw
        newColl = -int256(positionRawColls);
        positionRawColls = 0;
      } else {
        // this is partial withdraw, rounding up removing extra wei from collateral
        positionRawColls -= uint256(-newColl);
      }
      protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl += int256(protocolFees);
    }

    // borrow or repay
    if (newDebt > 0) {
      positionRawDebts += uint256(newDebt);
    } else if (newDebt < 0) {
      if (newDebt == type(int256).min) {
        // this is max repay
        newDebt = -int256(positionRawDebts);
      }
      positionRawDebts -= uint256(-newDebt);
    }

    // final debt ratio check
    {
      require(positionRawColls >= 0, "Collateral must not be negative");
      require(positionRawDebts >= 0, "Debt must not be negative");

      // check position debt ratio is between `minDebtRatio` and `maxDebtRatio`.
      (uint256 minDebtRatio, uint256 maxDebtRatio) = IPool(_pool).getDebtRatioRange();
      debtRatio = (positionRawDebts * PRECISION * PRECISION) / (positionRawColls * price);
      if (debtRatio > maxDebtRatio) revert ErrorDebtRatioTooLarge();
      if (debtRatio < minDebtRatio) revert ErrorDebtRatioTooSmall();
    }
  }

  /// @notice Preview the new debt range for a given position
  /// @dev Calculates the expected minimum and maximum debt amounts based on new collateral
  /// @param _pool FX Pool address to interact with
  /// @param positionId Position ID to modify
  /// @param newColl New collateral amount (positive for deposit, negative for withdrawal)
  /// @return minNewDebt The expected minimum new debt amount after the operation. Multiplied by 1e18.
  /// @return maxNewDebt The expected maximum new debt amount after the operation. Multiplied by 1e18.
  function previewNewDebtRange(
    address _pool,
    uint256 positionId,
    int256 newColl
  ) external view returns (int256 minNewDebt, int256 maxNewDebt) {
    require(_pool != address(0), "Pool address cannot be zero");

    uint256 positionRawColls = 0;
    uint256 positionRawDebts = 0;
    address priceOracle = IPool(_pool).priceOracle();
    uint256 price = IPriceOracle(priceOracle).getExchangePrice();

    if (positionId != 0) {
      (positionRawColls, positionRawDebts) = IPool(_pool).getPosition(positionId);
    }

    if (newColl > 0) {
      uint256 protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl -= int256(protocolFees);
      positionRawColls += uint256(newColl);
    } else if (newColl < 0) {
      if (newColl == type(int256).min) {
        // this is max withdraw
        newColl = -int256(positionRawColls);
      } else {
        // this is partial withdraw, rounding up removing extra wei from collateral
        if (positionRawColls < uint256(-newColl)) revert ErrorWithdrawExceedSupply();
      }
      unchecked {
        positionRawColls -= uint256(-newColl);
      }
      uint256 protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl += int256(protocolFees);
    }

    require(positionRawColls >= 0, "Collateral must not be negative");

    (uint256 minDebtRatio, uint256 maxDebtRatio) = IPool(_pool).getDebtRatioRange();
    minNewDebt = int256((minDebtRatio * positionRawColls * price) / (PRECISION * PRECISION)) - int256(positionRawDebts);
    maxNewDebt = int256((maxDebtRatio * positionRawColls * price) / (PRECISION * PRECISION)) - int256(positionRawDebts);
  }

  function previewNewDebtByNewCollAndDebtRatio(
    address _pool,
    uint256 positionId,
    int256 newColl,
    uint256 debtRatio
  ) external view returns (int256 newDebt) {
    require(_pool != address(0), "Pool address cannot be zero");
    require(debtRatio > 0, "Debt ratio must be greater than 0");

    uint256 positionRawColls = 0;
    uint256 positionRawDebts = 0;
    address priceOracle = IPool(_pool).priceOracle();
    uint256 price = IPriceOracle(priceOracle).getExchangePrice();

    if (positionId != 0) {
      (positionRawColls, positionRawDebts) = IPool(_pool).getPosition(positionId);
    }

    if (newColl > 0) {
      uint256 protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl -= int256(protocolFees);
      positionRawColls += uint256(newColl);
    } else if (newColl < 0) {
      if (newColl == type(int256).min) {
        // this is max withdraw
        newColl = -int256(positionRawColls);
      } else {
        // this is partial withdraw, rounding up removing extra wei from collateral
        if (positionRawColls < uint256(-newColl)) revert ErrorWithdrawExceedSupply();
      }
      unchecked {
        positionRawColls -= uint256(-newColl);
      }
      uint256 protocolFees = _deductProtocolFees(
        newColl,
        ISigmaClisBNBSYPool(_pool).getOpenFeeRatio(),
        ISigmaClisBNBSYPool(_pool).getCloseFeeRatio()
      );
      newColl += int256(protocolFees);
    }

    require(positionRawColls >= 0, "Collateral must not be negative");

    // check position debt ratio is between `minDebtRatio` and `maxDebtRatio`.
    (uint256 minDebtRatio, uint256 maxDebtRatio) = IPool(_pool).getDebtRatioRange();
    require(debtRatio >= minDebtRatio && debtRatio <= maxDebtRatio, "Debt ratio out of range");

    newDebt = int256((debtRatio * positionRawColls * price) / (PRECISION * PRECISION)) - int256(positionRawDebts);
  }

  /// @dev Internal function to compute the protocol fees.
  /// @param rawColl The amount of collateral tokens involved.
  /// @param openFeeRatio The protocol fee ratio for opening a position. Multiplied by 1e9.
  /// @param closeFeeRatio The protocol fee ratio for closing a position. Multiplied by 1e9.
  /// @return fees The expected protocol fees.
  function _deductProtocolFees(
    int256 rawColl,
    uint256 openFeeRatio,
    uint256 closeFeeRatio
  ) internal view returns (uint256) {
    if (rawColl > 0) {
      // open position or add collateral
      uint256 feeRatio = openFeeRatio;
      if (feeRatio > FEE_PRECISION) feeRatio = FEE_PRECISION;
      return (uint256(rawColl) * feeRatio) / FEE_PRECISION;
    } else {
      // close position or remove collateral
      return (uint256(-rawColl) * closeFeeRatio) / FEE_PRECISION;
    }
  }
}
