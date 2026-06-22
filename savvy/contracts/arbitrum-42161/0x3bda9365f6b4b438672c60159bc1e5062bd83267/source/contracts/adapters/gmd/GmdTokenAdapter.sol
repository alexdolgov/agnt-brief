// SPDX-License-Identifier: GPL-3.0-or-later
pragma solidity 0.8.17;

import "@openzeppelin/contracts-upgradeable/proxy/utils/Initializable.sol";
import "@openzeppelin/contracts-upgradeable/access/Ownable2StepUpgradeable.sol";

import "../../interfaces/ITokenAdapter.sol";
import "../../interfaces/external/gmd/IGmdVault.sol";
import "../../interfaces/external/gmd/ITokenSwap.sol";

import "../../libraries/TokenUtils.sol";
import "../../libraries/Checker.sol";

/// @title  GmdTokenAdapter
/// @author Savvy DeFi
contract GmdTokenAdapter is
  ITokenAdapter,
  Initializable,
  Ownable2StepUpgradeable
{
  string public constant override version = "1.0.1";

  /// @notice Only SavvyPositionManager can call functions.
  mapping(address => bool) private isAllowlisted;

  /// @notice The address of yieldToken.
  address public override token;

  address public override baseToken;

  address public vaultAddress;

  /// @dev deprecated
  address public WETH;

  /// @notice The GMD pool id for baseToken.
  uint256 public pid;

  uint8 public tokenDecimals;
  uint8 public baseTokenDecimals;

  address public v1TokenSwap;

  modifier onlyAllowlist() {
    require(isAllowlisted[msg.sender], "Only Allowlist");
    _;
  }

  constructor() {
    _disableInitializers();
  }

  function initialize(address _vaultAddress, uint256 _pid) public initializer {
    Checker.checkArgument(
      _vaultAddress != address(0),
      "token cannot be zero address"
    );
    (baseToken, token, , , , , , , , , ) = IGmdVault(_vaultAddress).poolInfo(
      _pid
    );
    vaultAddress = _vaultAddress;
    pid = _pid;
    tokenDecimals = TokenUtils.expectDecimals(token);
    baseTokenDecimals = TokenUtils.expectDecimals(baseToken);

    TokenUtils.safeApprove(baseToken, vaultAddress, type(uint256).max);
    TokenUtils.safeApprove(token, vaultAddress, type(uint256).max);

    __Ownable2Step_init();
  }

  function setV1TokenSwap(address _v1TokenSwap) external onlyOwner {
    Checker.checkArgument(
      _v1TokenSwap != address(0),
      "gmd v1 token swap cannot be zero address"
    );

    v1TokenSwap = _v1TokenSwap;
  }

  /// @inheritdoc ITokenAdapter
  function price() external view override returns (uint256) {
    uint256 gdPrice = IGmdVault(vaultAddress).GDpriceToStakedtoken(pid);
    if (baseTokenDecimals < 18) {
      gdPrice = gdPrice / 10 ** (18 - baseTokenDecimals);
    }
    return gdPrice;
  }

  /// @inheritdoc ITokenAdapter
  function addAllowlist(
    address[] calldata allowlistAddresses,
    bool status
  ) external override onlyOwner {
    uint256 allowlistAddressesLength = allowlistAddresses.length;
    require(allowlistAddressesLength > 0, "invalid length");
    for (uint256 i = 0; i < allowlistAddressesLength; ++i) {
      isAllowlisted[allowlistAddresses[i]] = status;
    }
  }

  /// @inheritdoc ITokenAdapter
  function wrap(
    uint256 amount,
    address recipient
  ) external override onlyAllowlist returns (uint256) {
    require(false, "gmd v1 is deprecated");
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
    return amountWithdrawn;
  }

  function _withdraw(
    uint256 amount,
    address recipient
  ) internal returns (uint256, uint256) {
    _checkPoolId();

    uint256 balanceOfBaseTokenBefore = TokenUtils.safeBalanceOf(
      baseToken,
      address(this)
    );
    uint256 balanceOfGmdToken = TokenUtils.safeBalanceOf(token, address(this));
    TokenUtils.safeApprove(token, v1TokenSwap, balanceOfGmdToken);
    ITokenSwap(v1TokenSwap).swapTokens();
    uint256 balanceOfBaseTokenAfter = TokenUtils.safeBalanceOf(
      baseToken,
      address(this)
    );
    TokenUtils.safeTransfer(
      baseToken,
      recipient,
      balanceOfBaseTokenAfter - balanceOfBaseTokenBefore
    );
  }

  function _checkPoolId() internal view {
    (address curBaseToken, address curToken, , , , , , , , , ) = IGmdVault(
      vaultAddress
    ).poolInfo(pid);
    require(baseToken == curBaseToken, "baseToken mismatch");
    require(token == curToken, "yieldToken mismatch");
  }

  receive() external payable {}

  uint256[100] private __gap;
}
