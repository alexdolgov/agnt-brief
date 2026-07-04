// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity ^0.8.16;

// ====================================================================
// |     ______                   _______                             |
// |    / _____________ __  __   / ____(_____  ____ _____  ________   |
// |   / /_  / ___/ __ `| |/_/  / /_  / / __ \/ __ `/ __ \/ ___/ _ \  |
// |  / __/ / /  / /_/ _>  <   / __/ / / / / / /_/ / / / / /__/  __/  |
// | /_/   /_/   \__,_/_/|_|  /_/   /_/_/ /_/\__,_/_/ /_/\___/\___/   |
// |                                                                  |
// ====================================================================
// ======================= FraxlendAMOV3Fraxtal =======================
// ====================================================================
// Frax Finance: https://github.com/FraxFinance

import "src/contracts/FraxLendAMOV3.sol";

contract FraxlendAMOV3Frax is FraxlendAMOV3 {
  int256 public fraxDeposited;
  uint256 public fraxBurned;

  constructor(
    address amoMinterAddress_,
    address operatorAddress_,
    address fraxlendPairDeployerAddress_,
    address fraxAssetAddress_
  )
    FraxlendAMOV3(
      amoMinterAddress_,
      operatorAddress_,
      fraxlendPairDeployerAddress_,
      fraxAssetAddress_
    )
  {}

  /// ==================== Core ===========================

  /// @notice Deposits Frax to the AMO Contract
  /// @param _fraxAmount Amount of FRAX to deposit
  /// @dev Frax must be approved prior to call
  function depositFRAX(uint256 _fraxAmount) public onlyOwner {
    fraxDeposited += int256(_fraxAmount);
    FRAX.transferFrom(msg.sender, address(this), _fraxAmount);
    emit FraxDepositedToAMO(_fraxAmount);
  }

  /// @notice Withdraws Frax from the AMO Contract
  /// @param _fraxAmount Amount of FRAX to withdraw
  function withdrawFRAX(uint256 _fraxAmount) public onlyOwner {
    fraxDeposited -= int256(_fraxAmount);
    FRAX.transfer(msg.sender, _fraxAmount);
    emit FraxWithdrawnFromAMO(_fraxAmount);
  }

  /// ==================== Overrides ======================

  function name() public pure override returns (string memory _name) {
    _name = "FraxlendAMOV3-Frax";
  }

  /// @notice version of contract
  /// @return _major Fraxlend AMO major version
  /// @return _minor Fraxlend AMO minor version
  /// @return _patch Fraxlend AMO patch version
  function version()
    public
    pure
    override
    returns (uint256 _major, uint256 _minor, uint256 _patch)
  {
    _major = 3;
    _minor = 5;
    _patch = 0;
  }

  /// @notice Burn unneeded or excess FRAX. Burned directly on the contract
  /// @param _fraxAmount Amount of FRAX to burn
  function burnFRAX(uint256 _fraxAmount) public override onlyOwner {
    fraxBurned += _fraxAmount;
    FRAX.burn(_fraxAmount);
    emit FraxBurnedFromAMO(_fraxAmount);
  }

  /// @notice Backwards compatibility
  /// @return FRAX minted balance of the FraxlendAMO
  function mintedBalance() public view override returns (int256) {
    return fraxDeposited - int256(fraxBurned);
  }

  /// @notice total FRAX balance
  /// @return fraxValE18 FRAX value
  /// @return collatValE18 FRAX collateral value
  function dollarBalances()
    public
    view
    override
    returns (uint256 fraxValE18, uint256 collatValE18)
  {
    fraxValE18 = showAllocations()[3];
    collatValE18 = 0;
  }

  /// ==================== Events =========================
  event FraxDepositedToAMO(uint256 _fraxAmount);
  event FraxBurnedFromAMO(uint256 _fraxAmount);
  event FraxWithdrawnFromAMO(uint256 _fraxAmount);
}
