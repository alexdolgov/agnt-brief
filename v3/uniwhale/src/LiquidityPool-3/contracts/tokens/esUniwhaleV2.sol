// SPDX-License-Identifier: BUSL-1.1
pragma solidity ^0.8.9;

import "./UniwhaleToken.sol";
import "../FeeVault.sol";
import "../LiquidityPool.sol";

/// @custom:security-contact security@uniwhale.co
contract esUniwhaleV2 is UniwhaleToken {
  using FixedPoint for uint256;
  using ERC20Fixed for ERC20Upgradeable;

  address public feeVault;
  bool burnPaused;

  event PauseBurnEvent(bool burnPaused);

  /// @custom:oz-upgrades-unsafe-allow constructor
  constructor() {
    _disableInitializers();
  }

  function initialize(
    address owner,
    string memory name,
    string memory symbol,
    bool _transferrable,
    uint256 _cap,
    address _feeVault
  ) public initializer {
    super.initialize(owner, name, symbol, _transferrable, _cap);
    feeVault = _feeVault;
    burnPaused = true;
  }

  modifier whenBurnNotPaused() {
    _require(!burnPaused, Errors.TRADING_PAUSED);
    _;
  }

  // governance functions

  function pauseBurn() external onlyOwner {
    burnPaused = true;
    emit PauseBurnEvent(burnPaused);
  }

  function unpauseBurn() external onlyOwner {
    burnPaused = false;
    emit PauseBurnEvent(burnPaused);
  }

  // external functions

  function burn(
    uint256 amount
  ) public override whenBurnNotPaused whenNotPaused notContract nonReentrant {
    _onBurn(_msgSender(), amount);
  }

  function burnFrom(
    address user,
    uint256 amount
  ) public override whenBurnNotPaused whenNotPaused notContract nonReentrant {
    _spendAllowance(user, _msgSender(), amount);
    _onBurn(user, amount);
  }

  // internal functions

  function _onBurn(address user, uint256 amount) internal {
    uint256 totalSupply = ERC20Upgradeable(this).totalSupplyFixed();
    _require(amount > 0 && amount <= totalSupply, Errors.INVALID_BURN_AMOUNT);
    FeeVault(feeVault).redeem(
      user,
      LiquidityPool(FeeVault(feeVault).liquidityPool())
        .getStaked(feeVault)
        .mulDown(amount)
        .divDown(totalSupply)
    );
    _burn(user, amount);
  }
}
