// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IERC20Minimal.sol";
import "../interfaces/IDepositWithBeneficiary.sol";

interface ITako {
  function deposit(
    address asset,
    uint256 amount,
    address onBehalfOf,
    uint16 referralCode
  ) external;
}

/// @notice A sample of 3rd-party dapp that interacts with meson
/// With `depositWithBeneficiary`, the meson contract will be able
/// to deposit cross-chain'ed stablecoins to the 3rd-party dapp contract
/// on behalf of the user. The user will receive the benefits corresponding
/// to this deposit.
contract FreeDirecToTako is IDepositWithBeneficiary {
  address constant _target = address(0x3A2Fd8a16030fFa8D66E47C3f1C0507c673C841e);
  address private _admin;
  uint16 private _referralCode = 0;

  constructor () {
    _admin = msg.sender;
  }

  function setReferralCode(uint16 code) external {
    require(_admin == msg.sender, "Not authorized");
    _referralCode = code;
  }

  function depositWithBeneficiary(
    address token,
    uint256 amount,
    address beneficiary,
    uint64
  ) payable external override returns (bool) {
    if (token == address(0)) {
      revert("ETH not supported");
    } else {
      IERC20Minimal(token).transferFrom(msg.sender, address(this), amount);
      IERC20Minimal(token).approve(_target, amount);
      ITako(_target).deposit(token, amount, beneficiary, _referralCode);
    }

    return true;
  }
}
