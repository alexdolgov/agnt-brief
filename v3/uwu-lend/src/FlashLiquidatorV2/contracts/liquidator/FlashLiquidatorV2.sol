// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import '@openzeppelin/contracts/token/ERC20/IERC20.sol';
import '@openzeppelin/contracts/utils/math/SafeMath.sol';
import '@openzeppelin/contracts/token/ERC20/utils/SafeERC20.sol';
import '@openzeppelin/contracts/access/Ownable.sol';
import './interfaces/ILendingPool.sol';
import './interfaces/IUniswapV2Router02.sol';
import './FlashLoanReceiverBase.sol';

import './interfaces/ISwapRouter.sol';
import './interfaces/ICurvePool.sol';

import 'hardhat/console.sol';

// Flash Liquidation
contract FlashLiquidatorV2 is FlashLoanReceiverBase, Ownable {
  using SafeERC20 for IERC20;
  using SafeMath for uint256;

  struct LiquidationParams {
    address collateralAsset;
    address debtAsset;
    address user;
    address curvePool;
    uint256 debtToCover;
    Mode mode;
    bytes swapPath;
    int128[2] curvePath;
    address sender;
  }

  enum Mode {
    Uni,
    Crv,
    UniToCrv,
    CrvToUni
  }

  error CallerMustBeLendingPool(address caller);
  error InconsistentParams();
  error ImpossibleRepayFlashLoan(
    address collateralAsset,
    address debtAsset,
    uint256 collateralBalance,
    uint256 debtBalance,
    uint256 flashLoanDebt
  );

  // IUniswapV2Router02 public immutable SWAP_ROUTER;
  ISwapRouter public constant SWAP_ROUTER = ISwapRouter(0xE592427A0AEce92De3Edee1F18E0157C05861564);
  address public constant WETH_ADDRESS = 0xC02aaA39b223FE8D0A0e5C4F27eAD9083C756Cc2; // Wrapped Ether (WETH) address on mainnet

  // constructor(ILendingPoolAddressesProvider _addressProvider, IUniswapV2Router02 _swapRouter)
  constructor(
    ILendingPoolAddressesProvider _addressProvider
  ) FlashLoanReceiverBase(_addressProvider) {}

  function requestFlashLoan(
    address collateralAsset,
    address debtAsset,
    address user,
    address curvePool,
    uint256 debtToCover,
    Mode mode,
    bytes calldata swapPath,
    int128[2] calldata curvePath
  ) external {
    bytes memory params = abi.encode(
      collateralAsset,
      debtAsset,
      user,
      curvePool,
      debtToCover,
      mode,
      swapPath,
      curvePath,
      msg.sender
    );

    address[] memory assets = new address[](1);
    assets[0] = debtAsset;

    uint256[] memory amounts = new uint256[](1);
    amounts[0] = debtToCover;

    uint256[] memory modes = new uint256[](1);
    modes[0] = 0;

    LENDING_POOL.flashLoan(address(this), assets, amounts, modes, address(this), params, 0);
  }

  function executeOperation(
    address[] calldata assets,
    uint256[] calldata amounts,
    uint256[] calldata premiums,
    address,
    bytes calldata params
  ) external onlyLendingPool returns (bool) {
    LiquidationParams memory decodedParams = _decodeParams(params);
    if (assets.length != 1 && assets[0] == decodedParams.debtAsset) {
      revert InconsistentParams();
    }
    if (amounts.length != 1) {
      revert InconsistentParams();
    }
    if (premiums.length != 1) {
      revert InconsistentParams();
    }

    _liquidateAndSwap(decodedParams, amounts[0], premiums[0]);

    return true;
  }

  function _liquidateAndSwap(
    LiquidationParams memory params,
    uint256 flashBorrowedAmount,
    uint256 premium
  ) internal {
    uint256 flashLoanDebt = flashBorrowedAmount.add(premium);

    // Approve the LendingPool contract allowance to *pull* the owed debt
    IERC20(params.debtAsset).safeApprove(address(LENDING_POOL), 0);
    IERC20(params.debtAsset).safeApprove(address(LENDING_POOL), params.debtToCover);

    // Liquidate the user position and release the underlying collateral
    LENDING_POOL.liquidationCall(
      params.collateralAsset,
      params.debtAsset,
      params.user,
      params.debtToCover,
      false
    );

    if (params.collateralAsset != params.debtAsset) {
      if (params.mode == Mode.Uni) {
        _swapUniswap(params.collateralAsset, flashLoanDebt, params.swapPath);
      } else if (params.mode == Mode.UniToCrv) {
        _swapUniswap(params.collateralAsset, 0, params.swapPath);
      }
      if (params.mode != Mode.Uni) {
        address tokenIn = ICurvePool(params.curvePool).coins(uint256(int256(params.curvePath[0])));
        if (params.mode == Mode.Crv) {
          _swapCurve(
            params.curvePool,
            tokenIn,
            params.curvePath[0],
            params.curvePath[1],
            flashLoanDebt
          );
        } else if (params.mode == Mode.UniToCrv) {
          _swapCurve(
            params.curvePool,
            tokenIn,
            params.curvePath[0],
            params.curvePath[1],
            flashLoanDebt
          );
        } else if (params.mode == Mode.CrvToUni) {
          _swapCurve(params.curvePool, tokenIn, params.curvePath[0], params.curvePath[1], 0);
          _swapUniswap(
            ICurvePool(params.curvePool).coins(uint256(int256(params.curvePath[1]))),
            flashLoanDebt,
            params.swapPath
          );
        }
      }
    }

    // Allow repay of flash loan
    IERC20(params.debtAsset).safeApprove(address(LENDING_POOL), 0);
    IERC20(params.debtAsset).safeApprove(address(LENDING_POOL), flashLoanDebt);

    uint256 debtBalance = IERC20(params.debtAsset).balanceOf(address(this));

    if (debtBalance < flashLoanDebt) {
      revert ImpossibleRepayFlashLoan(
        params.collateralAsset,
        params.debtAsset,
        IERC20(params.collateralAsset).balanceOf(address(this)),
        debtBalance,
        flashLoanDebt
      );
    }

    uint256 remainingDebt = debtBalance.sub(flashLoanDebt);

    // Transfer remaining tokens to initiator
    if (remainingDebt > 0) {
      IERC20(params.debtAsset).safeTransfer(params.sender, remainingDebt);
    }
  }

  function _swapUniswap(address tokenA, uint256 minAmountOut, bytes memory swapPath) internal {
    uint256 tokenAAmountToSwap = IERC20(tokenA).balanceOf(address(this));
    IERC20(tokenA).safeApprove(address(SWAP_ROUTER), 0);
    IERC20(tokenA).safeApprove(address(SWAP_ROUTER), tokenAAmountToSwap);
    SWAP_ROUTER.exactInput(
      ISwapRouter.ExactInputParams({
        path: swapPath,
        recipient: address(this),
        deadline: block.timestamp,
        amountIn: tokenAAmountToSwap,
        amountOutMinimum: minAmountOut
      })
    );
  }

  function _swapCurve(
    address _pool,
    address _tokenIn,
    int128 _i,
    int128 _j,
    uint256 _amountOutMin
  ) internal {
    uint256 _amountIn = IERC20(_tokenIn).balanceOf(address(this));
    IERC20(_tokenIn).safeApprove(_pool, 0);
    IERC20(_tokenIn).safeApprove(_pool, _amountIn);
    ICurvePool(_pool).exchange(_i, _j, _amountIn, _amountOutMin, address(this));
  }

  /**
   * @dev Decodes the information encoded in the flash loan params
   * @param params The encoded params
   *   address collateralAsset The collateral asset to claim
   *   address debtAsset The asset that must be covered and will be exchanged to pay the flash loan premium
   *   address user The user address with a Health Factor below 1
   *   uint256 debtToCover The amount of debt to cover
   * @return LiquidationParams struct containing decoded params
   */
  function _decodeParams(bytes memory params) internal pure returns (LiquidationParams memory) {
    (
      address collateralAsset,
      address debtAsset,
      address user,
      address curvePool,
      uint256 debtToCover,
      Mode mode,
      bytes memory swapPath,
      int128[2] memory curvePath,
      address sender
    ) = abi.decode(
        params,
        (address, address, address, address, uint256, Mode, bytes, int128[2], address)
      );
    return
      LiquidationParams(
        collateralAsset,
        debtAsset,
        user,
        curvePool,
        debtToCover,
        mode,
        swapPath,
        curvePath,
        sender
      );
  }

  fallback() external payable {}
  receive() external payable {}

  modifier onlyLendingPool() {
    if (msg.sender != address(LENDING_POOL)) {
      revert CallerMustBeLendingPool(msg.sender);
    }
    _;
  }
}
