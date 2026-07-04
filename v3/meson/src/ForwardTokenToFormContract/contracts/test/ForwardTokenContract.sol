// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "../interfaces/IERC20Minimal.sol";
import "../interfaces/IDepositWithBeneficiary.sol";

interface IFormStakingPool {
  function depositFor(address _token, address _for, uint256 _amount) external;
  function depositETHFor(address _for) payable external;
}

/// @notice A sample of 3rd-party dapp that interacts with meson
/// With `depositWithBeneficiary`, the meson contract will be able
/// to deposit cross-chain'ed stablecoins to the 3rd-party dapp contract
/// on behalf of the user. The user will receive the benefits corresponding
/// to this deposit.
contract ForwardTokenToFormContract is IDepositWithBeneficiary {
  address constant _formStakingPool = address(0xFa70Af4AF0Cc7cC4d767Ac6808C7E56375844D71);

  function depositWithBeneficiary(
    address token,
    uint256 amount,
    address beneficiary,
    uint64 data
  ) payable external override returns (bool) {
    if (token == address(0)) {
      IFormStakingPool(_formStakingPool).depositETHFor{value: amount}(beneficiary);
    } else {
      IERC20Minimal(token).transferFrom(msg.sender, address(this), amount);
      IERC20Minimal(token).approve(_formStakingPool, amount);
      IFormStakingPool(_formStakingPool).depositFor(token, beneficiary, amount);
    }

    return true;
  }
}
