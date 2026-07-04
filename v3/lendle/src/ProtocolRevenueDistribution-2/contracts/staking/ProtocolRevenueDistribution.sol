// SPDX-License-Identifier: MIT

pragma solidity 0.7.6;
pragma experimental ABIEncoderV2;

import {OwnableUpgradable} from '../misc/OwnableUpgradable.sol';
import {IERC20} from '../dependencies/openzeppelin/contracts/IERC20.sol';
import {SafeERC20} from '../dependencies/openzeppelin/contracts/SafeERC20.sol';

import {ILendingPool} from '../interfaces/ILendingPool.sol';
import {IAToken} from '../interfaces/IAToken.sol';
import {IOdosRouter} from '../interfaces/IOdosRouter.sol';

contract ProtocolRevenueDistribution is OwnableUpgradable {
  using SafeERC20 for IERC20;

  uint256 public constant VERSION = 0x4;

  ILendingPool public lendingPool;
  address public treasury;
  address public router;
  address public distributor;

  bool public initializedAddresses;

  event Distributed();
  event InitAddresses(address lendingPool, address treasury, address router);
  event SetDistributor(address distributor);
  event Withdraw(address token, uint256 amount);
 
  /* ========== INITIALIZER ========== */
  function initialize(address owner) external initializer {
    _transferOwnership(owner);
  }

  function initAddresses(address _lendingPool, address _treasury, address _router) external {
    require(!initializedAddresses, 'Already initialized');

    lendingPool = ILendingPool(_lendingPool);
    treasury = _treasury;
    router = _router;

    initializedAddresses = true;

    emit InitAddresses(_lendingPool, _treasury, _router);
  }

  function setDistributor(address _distributor) external onlyOwner {
    distributor = _distributor;

    emit SetDistributor(_distributor);
  }

  function distribute(
    address[] calldata _aTokens,
    bytes[] calldata _swapPaths,
    uint256[] calldata _swapAmounts
  ) external {
    require(msg.sender == distributor, 'Unauthorized caller');
    uint256 _length = _aTokens.length;
    require(
      _length == _swapPaths.length && _length == _swapAmounts.length,
      'Length mismatch'
    );

    uint256 _balance;
    uint256 _swapAmount;
    address _underlyingAsset;

    for (uint256 i = 0; i < _length; i++) {
      _balance = IERC20(_aTokens[i]).balanceOf(address(this));
      _swapAmount = _swapAmounts[i];
      require(_balance > _swapAmount, 'Insufficient amount');

      _underlyingAsset = IAToken(_aTokens[i]).UNDERLYING_ASSET_ADDRESS();
      lendingPool.withdraw(_underlyingAsset, _balance, address(this));

      // Withdraw to the treasury
      uint256 withdrawAmount = _balance - _swapAmount;
      if (withdrawAmount > 0) {
        IERC20(_underlyingAsset).safeTransfer(treasury, withdrawAmount);
      }

      // Buyback LEND
      IERC20(_underlyingAsset).approve(router, _swapAmount);
      (bool success, ) = router.call{value: 0}(_swapPaths[i]);
      require(success, "Odos swapCompact failed");
    }

    emit Distributed();
  }

  function withdraw(address token, uint256 amount) external onlyOwner {
    IERC20(token).safeTransfer(owner(), amount);

    emit Withdraw(token, amount);
  }
}