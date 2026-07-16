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
import "../scy/ISuperComposableYield.sol";

// Uncomment this line to use console.log
// import "hardhat/console.sol";

contract SigmaController is Ownable2Step, ReentrancyGuard {
  using SafeERC20 for IERC20;

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
}
