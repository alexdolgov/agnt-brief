// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.17;

import "../../interfaces/ITokenAdapter.sol";

import "../../libraries/TokenUtils.sol";
import "../../libraries/Checker.sol";

/// @title  GmdV1RedemptionAdapter
/// @dev non-upgradable contracts to allow holders to redeem their GMD v1 tokens.
/// @author Savvy DeFi
contract GmdV1RedemptionAdapter is ITokenAdapter {
  string public constant override version = "1.0.0";

  /// @notice Only SavvyPositionManager can call functions.
  mapping(address => bool) private isAllowlisted;

  /// @notice The address of yieldToken.
  address public override token;

  address public override baseToken;

  address public gmdTokenBurnAddress;

  address private constant RECOVERY_MULTSIG =
    0x25594fc8b496e1Bf73dB3289f93C44aC77343BE6;

  /// @dev this number is what the deprecated GMD v1 vault showed
  /// as the price. We must preserve that number since Savvy's CDP
  /// does not properly handle giant drops in price.
  uint256 public lastRecordedPrice;

  modifier onlyRecoveryMultisig() {
    require(msg.sender == RECOVERY_MULTSIG, "only recovery multisig");
    _;
  }

  modifier onlyAllowlist() {
    require(isAllowlisted[msg.sender], "Only Allowlist");
    _;
  }

  constructor(
    address _token,
    address _baseToken,
    address _gmdTokenBurnAddress,
    uint256 _lastRecordedPrice,
    address[] memory _allowlistedAddresses
  ) {
    Checker.checkArgument(_token != address(0), "_token is 0 address");
    Checker.checkArgument(_baseToken != address(0), "_baseToken is 0 address");
    Checker.checkArgument(
      _gmdTokenBurnAddress != address(0),
      "_gmdTokenBurnAddress is 0 address"
    );
    Checker.checkArgument(_lastRecordedPrice > 0, "_lastRecordedPrice is 0");

    token = _token;
    baseToken = _baseToken;
    gmdTokenBurnAddress = _gmdTokenBurnAddress;
    lastRecordedPrice = _lastRecordedPrice;

    _addAllowlist(_allowlistedAddresses, true);
  }

  /// @inheritdoc ITokenAdapter
  function price() public view override returns (uint256) {
    return lastRecordedPrice;
  }

  /// @inheritdoc ITokenAdapter
  function addAllowlist(
    address[] calldata allowlistAddresses,
    bool status
  ) external override onlyRecoveryMultisig {
    _addAllowlist(allowlistAddresses, status);
  }

  function _addAllowlist(
    address[] memory allowlistAddresses,
    bool status
  ) internal {
    uint256 allowlistAddressesLength = allowlistAddresses.length;
    require(allowlistAddressesLength > 0, "invalid length");
    for (uint256 i = 0; i < allowlistAddressesLength; ++i) {
      isAllowlisted[allowlistAddresses[i]] = status;
    }
  }

  function emergencyWithdraw() external onlyRecoveryMultisig {
    TokenUtils.safeTransfer(
      token,
      msg.sender,
      TokenUtils.safeBalanceOf(token, address(this))
    );
    TokenUtils.safeTransfer(
      baseToken,
      msg.sender,
      TokenUtils.safeBalanceOf(baseToken, address(this))
    );
  }

  /// @inheritdoc ITokenAdapter
  function wrap(
    uint256 amount,
    address recipient
  ) external view override onlyAllowlist returns (uint256) {
    require(false, "GMD v1 is deprecated");
  }

  /// @inheritdoc ITokenAdapter
  function unwrap(
    uint256 amount,
    address recipient
  ) external override onlyAllowlist returns (uint256) {
    amount = TokenUtils.safeTransferFrom(
      token,
      msg.sender,
      address(this),
      amount
    );
    Checker.checkArgument(amount > 0, "zero unwrap amount");
    (uint256 amountWithdrawn, uint256 amountBurnt) = _withdraw(
      amount,
      recipient
    );
    Checker.checkState(amountBurnt == amount, "Amount burn mismath");
    return amountWithdrawn;
  }

  function _withdraw(
    uint256 amount,
    address recipient
  ) internal returns (uint256, uint256) {
    uint256 withdrawnAmount;
    uint256 beforeYieldBal = TokenUtils.safeBalanceOf(token, address(this));
    uint256 beforeBal = TokenUtils.safeBalanceOf(baseToken, address(this));

    // This matches GMD v1 redemption logic of 80 conversion.
    uint256 redemptionAmount = (amount * 80) / 100;
    TokenUtils.safeTransfer(baseToken, recipient, redemptionAmount);
    TokenUtils.safeTransfer(token, gmdTokenBurnAddress, amount);

    uint256 afterBal = TokenUtils.safeBalanceOf(baseToken, address(this));
    // substracting afterBal from beforeBal to get the amount of baseToken withdrawn
    // since amount is transferred.
    withdrawnAmount = beforeBal - afterBal;
    uint256 afterYieldBal = TokenUtils.safeBalanceOf(token, address(this));
    require(withdrawnAmount > 0, "no withdrawn baseToken");
    return (withdrawnAmount, beforeYieldBal - afterYieldBal);
  }

  receive() external payable {}
}
